using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using RezervEt.VeriBaglanti;

namespace RezervEt.Yonetim
{
    public partial class Kullanici : System.Web.UI.Page
    {
        KullaniciGun kullanici = new KullaniciGun();
        KullaniciLogin kullaniciLogin = new KullaniciLogin();
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Yetki"] == null)
            {
                Response.Redirect("../default.aspx");

            }
            if (!IsPostBack)
            {
                VeriGetir();
            }


        }

        void VeriGetir()
        {

            GridView1.DataSource = kullanici.KullaniciGoster();
            GridView1.DataBind();
        }
        void Temizle()
        {
            GridView1.SelectedIndex = -1;
            idlbl.Text = "-1";
            adtxt.Text = "";
            soyadtxt.Text = "";
            kaditxt.Text = "";
            sifretxt.Text = "";
            epostatxt.Text = "";
            teltxt.Text = "";
            yetkitxt.Text = "";
            hatalbl.Text = "";
            aratxt.Text = "";
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            hatalbl.Text = "";
            idlbl.Text = GridView1.SelectedRow.Cells[1].Text;
            adtxt.Text = HttpUtility.HtmlDecode(GridView1.SelectedRow.Cells[2].Text.ToString());
            soyadtxt.Text = HttpUtility.HtmlDecode(GridView1.SelectedRow.Cells[3].Text.ToString());
            kaditxt.Text = HttpUtility.HtmlDecode(GridView1.SelectedRow.Cells[4].Text.ToString());
            sifretxt.Text = HttpUtility.HtmlDecode(GridView1.SelectedRow.Cells[5].Text.ToString());
            epostatxt.Text = HttpUtility.HtmlDecode(GridView1.SelectedRow.Cells[6].Text.ToString());
            teltxt.Text = HttpUtility.HtmlDecode(GridView1.SelectedRow.Cells[7].Text.ToString());
            yetkitxt.Text = HttpUtility.HtmlDecode(GridView1.SelectedRow.Cells[8].Text.ToString());


        }
        protected void GridView1_PageIndexChanged(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            VeriGetir();
        }

        

        protected void temizle_Click(object sender, EventArgs e)
        {
            VeriGetir();
            Temizle();
        }

        protected void ekle_Click(object sender, EventArgs e)
        {
            DataTable dt = new DataTable();
            dt = kullaniciLogin.KullaniciGetir2(kaditxt.Text);
            if (adtxt.Text == "" || soyadtxt.Text == "" || kaditxt.Text == "" || sifretxt.Text == "" || epostatxt.Text == "" || teltxt.Text == "")
            {
                hatalbl.CssClass = "text-danger";
                hatalbl.Text = "Lütfen Tüm Alanları Doldurun";
            }
            else
            {
                if (dt.Rows.Count > 0)
                {
                    hatalbl.CssClass = "text-info";
                    hatalbl.Text = "Kayıtlı Kullanıcı";
                }
                else
                {
                    bool hata = kullaniciLogin.KullaniciEkle(adtxt.Text, soyadtxt.Text, kaditxt.Text, sifretxt.Text, epostatxt.Text, teltxt.Text);
                    if (hata == false)
                    {
                        hatalbl.CssClass = "text-success";
                        hatalbl.Text = "Kayıt Başarıyla Eklendi";
                    }
                    else
                    {
                        hatalbl.CssClass = "text-danger";
                        hatalbl.Text = "Kaydınız yapılamadı.";
                    }

                }
            }
            VeriGetir();
            
        }

        protected void sil_Click(object sender, EventArgs e)
        {
            if (idlbl.Text == "-1")
            {
                hatalbl.CssClass = "text-danger";
                hatalbl.Text = "Lütfen Silinecek Kaydı Seçin.";
            }
            else
            {
                bool hata = kullanici.KullaniciSil(Convert.ToInt32(idlbl.Text));
                if (hata == false)
                {
                    hatalbl.CssClass = "text-success";
                    hatalbl.Text = "Kayıt Başarıyla Silindi";
                }
                else
                {
                    hatalbl.CssClass = "text-danger";
                    hatalbl.Text = "Kayıt Silinemedi.";
                }
            }
            VeriGetir();
            
        }

        protected void guncelle_Click(object sender, EventArgs e)
        {
            if (idlbl.Text == "-1")
            {
                hatalbl.CssClass = "text-danger";
                hatalbl.Text = "Lütfen Güncellenecek Kaydı Seçin.";
            }
            else
            {
                bool hata = kullanici.KullaniciGuncelle(Convert.ToInt32(idlbl.Text), adtxt.Text, soyadtxt.Text, kaditxt.Text, sifretxt.Text, epostatxt.Text, teltxt.Text,yetkitxt.Text);
                if (hata == false)
                {
                    hatalbl.CssClass = "text-success";
                    hatalbl.Text = "Kayıt Başarıyla Güncellendi";
                }
                else
                {
                    hatalbl.CssClass = "text-danger";
                    hatalbl.Text = "Kayıt Güncellenemedi.";
                }
            }
            VeriGetir();
            

        }

        protected void ara_Click(object sender, EventArgs e)
        {
            GridView1.DataSource = kullanici.KullaniciAra(aratxt.Text);
            GridView1.DataBind();
        }
    }
}