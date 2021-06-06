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
    public partial class QTSP : System.Web.UI.Page
    {
        xuly xl = new xuly();
        ketnoi kn = new ketnoi();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["allow"] == null)
            {
                Response.Redirect("loginad.aspx");
            }
            if (!IsPostBack)
            {
                hienthi();
            }
        }
        public void hienthi()
        {
            GridView1.DataSource = xl.hienthisp();
            GridView1.DataBind();
        }    
        
        protected void Button1_Click(object sender, EventArgs e)
        {
            bool kt;
            string path = Server.MapPath("~/hinhanh/" + FileUpload1.FileName);
            string tenhinh = "~/hinhanh/" + FileUpload1.FileName;
            if (FileUpload1.FileName != "")
            {
                FileUpload1.PostedFile.SaveAs(path);
                ImageMap1.ImageUrl = tenhinh;
            }
            kt = xl.themsp(TextBox1.Text, TextBox2.Text, DropDownList2.SelectedValue, DropDownList1.SelectedValue, tenhinh, TextBox4.Text, float.Parse(TextBox3.Text));
            if (kt)
            {
                Response.Write("<script>alert('Thêm sản phẩm thành công')</script>");
                hienthi();

            }
            //else
            //{
            //    Response.Write("<script>alert('Thêm sản phẩm thất bại')</script>");

            //}
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            bool kt;
            string path = Server.MapPath("~/hinhanh/" + FileUpload1.FileName);
            string tenhinh = "~/hinhanh/" + FileUpload1.FileName;
            if (FileUpload1.FileName != "")
            {
                FileUpload1.PostedFile.SaveAs(path);
                ImageMap1.ImageUrl = tenhinh;
            }
            kt = xl.suasp(TextBox1.Text, TextBox2.Text, DropDownList2.Text, DropDownList1.Text, tenhinh, TextBox4.Text,  int.Parse(TextBox3.Text));
            if (kt)
            {
                Response.Write("<script>alert('Sửa sản phẩm thành công')</script>");
                hienthi();
            }
            else
            {
                Response.Write("<script>alert('Sửa sản phẩm thất bại')</script>");
            }
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            string a = GridView1.DataKeys[e.RowIndex].Values["MaSP"].ToString();
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = kn.con;
            cmd.CommandText = "delete from tbl_SanPham where MaSP ='" + a + "'";
            cmd.CommandType = CommandType.Text;
            kn.con.Open();
            cmd.ExecuteNonQuery();
            Response.Write("<script>alert('Xóa thành công')</script>");
            kn.con.Close();
            hienthi();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridViewRow row = GridView1.SelectedRow;
            this.TextBox1.Text = row.Cells[0].Text;
            this.TextBox2.Text = HttpUtility.HtmlDecode((String)(row.Cells[1].Text));
            this.DropDownList2.SelectedValue = row.Cells[2].Text;
            this.DropDownList1.SelectedValue = row.Cells[3].Text;
            this.TextBox4.Text = HttpUtility.HtmlDecode((String)(row.Cells[5].Text));
            this.TextBox3.Text = row.Cells[6].Text;
            
        }
    }
}