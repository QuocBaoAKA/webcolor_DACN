using System;
using System.Collections.Generic;
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
    }
}