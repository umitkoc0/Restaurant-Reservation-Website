using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;

namespace RezervEt.VeriBaglanti
{
    public class HakkimdaGun
    {
        Baglan b = new Baglan();

        public bool HakkimdaGuncelle(string bas1a, string bas1b, string bas2a, string bas2b, string acklm1, string acklm2, string resim1, string resim2)
        {
            bool hataOlustuMu = false;

            try
            {
                using (SqlConnection baglanti = b.BaglantiOlustur())
                {
                    using (SqlCommand komut = new SqlCommand("hakkimda_guncelle_usp", baglanti))
                    {
                        komut.CommandType = CommandType.StoredProcedure;
                        komut.Parameters.AddWithValue("@bas1a", bas1a);
                        komut.Parameters.AddWithValue("@bas1b", bas1b);
                        komut.Parameters.AddWithValue("@bas2a", bas2a);
                        komut.Parameters.AddWithValue("@bas2b", bas2b);
                        komut.Parameters.AddWithValue("@acklm1", acklm1);
                        komut.Parameters.AddWithValue("@acklm2", acklm2);
                        komut.Parameters.AddWithValue("@resim1", resim1);
                        komut.Parameters.AddWithValue("@resim2", resim2);

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