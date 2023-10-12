using RezervEt.VeriBaglanti;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using RezervEt.VeriBaglanti;

namespace RezervEt
{
    public partial class Hesabım : System.Web.UI.Page
    {
        KullaniciGun kullanici = new KullaniciGun();
        RezervasyonGun rezervasyon = new RezervasyonGun();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Kullanici"] == null)
            {
                Response.Redirect("default.aspx");
            }
            if (!IsPostBack)
            {
                VeriGetir();
                VeriGetir2();
            }
        }

        public void VeriGetir()
        {
            DataTable dt = new DataTable();
            dt = kullanici.TekKullaniciGoster(Convert.ToInt32(Session["ID"]));

            adtxt.Text = dt.Rows[0][1].ToString();
            soyadtxt.Text = dt.Rows[0][2].ToString();
            kaditxt.Text = dt.Rows[0][3].ToString();
            sifretxt.Text = dt.Rows[0][4].ToString();
            epostatxt.Text = dt.Rows[0][5].ToString();
            teltxt.Text = dt.Rows[0][6].ToString();
            sifretxt2.Text = "";

        }

        void VeriGetir2()
        {
            DataTable dt = new DataTable();
            dt = rezervasyon.KullaniciRezervasyonGetir(Convert.ToInt32(Session["ID"]));

            //DataTable dt2 = new DataTable();

            //if (dt.Rows[0][5].ToString() == "false")
            //{
            //    dt2.Rows[0][5] = "Bekleniyor";
            //}
            //else
            //{
            //    dt2.Rows[0][5] = "Onaylandı";
            //}
            

            GridView1.DataSource = dt;

            GridView1.DataBind();
        }

        
        

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            if (sifretxt2.Text == "")
            {
                hatalbl.Text = "Kaydınızı Güncellemek İçin Şifrenizi Tekrar Girin.";
            }
            else
            {
                if (sifretxt.Text != sifretxt2.Text)
                {
                    hatalbl.Text = "Kaydınızı Güncellemek İçin Şifrelerin Aynı Olması Gerekir.";
                }
                else
                {
                    if (adtxt.Text == "" || soyadtxt.Text == "" || epostatxt.Text == "" || teltxt.Text == "" || kaditxt.Text == "" || sifretxt.Text == "")
                    {
                        hatalbl.Text = "Kaydınızı Güncellemek İçin Tüm Alanları Doldurun.";
                    }
                    else
                    {
                        bool hata = kullanici.KullaniciGuncelle2(Convert.ToInt32(Session["ID"]), adtxt.Text, soyadtxt.Text, kaditxt.Text, sifretxt.Text, epostatxt.Text, teltxt.Text);
                        if (hata == false)
                        {
                            hatalbl.Text = "Kayıt Başarıyla Güncellendi";
                        }
                        else
                        {
                            hatalbl.Text = "Kayıt Güncellenemedi.";
                        }
                    }
                }
            }
            
            VeriGetir();

        }

        protected void p1btn_Click(object sender, EventArgs e)
        {
            Panel1.Visible = true;
            Panel2.Visible = false;
        }

        protected void p2btn_Click(object sender, EventArgs e)
        {
            Panel1.Visible = false;
            Panel2.Visible = true;
        }



    }
}