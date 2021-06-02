using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DA_CN
{
    public partial class loginad : System.Web.UI.Page
    {
        ketnoi kn = new ketnoi();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string passmahoa = TextBox2.Text;//kn.mahoa(txtpass.Text);
            SqlDataAdapter da = new SqlDataAdapter("select * from tbl_NhanVien where Username='" + TextBox1.Text + "' and Password='" + passmahoa + "'", kn.con);
            DataTable tb = new DataTable();
            da.Fill(tb);
            if (tb.Rows.Count > 0)
            {
                Session["Username"] = tb.Rows[0]["HoTen"];
                /*Session["name"] = txt1.Text;*/
                Session["allow"] = true;
                Session["MaQuyen"] = tb.Rows[0]["MaQuyen"].ToString();
                if (Session["MaQuyen"].ToString() == "0")
                {
                    Response.Write("<script>alert('Đăng nhập thành công'); window.location ='defaultad.aspx';</script>");
                }
                else
                {
                    Response.Write("<script>alert('Đăng nhập thất bại'); window.location ='default.aspx';</script>");
                }
            }
            else Response.Write("<script>alert('Username/Password chưa đúng')</script>");
        }

    }
}