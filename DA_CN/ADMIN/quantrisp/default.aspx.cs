using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DA_CN.ADMIN
{
    public partial class defaultad : System.Web.UI.Page
    {
        xulyGH xl = new xulyGH();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //if (Session["NhanVien"] == null)
                //{
                //    Response.Redirect("~/loginad.aspx");
                //}

                Repeater1.DataSource = xl.hienthisp();
                Repeater1.DataBind();
            }
        }
    }
}