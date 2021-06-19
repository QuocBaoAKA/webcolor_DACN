using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.Services;

namespace DA_CN
{
    /// <summary>
    /// Summary description for xuly
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    // [System.Web.Script.Services.ScriptService]
    public class xulyGH : System.Web.Services.WebService
    {
        dbQLDADataContext db = new dbQLDADataContext();
        [WebMethod]
        public bool themsp(string masp, string tensp, string malh, string mamau, string hinhanh, string mota, float dongia)
        {
            tbl_SanPham sp = new tbl_SanPham();
            sp.MaSP = masp;
            sp.TenSP = tensp;
            
            sp.MaLH = malh;
            sp.MaMau = mamau;
            sp.HinhAnh = hinhanh;
            sp.MoTa = mota;
            sp.DonGia = dongia;
            try
            {
                db.tbl_SanPhams.InsertOnSubmit(sp);
                db.SubmitChanges();
                return true;
            }
            catch
            {
                return false;
            }
        }
        [WebMethod]
        public bool suasp(string masp, string tensp, string malh, string mamau, string hinhanh, string mota, float dongia)
        {
            tbl_SanPham sp = new tbl_SanPham();
          
            sp.MaSP = masp;
            sp.TenSP = tensp;
            sp.MaLH = malh;
            sp.MaMau = mamau;
            sp.HinhAnh = hinhanh;
            sp.MoTa = mota;
            sp.DonGia = dongia;
            try
            {
                
                db.SubmitChanges();
                return true;
            }
            catch
            {
                return false;
            }
        }
        [WebMethod]
        public bool xoasp(string masp)
        {
            tbl_SanPham sp = db.tbl_SanPhams.Single(X => X.MaSP == masp);
            try
            {
                db.tbl_SanPhams.DeleteOnSubmit(sp);
                return true;
            }
            catch
            {
                return false;
            }
        }
        [WebMethod]
        public List<tbl_SanPham> timsp(string masp)
        {
            var ds = from a in db.tbl_SanPhams
                     where a.MaSP.Contains(masp)
                     select a;
            return ds.ToList();
        }
        [WebMethod]
        public List<tbl_MaMau> timmau(string mamau, string tenmau)
        {
            var ds = from a in db.tbl_MaMaus
                     where a.MaMau == mamau && a.TenMau == tenmau
                     select a;
            return ds.ToList();
        }
        [WebMethod]
        public List<tbl_SanPham> hienthisp()
        {
            var ht = from s in db.tbl_SanPhams
                     select s;
            return ht.ToList();
        }
        
       
        [WebMethod]
        public List<tbl_LoaiHang> hienthilh()
        {
            var lh = from a in db.tbl_LoaiHangs
                     select a;

            return lh.ToList();
        }
        [WebMethod]
        public bool themlh(string malh, string tenlh)
        {
            tbl_LoaiHang lh = new tbl_LoaiHang();
            lh.MaLH = malh;
            lh.TenLH = tenlh;
            try
            {
                db.tbl_LoaiHangs.InsertOnSubmit(lh);
                db.SubmitChanges();
                return true;
            }
            catch
            {
                return false;
            }
        }
        [WebMethod]
        public bool sualh(string malh, string tenlh)
        {
            tbl_LoaiHang lh = db.tbl_LoaiHangs.Single(x => x.MaLH == malh);
            lh.MaLH = malh;
            lh.TenLH = tenlh;
            try
            {
                db.SubmitChanges();
                return true;
            }
            catch
            {
                return false;
            }
        }
        [WebMethod]
        public List<tbl_SanPham> hienThiGioHang(string masp)
        {
            return db.tbl_SanPhams.Where(sp => sp.MaSP == masp).ToList();
        }
        [WebMethod]
        public int layMaKH(string tdn_usser)
        {
            return db.tbl_KhachHangs.Where(tk => tk.Username == tdn_usser || tk.Email == tdn_usser).Select(tk => tk.ID_TK).SingleOrDefault();
        }

        public void datHang(DataTable gioHang, int maKH, string diaChinh, string sdt)
        {
            tbl_DonDatHang gd = new tbl_DonDatHang();
            gd.NgayDatHang = DateTime.Now;

            gd.ID_TK = maKH;
            gd.DiaChiNhanHang = diaChinh;
            gd.SDT = sdt;
            db.tbl_DonDatHangs.InsertOnSubmit(gd);
            db.SubmitChanges();

            string maddh = gd.MaDDH;
            foreach (DataRow r in gioHang.Rows)
            {
                tbl_ChiTietDatHang ctgd = new tbl_ChiTietDatHang();
                ctgd.MaDDH = maddh;
                ctgd.MaSP = ("MaSP");
                ctgd.SoLuong = Int32.Parse(r["SoLuong"].ToString());
                db.tbl_ChiTietDatHangs.InsertOnSubmit(ctgd);
                db.SubmitChanges();
            }

            foreach (DataRow r in gioHang.Rows)
            {
                string maSP = ("MaSP");
                var timKiem = db.tbl_SanPhams.Where(sp => sp.MaSP == maSP).FirstOrDefault();
                tbl_SanPham spSua = timKiem;
                db.SubmitChanges();
            }
        }
        [WebMethod]
        public IEnumerable lichSuDatHang(int id_tk)
        {
            var query = from gd in db.tbl_DonDatHangs

                        orderby gd.NgayDatHang descending
                        where gd.ID_TK == id_tk
                        select new
                        {
                            ngayDatHang = gd.NgayDatHang.ToShortDateString(),
                            gd,

                        };
            return query.ToList();
        }
        [WebMethod]
        public List<tbl_DonDatHang> hienThiChiTietDonHang(string maDH)
        {
            var query = from gd in db.tbl_DonDatHangs
                        where gd.MaDDH == maDH
                        select gd;
            return query.ToList();
        }
        [WebMethod]
        public string tongTienCuaDH(string maDH)
        {
            var query = from ctgd in db.tbl_ChiTietDatHangs
                        join sp in db.tbl_SanPhams on ctgd.MaSP equals sp.MaSP
                        where ctgd.MaDDH == maDH
                        select new
                        {
                            maSP = ctgd.MaSP,
                            soLuong = ctgd.SoLuong,
                            giaTien = sp.DonGia
                        };
            decimal tongTien = 0;
            foreach (var items in query.ToList())
            {
                tongTien += decimal.Parse(items.soLuong.ToString()) * decimal.Parse(items.giaTien.ToString());
            }

            return String.Format(CultureInfo.InvariantCulture, "{0:#,#}", tongTien).ToString();
        }
        [WebMethod]
        public IEnumerable hienThiSPTrongDH(string maDH)
        {
            var query = from gd in db.tbl_DonDatHangs
                        join ctgd in db.tbl_ChiTietDatHangs on gd.MaDDH equals ctgd.MaDDH
                        join sp in db.tbl_SanPhams on ctgd.MaSP equals sp.MaSP
                        where gd.MaDDH == maDH
                        select new
                        {
                            gia = String.Format(CultureInfo.InvariantCulture, "{0:#,#}", sp.DonGia),
                            thanhTien = String.Format(CultureInfo.InvariantCulture, "{0:#,#}", sp.DonGia * ctgd.SoLuong),
                            gd,
                            ctgd,
                            sp
                        };
            return query.ToList();
        }
    }
}
