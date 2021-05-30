using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DA_CN
{
    public partial class logout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["Username"] = null;
            Session["allow"] = null;
            Response.Write("<script>alert('Đăng xuất thành công'); window.location = 'default.aspx';</script>");
        }
    }
}