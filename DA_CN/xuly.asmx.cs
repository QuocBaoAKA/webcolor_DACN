using System;
using System.Collections.Generic;
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
    public class xuly : System.Web.Services.WebService
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
        public List<tbl_MaMau> timmau(string mamau, string tenmau)
        {
            var ds = from a in db.tbl_MaMaus
                     where a.MaMau == mamau && a.TenMau == tenmau
                     select a;
            return ds.ToList();
        }
        public List<tbl_SanPham> hienthisp()
        {
            var ht = from s in db.tbl_SanPhams
                     select s;
            return ht.ToList();
        }
    }
}
