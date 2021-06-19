using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Globalization;
using System.IO;
using System.Linq;
using System.Web;

namespace DA_CN
{
    public class Product
    {
        dbQLDADataContext db = new dbQLDADataContext();
        private string srcDir;

        public IEnumerable hienThiChiTietSP(string maSP)
        {
            var query = from sp in db.tbl_SanPhams
                        join lsp in db.tbl_LoaiHangs on sp.MaLH equals lsp.MaLH
                        where sp.MaSP == maSP
                        select new
                        {
                            sp,
                            gia = String.Format(CultureInfo.InvariantCulture, "{0:#,#}", sp.DonGia),
                            lsp,

                        };

            return query.ToList();
        }
        public List<tbl_SanPham> hienThiGioHang(string masp)
        {
            return db.tbl_SanPhams.Where(sp => sp.MaSP == masp).ToList();
        }

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

        public List<tbl_DonDatHang> hienThiChiTietDonHang(string maDH)
        {
            var query = from gd in db.tbl_DonDatHangs
                        where gd.MaDDH == maDH
                        select gd;
            return query.ToList();
        }

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
        public bool xoaSanPham(string maSP)
        {
            var timKiem = db.tbl_SanPhams.Where(sp => sp.MaSP == maSP).FirstOrDefault();
            tbl_SanPham spXoa = timKiem;

            string duongDanHinhAnh = srcDir + timKiem.HinhAnh;
            File.Delete(duongDanHinhAnh);
            db.tbl_SanPhams.DeleteOnSubmit(spXoa);
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
        public List<tbl_SanPham> hienThiSanPhamDeSua(string maSP)
        {
            return db.tbl_SanPhams.Where(sp => sp.MaSP == maSP).ToList();
        }

        public bool suaSanPham(string maSP, string tenSP, string maLoai, string mamau, float gia, string hinhAnh, string moTa)
        {
            var timKiem = db.tbl_SanPhams.Where(sp => sp.MaSP == maSP).FirstOrDefault();

            tbl_SanPham spSua = timKiem;
            spSua.TenSP = tenSP;
            spSua.MaLH = maLoai;
            spSua.MaMau = mamau;


            spSua.HinhAnh = hinhAnh;
            spSua.MoTa = moTa;
            spSua.DonGia = gia;

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
        public List<tbl_LoaiHang> hienThilh()
        {
            var query = from lsp in db.tbl_LoaiHangs
                        select lsp;
            return query.ToList();
        }
        public List<tbl_LoaiHang> hienThilaoihangdesua(string maHang)
        {
            return db.tbl_LoaiHangs.Where(hsp => hsp.MaLH == maHang).ToList();
        }
        #region Quản lý màu
        public List<tbl_MaMau> hienThimau()
        {
            var query = from lsp in db.tbl_MaMaus
                        select lsp;
            return query.ToList();
        }
        public List<tbl_MaMau> hienThimaudesua(string mamau)
        {
            return db.tbl_MaMaus.Where(lsp => lsp.MaMau == mamau).ToList();
        }
        #endregion
    }
}