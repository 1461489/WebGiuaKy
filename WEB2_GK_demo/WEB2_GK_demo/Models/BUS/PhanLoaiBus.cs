using MobileShopConnection;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WEB2_GK_demo.Models.BUS
{
    public class PhanLoaiBus
    {
        public static IEnumerable<LoaiSP> DanhSach()
        {
            var sql = new MobileShopConnectionDB();
            return sql.Query<LoaiSP>("select* from LoaiSP where TinhTrang = 0");

        }
        public static IEnumerable<SanPham> ChiTietPL(String id)
        {
            var sql = new MobileShopConnectionDB();
            return sql.Query<SanPham>("select * from SanPham where MaLoaiSP = '" + id + "'");
        }
    }
}