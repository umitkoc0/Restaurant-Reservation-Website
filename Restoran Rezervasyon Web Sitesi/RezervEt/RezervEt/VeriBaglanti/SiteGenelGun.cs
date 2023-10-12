using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI.WebControls;

namespace RezervEt.VeriBaglanti
{
    public class SiteGenelGun
    {
        Baglan b = new Baglan();

        public bool SiteGenelGuncelle(string logo, string baslik, string kisaAciklama, string menu1, string menu2, string menu3, string menu4, string menuLink1, string menuLink2, string menuLink3, string menuLink4)
        {
            bool hataOlustuMu = false;

            try
            {
                using (SqlConnection baglanti = b.BaglantiOlustur())
                {
                    using (SqlCommand komut = new SqlCommand("site_genel_guncelle_usp", baglanti))
                    {
                        komut.CommandType = CommandType.StoredProcedure;
                        komut.Parameters.AddWithValue("@logo", logo);
                        komut.Parameters.AddWithValue("@baslik", baslik);
                        komut.Parameters.AddWithValue("@kisaAciklama", kisaAciklama);
                        komut.Parameters.AddWithValue("@menu1", menu1);
                        komut.Parameters.AddWithValue("@menu2", menu2);
                        komut.Parameters.AddWithValue("@menu3", menu3);
                        komut.Parameters.AddWithValue("@menu4", menu4);
                        komut.Parameters.AddWithValue("@menuLink1", menuLink1);
                        komut.Parameters.AddWithValue("@menuLink2", menuLink2);
                        komut.Parameters.AddWithValue("@menuLink3", menuLink3);
                        komut.Parameters.AddWithValue("@menuLink4", menuLink4);

                        baglanti.Open();
                        komut.ExecuteNonQuery();
                        baglanti.Close();
                    }
                }
            }
            catch (Exception hata)
            {
                hataOlustuMu = true;
            }
            return hataOlustuMu;

        }
    }
}