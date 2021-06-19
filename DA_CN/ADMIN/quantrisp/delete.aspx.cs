using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DA_CN.ADMIN.quantrisp
{
    public partial class delete : System.Web.UI.Page
    {
        Product pr = new Product();
        xulyGH xl = new xulyGH();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //if (Session["taiKhoan"] == null)
                //{
                //    Response.Redirect("../Default.aspx");
                //}
                if (Request.QueryString["maSP"] == "" || Request.QueryString["maSP"] == null)
                {
                    Response.Redirect("../quantrisp/default.aspx");
                }

                string masp = (Request.QueryString["maSP"]);

                if (pr.xoaSanPham(masp))
                {
                    Session["success"] = "Xóa sản phẩm thành công";
                    Response.Redirect("../quantrisp/");
                }
                else
                {
                    Session["error"] = "Không thể xóa";
                    Response.Redirect("../quantrisp/");
                }
            }
        }
    }
}