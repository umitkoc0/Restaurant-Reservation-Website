using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI.WebControls;

namespace RezervEt.VeriBaglanti
{
    public class RestoranlarGun
    {
        Baglan b = new Baglan();
        public DataTable RestoranGetir2(string kullaniciAdi)
        {
            DataTable dt = new DataTable();
            try
            {
                using (SqlConnection baglanti = b.BaglantiOlustur())
                {
                    using (SqlCommand komut = new SqlCommand("restoran_getir_usp2", baglanti))
                    {
                        komut.CommandType = CommandType.StoredProcedure;
                        komut.Parameters.AddWithValue("@isim", kullaniciAdi);
                        baglanti.Open();
                        SqlDataAdapter da;
                        DataSet ds = new DataSet();
                        da = new SqlDataAdapter(komut);
                        da.Fill(ds, "Restoranlar");
                        dt = ds.Tables["Restoranlar"];
                        baglanti.Close();
                    }
                }
            }
            catch (Exception hata)
            {

            }
            return dt;
        }


        public bool RestoranEkle(string isim, string eposta, string telefon, string detay,
            string resim)
        {
            bool hataOlustuMu = false;
            try
            {
                using (SqlConnection baglanti = b.BaglantiOlustur())
                {
                    using (SqlCommand komut = new SqlCommand("restoran_ekle_usp", baglanti))
                    {
                        komut.CommandType = CommandType.StoredProcedure;
                        komut.Parameters.AddWithValue("@isim", isim);
                        komut.Parameters.AddWithValue("@eposta", eposta);
                        komut.Parameters.AddWithValue("@telefon", telefon);
                        komut.Parameters.AddWithValue("@detay", detay);
                        komut.Parameters.AddWithValue("@resim", resim);

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

        public bool RestoranGuncelle(string ID, string isim, string eposta, string telefon, string bilgi, string resim)
        {
            bool hataOlustuMu = false;

            try
            {
                using (SqlConnection baglanti = b.BaglantiOlustur())
                {
                    using (SqlCommand komut = new SqlCommand("restoran_guncelle_usp", baglanti))
                    {
                        komut.CommandType = CommandType.StoredProcedure;
                        komut.Parameters.AddWithValue("@ID", ID);
                        komut.Parameters.AddWithValue("@isim", isim);
                        komut.Parameters.AddWithValue("@eposta", eposta);
                        komut.Parameters.AddWithValue("@telefon", telefon);
                        komut.Parameters.AddWithValue("@bilgi", bilgi);
                        komut.Parameters.AddWithValue("@resim", resim);
                        
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

        public bool RestoranSil(int ID)
        {
            bool hataOlustuMu = false;

            try
            {
                using (SqlConnection baglanti = b.BaglantiOlustur())
                {
                    using (SqlCommand komut = new SqlCommand("restoran_sil_usp", baglanti))
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
            /*
             
            
             */
        }

        public DataTable RestoranGoster()
        {
            DataTable dt = new DataTable();
            try
            {
                using (SqlConnection baglanti = b.BaglantiOlustur())
                {
                    using (SqlCommand komut = new SqlCommand("restoran_usp", baglanti))
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
    }
}