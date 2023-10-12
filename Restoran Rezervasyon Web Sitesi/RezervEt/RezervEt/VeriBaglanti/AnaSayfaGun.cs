using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;

namespace RezervEt.VeriBaglanti
{
    public class AnaSayfaGun
    {
        Baglan b = new Baglan();

        public bool AnaSayfaGuncelle(string baslik1, string baslik2, string baslik3, string aciklama1, string aciklama2, string aciklama3, string resim1, string resim2,string resim3)
        {
            bool hataOlustuMu = false;
            
            try
            {
                using (SqlConnection baglanti = b.BaglantiOlustur())
                {
                    using (SqlCommand komut = new SqlCommand("anasayfa_guncelle_usp", baglanti))
                    {
                        komut.CommandType = CommandType.StoredProcedure;
                        komut.Parameters.AddWithValue("@baslik1", baslik1);
                        komut.Parameters.AddWithValue("@baslik2", baslik2);
                        komut.Parameters.AddWithValue("@baslik3", baslik3);
                        komut.Parameters.AddWithValue("@aciklama1", aciklama1);
                        komut.Parameters.AddWithValue("@aciklama2", aciklama2);
                        komut.Parameters.AddWithValue("@aciklama3", aciklama3);
                        komut.Parameters.AddWithValue("@resim1", resim1);
                        komut.Parameters.AddWithValue("@resim2", resim2);
                        komut.Parameters.AddWithValue("@resim3", resim3);


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