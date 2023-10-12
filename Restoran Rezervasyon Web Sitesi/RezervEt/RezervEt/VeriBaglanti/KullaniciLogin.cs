using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Data.SqlTypes;
using System.Security.Principal;

namespace RezervEt.VeriBaglanti
{
    public class KullaniciLogin
    {
        Baglan b = new Baglan();
        public DataTable KullaniciGetir(string kullaniciAdi, string sifre)
        {
            DataTable dt = new DataTable();
            try
            {
                using (SqlConnection baglanti = b.BaglantiOlustur())
                {
                    using (SqlCommand komut = new SqlCommand("kullanici_getir_usp", baglanti))
                    {
                        komut.CommandType = CommandType.StoredProcedure;
                        komut.Parameters.AddWithValue("@kullaniciAdi", kullaniciAdi);
                        komut.Parameters.AddWithValue("@sifre", sifre);
                        baglanti.Open();
                        SqlDataAdapter da;
                        DataSet ds = new DataSet();
                        da = new SqlDataAdapter(komut);
                        da.Fill(ds, "Kullanicilar");
                        dt = ds.Tables["Kullanicilar"];
                        baglanti.Close();
                    }
                }
            }
            catch (Exception hata)
            {
                
            }
            return dt;
        }

        

        public DataTable KullaniciGetir2(string kullaniciAdi)
        {
            DataTable dt = new DataTable();
            try
            {
                using (SqlConnection baglanti = b.BaglantiOlustur())
                {
                    using (SqlCommand komut = new SqlCommand("kullanici_getir_usp2", baglanti))
                    {
                        komut.CommandType = CommandType.StoredProcedure;
                        komut.Parameters.AddWithValue("@kullaniciAdi", kullaniciAdi);
                        baglanti.Open();
                        SqlDataAdapter da;
                        DataSet ds = new DataSet();
                        da = new SqlDataAdapter(komut);
                        da.Fill(ds, "Kullanicilar");
                        dt = ds.Tables["Kullanicilar"];
                        baglanti.Close();
                    }
                }
            }
            catch (Exception hata)
            {
                
            }
            return dt;
        }


        public bool KullaniciEkle(string isim, string soyisim, string kullaniciAdi, string sifre,
            string eposta, string telefon)
        {
            bool hataOlustuMu = false;
            try
            {
                using (SqlConnection baglanti = b.BaglantiOlustur())
                {
                    using (SqlCommand komut = new SqlCommand("kullanici_ekle_usp", baglanti))
                    {
                        komut.CommandType = CommandType.StoredProcedure;
                        komut.Parameters.AddWithValue("@isim", isim);
                        komut.Parameters.AddWithValue("@soyisim", soyisim);
                        komut.Parameters.AddWithValue("@kullaniciAdi", kullaniciAdi);
                        komut.Parameters.AddWithValue("@sifre", sifre);
                        komut.Parameters.AddWithValue("@eposta", eposta);
                        komut.Parameters.AddWithValue("@telefon", telefon);



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