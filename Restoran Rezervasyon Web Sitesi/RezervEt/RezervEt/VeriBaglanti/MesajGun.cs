using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;

namespace RezervEt.VeriBaglanti
{
    public class MesajGun
    {
        Baglan b = new Baglan();
        public DataTable MesajGoster()
        {
            DataTable dt = new DataTable();
            try
            {
                using (SqlConnection baglanti = b.BaglantiOlustur())
                {
                    using (SqlCommand komut = new SqlCommand("mesaj_goster_usp", baglanti))
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

        public bool MesajGuncelle(int ID)
        {
            bool hataOlustuMu = false;
            try
            {
                using (SqlConnection baglanti = b.BaglantiOlustur())
                {
                    using (SqlCommand komut = new SqlCommand("mesaj_guncelle_usp", baglanti))
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