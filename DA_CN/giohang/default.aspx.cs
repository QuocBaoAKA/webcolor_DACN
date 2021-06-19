using System;
using System.Collections.Generic;
using System.Data;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DA_CN.giohang
{

    public partial class _default : System.Web.UI.Page
    {
        Product pr = new Product();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["gioHang"] != null)
                {
                    reloadRPT();
                }
                else
                {
                    Literal1.Text += "<div class='text-center text-uppercase'>Không có sản phẩm trong giỏ hàng</div>";
                }
            }
        }
        protected void reloadRPT()
        {
            decimal tongTien = 0;

            DataTable gioHang = new DataTable();
            gioHang.Columns.Add("MaSP");
            gioHang.Columns.Add("SoLuong");
            gioHang = Session["gioHang"] as DataTable;

            DataTable hienThiGioHang = new DataTable();
            hienThiGioHang.Columns.Add("MaSP");
            hienThiGioHang.Columns.Add("TenSP");
            hienThiGioHang.Columns.Add("HinhAnh");
            hienThiGioHang.Columns.Add("DonGia");
            hienThiGioHang.Columns.Add("SoLuong");

            hienThiGioHang.Columns.Add("thanhTien");

            foreach (DataRow row_gioHang in gioHang.Rows)
            {
                foreach (var item in pr.hienThiGioHang("MaSP"))
                {
                    var row_hienThiGioHang = hienThiGioHang.NewRow();
                    row_hienThiGioHang["MaSP"] = item.MaSP;
                    row_hienThiGioHang["TenSP"] = item.TenSP;
                    row_hienThiGioHang["HinhAnh"] = item.HinhAnh;
                    row_hienThiGioHang["DonGia"] = String.Format(CultureInfo.InvariantCulture, "{0:#,#}", item.DonGia);
                    row_hienThiGioHang["SoLuong"] = row_gioHang["SoLuong"];

                    row_hienThiGioHang["thanhTien"] = String.Format(CultureInfo.InvariantCulture, "{0:#,#}", item.DonGia * Int32.Parse(row_gioHang["SoLuong"].ToString()));
                    tongTien += Decimal.Parse(item.DonGia.ToString()) * Decimal.Parse(row_gioHang["SoLuong"].ToString());
                    hienThiGioHang.Rows.Add(row_hienThiGioHang);
                }
            }

            lb_tongTien.Text = "Tổng cộng: " + String.Format(CultureInfo.InvariantCulture, "{0:#,#}", tongTien) + " vnđ";
            Session["tongCong"] = "";
            Session["tongCong"] = tongTien;
            Repeater1.DataSource = hienThiGioHang;
            Repeater1.DataBind();

        }
    }
    }
   