using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DA_CN.ADMIN.quantrisp
{
    public partial class suasp : System.Web.UI.Page
    {
        Product pr = new Product();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.QueryString["maSP"] == "" || Request.QueryString["maSP"] == null)
                {
                    Response.Redirect("./Default.aspx");
                }

                string maSP = (Request.QueryString["maSP"]);
                var sanPham = pr.hienThiSanPhamDeSua("maSP");
                foreach (var value in sanPham)
                {
                    TextBox2.Text = value.TenSP.ToString();
                    hienThiloaihang(value.MaLH.ToString());
                    hienThimau(value.MaMau.ToString());
                    hienThiHinhAnhSauKhiUp.ImageUrl = "ADMIN/hinhanh/" + value.HinhAnh.ToString();
                    Txt_tenanh.Text = value.HinhAnh.ToString();
                    txt_moTa.Text = value.MoTa.ToString();
                    TextBox4.Text = value.DonGia.ToString();
                }
            }
        }
         void hienThiloaihang(string selectMaLoai)
          {
               var loaiSP = pr.hienThilh();
               foreach (var value in loaiSP)
              {
                   DropDownList1.Items.Add(new ListItem(value.MaLH + " - " + value.TenLH, value.MaLH));
                      if (value.MaLH == selectMaLoai)
                            {
                                DropDownList1.SelectedValue = value.MaLH;
                            }
                        }
                    }

           void hienThimau(string selectMamau)
                    {
                        var hangSP = pr.hienThimau();
                        foreach (var value in hangSP)
                        {
                            DropDownList2.Items.Add(new ListItem(value.MaMau + " - " + value.TenMau, value.MaMau));
                            if (value.MaMau == selectMamau)
                            {
                                DropDownList2.SelectedValue = value.MaMau;
                            }
                        }
       }
                    bool CheckFileType(string fileName)
                    {
                        string ext = Path.GetExtension(fileName);
                        switch (ext.ToLower())
                        {
                            case ".png":
                                return true;
                            case ".jpg":
                                return true;
                            default:
                                return false;
                        }
                    }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string maSP = (Request.QueryString["maSP"]);
            string tenSP = TextBox2.Text.Trim();
            string maLoai = DropDownList1.SelectedValue.ToString();
            string maHang = DropDownList2.SelectedValue.ToString();
            float gia = long.Parse(TextBox4.Text.Trim());
            string moTa = txt_moTa.Text.Trim();
            string fileName = hienThiHinhAnhSauKhiUp.ImageUrl.Split("/".ToCharArray())[5];
            string filePath = "";

            if (ful_hinhAnh.HasFile)
            {
                if (CheckFileType(ful_hinhAnh.FileName))
                {
                    fileName = DateTime.Now.ToString("ddMMyyyy_hhmmss_tt_") + ful_hinhAnh.FileName;
                    filePath = MapPath("ADMIN/hinhanh/" + fileName);
                    ful_hinhAnh.SaveAs(filePath);
                }
                else
                {
                    Session["error"] = "Vui lòng chọn tập tin hình ảnh có định dạng png hoặc jpg";
                }
            }

            if (pr.suasp(maSP, tenSP, maLoai,maHang, fileName, moTa, gia))
            {
                Session["success"] = "Cập nhật sản phẩm thành công";
                Response.Redirect("../quan-ly-sp/");
            }
            else
            {
                Session["error"] = "Tên sản phẩm đã tồn tại";
                TextBox2.Focus();
            }
        }
    }
    }
          
