using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Data.SqlTypes;
using System.Security.Principal;
using System.Web.UI.WebControls;

namespace RezervEt.VeriBaglanti
{
    public class Bilgi
    {
        Baglan b = new Baglan();


        public DataTable RestoranGetir()
        {
            DataTable dt = new DataTable();
            try
            {
                using (SqlConnection baglanti = b.BaglantiOlustur())
                {
                    using (SqlCommand komut = new SqlCommand("restoran_getir_usp", baglanti))
                    {
                        komut.CommandType = CommandType.StoredProcedure;
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
        public DataTable Ara(string parametre)
        {
            DataTable dt = new DataTable();
            try
            {
                using (SqlConnection baglanti = b.BaglantiOlustur())
                {
                    using (SqlCommand komut = new SqlCommand("restoran_ara_usp", baglanti))
                    {
                        
                        komut.CommandType = CommandType.StoredProcedure;
                        komut.Parameters.AddWithValue("@ad", parametre);
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
        public DataTable RezervasyonGetir(int ID)
        {
            DataTable dt = new DataTable();
            try
            {
                using (SqlConnection baglanti = b.BaglantiOlustur())
                {
                    using (SqlCommand komut = new SqlCommand("rezervasyon_sayfa_getir_usp", baglanti))
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
        public DataTable SiteGenel()
        {
            DataTable dt = new DataTable();
            try
            {
                using (SqlConnection baglanti = b.BaglantiOlustur())
                {
                    using (SqlCommand komut = new SqlCommand("site_genel_usp", baglanti))
                    {
                        komut.CommandType = CommandType.StoredProcedure;
                        baglanti.Open();
                        SqlDataAdapter da;
                        DataSet ds = new DataSet();
                        da = new SqlDataAdapter(komut);
                        da.Fill(ds, "Site");

                        dt = ds.Tables["Site"];
                        baglanti.Close();

                    }
                }
            }
            catch (Exception hata)
            {

            }
            return dt;
        }

        public DataTable AnaSayfa()
        {
            DataTable dt = new DataTable();
            try
            {
                using (SqlConnection baglanti = b.BaglantiOlustur())
                {
                    using (SqlCommand komut = new SqlCommand("anasayfa_usp", baglanti))
                    {
                        komut.CommandType = CommandType.StoredProcedure;
                        baglanti.Open();
                        SqlDataAdapter da;
                        DataSet ds = new DataSet();
                        da = new SqlDataAdapter(komut);
                        da.Fill(ds, "AnaSayfa");

                        dt = ds.Tables["AnaSayfa"];
                        baglanti.Close();

                    }
                }
            }
            catch (Exception hata)
            {

            }
            return dt;
        }

        public DataTable Hakkimda()
        {
            DataTable dt = new DataTable();
            try
            {
                using (SqlConnection baglanti = b.BaglantiOlustur())
                {
                    using (SqlCommand komut = new SqlCommand("hakkimda_usp", baglanti))
                    {
                        komut.CommandType = CommandType.StoredProcedure;
                        baglanti.Open();
                        SqlDataAdapter da;
                        DataSet ds = new DataSet();
                        da = new SqlDataAdapter(komut);
                        da.Fill(ds, "Hakkimda");

                        dt = ds.Tables["Hakkimda"];
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