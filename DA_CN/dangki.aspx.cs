using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlTypes;
using System.IO;
namespace DA_CN
{
    public partial class dangki : System.Web.UI.Page
    {

        ketnoi kn = new ketnoi();
        dbQLDADataContext db = new dbQLDADataContext();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string pass = kn.encode(TextBox4.Text.Trim());
            string re_pass = kn.encode(txt_nhaplai.Text.Trim());
            if (re_pass != pass)
            {
                Response.Write("<script>alert('Nhập lại mật khẩu chưa đúng!')</script>");
            }
            else if (TextBox3.Text == "" || TextBox4.Text == "" || TextBox6.Text == "" || TextBox5.Text == "")
            {
                Response.Write("<script>alert('Vui lòng nhập đầy đủ thông tin')</script>");
            }
            else if (test_user(TextBox3.Text.Trim()) == false)
            {
                SqlCommand cmd = new SqlCommand("insert into tbl_KhachHang(Username, Password, HoTen, DiaChi, Email, SDT) values(N'" + TextBox3.Text + "',N'" + TextBox4.Text + "', N'" + TextBox5.Text + "', N'" + TextBox6.Text + "', N'" + TextBox7.Text + "', N'" + TextBox8.Text + "')", kn.con);
                kn.con.Open();
                cmd.ExecuteNonQuery();
                kn.con.Close();
                Response.Write("<script>alert('Đănh ký thành công'); window.location ='login.aspx';</script>");
            }
            else
            {
                Response.Write("<script>alert('Tên đăng nhập đã tồn tại!')</script>");
            }
        }
        public bool test_user(string tdn)
        {
            int query = db.tbl_KhachHangs.Where(a => a.Username == tdn).Count();
            if (query > 0)
            {
                return true;
            }
            else
            {
                return false;
            }
        }

    }
}