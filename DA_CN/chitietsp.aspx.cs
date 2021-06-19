using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DA_CN
{
    public partial class chitietsp : System.Web.UI.Page
    {
        Product pr = new Product();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                if (Request.QueryString["MaSP"] == "" || Request.QueryString["MaSP"] == null)
                {
                    Response.Redirect("../default.aspx");
                }

                string id = (Request.QueryString["MaSP"].ToString());

                Repeater1.DataSource = pr.hienThiChiTietSP(id);
                Repeater1.DataBind();
            }
        }
        protected void lbtn_muaHang_Click(object sender, EventArgs e)
        {
            if (Session["taiKhoan"] != null)
            {
                if (Session["slSPtrongGioHang"] == null)
                {
                    Session["slSPtrongGioHang"] = 1;
                }
                else
                {
                    Session["slSPtrongGioHang"] = Int32.Parse(Session["slSPtrongGioHang"].ToString()) + 1;
                }
            }
        }

        protected void rpt_hienThiSanPham_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (Session["taiKhoan"] != null)
            {
                DataTable gioHang = new DataTable();
                if (e.CommandName == "muaHang")
                {
                    if (Session["gioHang"] == null)
                    {
                        gioHang.Columns.Add("MaSP");
                        gioHang.Columns.Add("soLuong");
                    }
                    else
                    {
                        gioHang = Session["gioHang"] as DataTable;
                    }

                    bool coTrongGioHang = false;
                    foreach (DataRow r in gioHang.Rows)
                    {
                        if (r["MaSP"].ToString() == e.CommandArgument.ToString())
                        {
                            r["soLuong"] = Int32.Parse(r["SoLuong"].ToString()) + 1;
                            coTrongGioHang = true;
                            break;
                        }
                    }

                    if (!coTrongGioHang)
                    {
                        DataRow r = gioHang.NewRow();
                        r["MaSP"] = e.CommandArgument.ToString();
                        r["soLuong"] = 1;
                        gioHang.Rows.Add(r);
                    }

                    Session["gioHang"] = gioHang;
                }
            }
        }

        
    }
}