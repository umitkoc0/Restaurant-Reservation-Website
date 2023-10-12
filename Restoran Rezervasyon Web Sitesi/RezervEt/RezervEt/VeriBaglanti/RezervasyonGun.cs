using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;

namespace RezervEt.VeriBaglanti
{
    public class RezervasyonGun
    {
        Baglan b = new Baglan();

        public bool RezervasyonYap(int kullaniciID, int restoranID, int kisi, string tarih)
        {
            bool hataOlustuMu = false;
            try
            {
                using (SqlConnection baglanti = b.BaglantiOlustur())
                {
                    using (SqlCommand komut = new SqlCommand("rezervasyon_ekle_usp", baglanti))
                    {
                        komut.CommandType = CommandType.StoredProcedure;
                        komut.Parameters.AddWithValue("@kullaniciID", kullaniciID);
                        komut.Parameters.AddWithValue("@restoranID", restoranID);
                        komut.Parameters.AddWithValue("@kisi", kisi);
                        komut.Parameters.AddWithValue("@tarih", tarih);

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

        

        public DataTable KullaniciRezervasyonGetir(int ID)
        {
            DataTable dt = new DataTable();
            try
            {
                using (SqlConnection baglanti = b.BaglantiOlustur())
                {
                    using (SqlCommand komut = new SqlCommand("rezervasyon_kullanici_getir_usp", baglanti))
                    {

                        komut.CommandType = CommandType.StoredProcedure;
                        komut.Parameters.AddWithValue("@ID", ID);
                        baglanti.Open();
                        SqlDataAdapter da;
                        DataSet ds = new DataSet();
                        da = new SqlDataAdapter(komut);
                        da.Fill(ds, "Rezervasyon");
                        dt = ds.Tables["Rezervasyon"];
                        baglanti.Close();
                    }
                }
            }
            catch (Exception hata)
            {

            }

            return dt;
        }


        public DataTable AdminRezervasyonGetir()
        {
            DataTable dt = new DataTable();
            try
            {
                using (SqlConnection baglanti = b.BaglantiOlustur())
                {
                    using (SqlCommand komut = new SqlCommand("rezervasyon_admin_getir_usp", baglanti))
                    {

                        komut.CommandType = CommandType.StoredProcedure;
                        baglanti.Open();
                        SqlDataAdapter da;
                        DataSet ds = new DataSet();
                        da = new SqlDataAdapter(komut);
                        da.Fill(ds, "Rezervasyon");
                        dt = ds.Tables["Rezervasyon"];
                        baglanti.Close();
                    }
                }
            }
            catch (Exception hata)
            {

            }

            return dt;
        }

        public DataTable RezervasyonAra(string parametre)
        {
            DataTable dt = new DataTable();
            try
            {
                using (SqlConnection baglanti = b.BaglantiOlustur())
                {
                    using (SqlCommand komut = new SqlCommand("rezervasyon_ara_usp", baglanti))
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

        public bool RezervasyonGuncelle(int ID)
        {
            bool hataOlustuMu = false;
            try
            {
                using (SqlConnection baglanti = b.BaglantiOlustur())
                {
                    using (SqlCommand komut = new SqlCommand("rezervasyon_guncelle_usp", baglanti))
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