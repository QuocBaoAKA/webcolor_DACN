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
    public partial class loaihang : System.Web.UI.Page
    {
        xuly xl = new xuly();
        ketnoi kn = new ketnoi();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                hienthi();
            }
        }
        public void hienthi()
        {
            GridView1.DataSource = xl.hienthilh();
            GridView1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            bool kt;
            kt = xl.themlh(TextBox1.Text, TextBox2.Text);
            try
            {
                Response.Write("<script>alert('Thêm loại hàng thành công')</script>");
                GridView1.DataSource = xl.hienthilh();
                GridView1.DataBind();
            }
            catch
            {
                Response.Write("<script>alert('Thêm loại hàng thất bại')</script>");
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            bool kt;
            kt = xl.sualh(TextBox1.Text, TextBox2.Text);
            try
            {
                
                Response.Write("<script>alert('Sửa loại hàng thành công')</script>");
                hienthi();
            }
            catch
            {
                Response.Write("<script>alert('Sửa loại hàng thất bại')</script>");
            }
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            string a = GridView1.DataKeys[e.RowIndex].Values["MaLH"].ToString();
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = kn.con;
            cmd.CommandText = "delete from tbl_LoaiHang where MaLH ='" + a + "'";
            cmd.CommandType = CommandType.Text;
            kn.con.Open();
            cmd.ExecuteNonQuery();
            Response.Write("<script>alert('Xóa thành công')</script>");
            kn.con.Close();
            hienthi();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridViewRow row = GridView1.SelectedRow;
            this.TextBox1.Text = row.Cells[0].Text;
            this.TextBox2.Text = HttpUtility.HtmlDecode((String)(row.Cells[1].Text));
        }
    }
}