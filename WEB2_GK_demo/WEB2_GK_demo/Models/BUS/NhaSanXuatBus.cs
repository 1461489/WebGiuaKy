using MobileShopConnection;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WEB2_GK_demo.Models.BUS
{
    public class NhaSanXuatBus
    {
        public static IEnumerable<NhaSanXuat> DanhSach()
        {
            var sql = new MobileShopConnectionDB();
            return sql.Query<NhaSanXuat>("select* from NhaSanXuat where TinhTrang = 0");

        }
        public static IEnumerable<SanPham> ChiTietNSX(String id)
        {
            var sql = new MobileShopConnectionDB();
            return sql.Query<SanPham>("select * from SanPham where MaNhaSX = '" + id + "'");
        }


    }
}