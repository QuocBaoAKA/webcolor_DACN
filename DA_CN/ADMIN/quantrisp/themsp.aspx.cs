using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DA_CN.ADMIN.quantrisp
{
    public partial class themsp : System.Web.UI.Page
    {
        xulyGH xl = new xulyGH();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string masp = TextBox1.Text.Trim();
            string tenSP = TextBox2.Text.Trim();
            string maLoai = DropDownList1.SelectedValue.ToString();
            string mamau = DropDownList2.SelectedValue.ToString();
            string moTa = txt_moTa.Text.Trim();
            long gia = long.Parse(TextBox4.Text.Trim());
            if (CheckFileType(ful_hinhAnh.FileName))
            {
                string fileName = DateTime.Now.ToString("ddMMyyyy_hhmmss_tt_") + ful_hinhAnh.FileName;
                string filePath = MapPath("ADMIN/hinhanh/" + fileName);
                ful_hinhAnh.SaveAs(filePath);

                if (xl.themsp(masp, tenSP, maLoai,  mamau, fileName, moTa, gia))
                {
                    Session["success"] = "Thêm sản phẩm thành công";
                    Response.Redirect("ADMIN/quantrisp/");
                }
                else
                {
                    Session["error"] = "Tên sản phẩm đã tồn tại";
                    TextBox2.Focus();
                }
            }
            else
            {
                Session["error"] = "Vui lòng chọn tập tin hình ảnh có định dạng png hoặc jpg";
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
    }
}