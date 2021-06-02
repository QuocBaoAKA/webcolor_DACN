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
            kt = xl.themsp(TextBox1.Text, TextBox2.Text, DropDownList1.SelectedValue, DropDownList2.SelectedValue, tenhinh, ckeditor1.Text, float.Parse(TextBox3.Text));
            if (kt)
            {
                Response.Write("<script>alert('Thêm sản phẩm thành công')</script>");
                hienthi();

            }
            else
            {
                Response.Write("<script>alert('Thêm sản phẩm thất bại')</script>");

            }
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            string a = TextBox1.Text;
            string b = TextBox2.Text;
            string c = DropDownList1.SelectedValue;
            string d = DropDownList2.SelectedValue;
            string e1 = ckeditor1.Text;
            string f = int.Parse(TextBox3.Text).ToString();
            string path = Server.MapPath("./hinhanh/" + FileUpload1.FileName);
            string tenhinh = "/hinhanh/" + FileUpload1.FileName;
            if (FileUpload1.FileName != "")
            {
                FileUpload1.PostedFile.SaveAs(path);
                ImageMap1.ImageUrl = tenhinh;
            }
            SqlCommand db = new SqlCommand();
            db.Connection = kn.con;
            db.CommandText = "update tbl_SanPham set TenSP = N'" + b + "', MaLH = '" + c + "', MaMau = '" + d + "', Hinhanh ='" + tenhinh + "',MoTa = N'" + e1 + "', DonGia = '" + f + "' where MaSP = '" + a + "'";
            db.CommandType = CommandType.Text;
            kn.con.Open();
            db.ExecuteNonQuery();
            kn.con.Close();
            Response.Write("<script>alert('Sửa sản phẩm thành công')</script>");
        }
    }
}