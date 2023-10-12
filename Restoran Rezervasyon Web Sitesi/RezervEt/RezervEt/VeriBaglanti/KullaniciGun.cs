using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;

namespace RezervEt.VeriBaglanti
{
    public class KullaniciGun
    {
        Baglan b = new Baglan();


        public DataTable KullaniciGoster()
        {
            DataTable dt = new DataTable();
            try
            {
                using (SqlConnection baglanti = b.BaglantiOlustur())
                {
                    using (SqlCommand komut = new SqlCommand("kullanici_usp", baglanti))
                    {
                        komut.CommandType = CommandType.StoredProcedure;
                        baglanti.Open();
                        SqlDataAdapter da;
                        DataSet ds = new DataSet();
                        da = new SqlDataAdapter(komut);
                        da.Fill(ds, "Kullanici");

                        dt = ds.Tables["Kullanici"];
                        baglanti.Close();

                    }
                }
            }
            catch (Exception hata)
            {

            }
            return dt;
        }

        public DataTable TekKullaniciGoster(int ID)
        {
            DataTable dt = new DataTable();
            try
            {
                using (SqlConnection baglanti = b.BaglantiOlustur())
                {
                    using (SqlCommand komut = new SqlCommand("tek_kullanici_getir_usp", baglanti))
                    {

                        komut.CommandType = CommandType.StoredProcedure;
                        komut.Parameters.AddWithValue("@ID", ID);
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
        public DataTable KullaniciAra(string parametre)
        {
            DataTable dt = new DataTable();
            try
            {
                using (SqlConnection baglanti = b.BaglantiOlustur())
                {
                    using (SqlCommand komut = new SqlCommand("kullanici_ara_usp", baglanti))
                    {

                        komut.CommandType = CommandType.StoredProcedure;
                        komut.Parameters.AddWithValue("@parametre", parametre);
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

        public DataTable KullaniciPageIndex(int index)
        {
            DataTable dt = new DataTable();
            try
            {
                using (SqlConnection baglanti = b.BaglantiOlustur())
                {
                    using (SqlCommand komut = new SqlCommand("kullanici_ara_usp", baglanti))
                    {

                        komut.CommandType = CommandType.StoredProcedure;
                        komut.Parameters.AddWithValue("@index", index);
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
        public bool KullaniciGuncelle(int ID, string isim, string soyisim, string kullaniciAdi, string sifre,
            string eposta, string telefon, string yetki)
        {
            bool hataOlustuMu = false;
            try
            {
                using (SqlConnection baglanti = b.BaglantiOlustur())
                {
                    using (SqlCommand komut = new SqlCommand("kullanici_guncelle_usp", baglanti))
                    {
                        komut.CommandType = CommandType.StoredProcedure;
                        komut.Parameters.AddWithValue("@ID", ID);
                        komut.Parameters.AddWithValue("@isim", isim);
                        komut.Parameters.AddWithValue("@soyisim", soyisim);
                        komut.Parameters.AddWithValue("@kullaniciAdi", kullaniciAdi);
                        komut.Parameters.AddWithValue("@sifre", sifre);
                        komut.Parameters.AddWithValue("@eposta", eposta);
                        komut.Parameters.AddWithValue("@telefon", telefon);
                        komut.Parameters.AddWithValue("@yetki", yetki);


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

        public bool KullaniciGuncelle2(int ID, string isim, string soyisim, string kullaniciAdi, string sifre,
            string eposta, string telefon)
        {
            bool hataOlustuMu = false;
            try
            {
                using (SqlConnection baglanti = b.BaglantiOlustur())
                {
                    using (SqlCommand komut = new SqlCommand("kullanici_guncelle_usp2", baglanti))
                    {
                        komut.CommandType = CommandType.StoredProcedure;
                        komut.Parameters.AddWithValue("@ID", ID);
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




        public bool KullaniciSil(int ID)
        {
            bool hataOlustuMu = false;

            try
            {
                using (SqlConnection baglanti = b.BaglantiOlustur())
                {
                    using (SqlCommand komut = new SqlCommand("kullanici_sil_usp", baglanti))
                    {
                        komut.CommandType = CommandType.StoredProcedure;
                        komut.Parameters.AddWithValue("@ID", ID);
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