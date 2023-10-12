using RezervEt.VeriBaglanti;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RezervEt
{
    public partial class Rezervasyon : System.Web.UI.Page
    {

        bool m;
        Bilgi bilgi = new Bilgi();
        RezervasyonGun rezervasyon = new RezervasyonGun();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Kullanici"] == null)
            {
                Response.Redirect("giris.aspx");
            }
            else if (Session["Restorant"] == null)
            {
                Response.Redirect("Restaurantlar.aspx");
            }
        }

        public string VeriGetir(int a)
        {
            DataTable dt = new DataTable();
            dt = bilgi.RezervasyonGetir(Convert.ToInt32(Session["Restorant"]));
            return dt.Rows[0][a].ToString();
        }



        public int Masa()
        {
            int a;
            if (RadioButton1.Checked)
                a = 2;
            else if (RadioButton2.Checked)
                a = 4;
            else if (RadioButton3.Checked)
                a = 6;
            else if (RadioButton4.Checked)
                a = 8;
            else if (RadioButton5.Checked)
                a = 10;
            else
                a = 0;
            return a;

        }

        protected void Rezervasyon_Click(object sender, EventArgs e)
        {
            
            if (tarih.SelectedDate<DateTime.Now)
            {
                hatalbl.Text = "Lütfen İleri Bir Tarih Seçimi Yapınız.";
            }
            else
            {
                if (saat.Text=="")
                {
                    hatalbl.Text = "Lütfen Saat Seçimi Yapınız.";
                }
                else
                {
                    string tarihYeni = (tarih.SelectedDate.ToString("yyyy-MM-dd") + " " + saat.Text);
                    bool hata = rezervasyon.RezervasyonYap(Convert.ToInt32(Session["ID"]), Convert.ToInt32(Session["Restorant"]), Masa(), tarihYeni);
                    if (hata == true)
                    {
                        hatalbl.Text = "Rezervasyon Oluşturulamadı.";
                    }
                    else
                    {
                        hatalbl.Text = "Rezsrvasyon Başarıyla Oluşturuldu.";
                    }
                }
            }
            

        }


    }
}