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
    
    public partial class Iletisim : System.Web.UI.Page
    {
        Bilgi bilgi = new Bilgi();
        IletisimGun iletisim = new IletisimGun();
        KullaniciGun kullanici = new KullaniciGun();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["ID"] != null)
                {
                    DataTable dt = new DataTable();
                    dt = kullanici.TekKullaniciGoster(Convert.ToInt32(Session["ID"]));
                    adtxt.Text = dt.Rows[0][1].ToString();
                    soyadtxt.Text = dt.Rows[0][2].ToString();
                    epostatxt.Text = dt.Rows[0][5].ToString();
                }
            }
            
            
        }

        public string VeriGetir(int a)
        {
            DataTable dt = new DataTable();
            dt = bilgi.SiteGenel();
            return dt.Rows[0][a].ToString();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (adtxt.Text=="" || soyadtxt.Text == "" || epostatxt.Text == "" || konutxt.Text == "" || iletitxt.Text == "")
            {
                hatalbl.Text = "Lütfen Tüm Alanları Doldurun.";
            }
            else
            {
                bool hata=iletisim.BizeUlasin(adtxt.Text, soyadtxt.Text, epostatxt.Text, konutxt.Text, iletitxt.Text);
                if (hata==true)
                {
                    hatalbl.Text = "İletiniz Gönderilemedi !";
                }
                else
                {
                    hatalbl.Text = "İletiniz Başarıyla Gönderildi.";
                    if (Session["ID"] != null)
                    {
                        Temizle();
                    }
                    else
                    {
                        adtxt.Text = "";
                        soyadtxt.Text = "";
                        epostatxt.Text = "";
                        Temizle();
                    }
                }
            }
            
        }

        void Temizle()
        {
            konutxt.Text = "";
            iletitxt.Text = "";

        }
    }
}