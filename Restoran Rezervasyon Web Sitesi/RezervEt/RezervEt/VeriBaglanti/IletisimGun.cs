using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;

namespace RezervEt.VeriBaglanti
{
    public class IletisimGun
    {
        Baglan b = new Baglan();

        public bool IletisimGuncelle(string adres, string adresLink, string eposta, string telefon, string facebook, string instagram, string twitter, string linkedin, string googleMap)
        {
            bool hataOlustuMu = false;

            try
            {
                using (SqlConnection baglanti = b.BaglantiOlustur())
                {
                    using (SqlCommand komut = new SqlCommand("iletisim_guncelle_usp", baglanti))
                    {
                        komut.CommandType = CommandType.StoredProcedure;
                        komut.Parameters.AddWithValue("@adres", adres);
                        komut.Parameters.AddWithValue("@adresLink", adresLink);
                        komut.Parameters.AddWithValue("@eposta", eposta);
                        komut.Parameters.AddWithValue("@telefon", telefon);
                        komut.Parameters.AddWithValue("@facebook", facebook);
                        komut.Parameters.AddWithValue("@instagram", instagram);
                        komut.Parameters.AddWithValue("@twitter", twitter);
                        komut.Parameters.AddWithValue("@linkedin", linkedin);
                        komut.Parameters.AddWithValue("@googleMap", googleMap);

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

        public bool BizeUlasin(string ad, string soyad, string eposta, string konu, string ileti)
        {
            bool hataOlustuMu = false;

            try
            {
                using (SqlConnection baglanti = b.BaglantiOlustur())
                {
                    using (SqlCommand komut = new SqlCommand("ileti_ekle_usp", baglanti))
                    {
                        komut.CommandType = CommandType.StoredProcedure;
                        komut.Parameters.AddWithValue("@ad", ad);
                        komut.Parameters.AddWithValue("@soyad", soyad);
                        komut.Parameters.AddWithValue("@eposta", eposta);
                        komut.Parameters.AddWithValue("@konu", konu);
                        komut.Parameters.AddWithValue("@ileti", ileti);

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