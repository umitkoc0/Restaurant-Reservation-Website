using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace RezervEt.VeriBaglanti
{
    public class Baglan
    {
        SqlConnection baglanti;
        public SqlConnection BaglantiOlustur()
        {
            if (baglanti == null || baglanti.ConnectionString == "")
            {
                baglanti = new SqlConnection(Properties.Settings.Default.BaglantiCumlesi);
            }
            return baglanti;
        }
    }
}