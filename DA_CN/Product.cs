using System;
using System.Collections;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Web;

namespace DA_CN
{
    public class Product
    {
        dbQLDADataContext db = new dbQLDADataContext();
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
    }
}