using RezervEt.VeriBaglanti;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RezervEt
{
    public partial class giris : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        KullaniciLogin kullaniciLogin = new KullaniciLogin();
        protected void Giris_Click(object sender, EventArgs e)
        {
            

            DataTable dt = new DataTable();
            dt = kullaniciLogin.KullaniciGetir(kadi.Text, sifre.Text);
            if (kadi.Text == "" || sifre.Text == "")
            {
                hata.Text = "Lütfen Tüm Alanları Doldurun";
            }
            else
            {
                if (dt.Rows.Count > 0)
                {
                    Session["ID"] = dt.Rows[0][0].ToString();
                    Session["Kullanici"] = (dt.Rows[0][1].ToString());
                    Session["Yetki"]=dt.Rows[0][3].ToString();

                    if ("0" == (dt.Rows[0][3].ToString()))
                    {
                        Response.Redirect("Yonetim/default.aspx");
                    }
                    else
                    {
                        Response.Redirect("default.aspx");
                    }
                }
                else
                {
                    hata.Text = ("Kullanıcı Adı veya Şifre Hatalı");
                }
            }
            
        }
        protected void Kayit_Click(object sender, EventArgs e)
        {
            DataTable dt = new DataTable();
            dt = kullaniciLogin.KullaniciGetir2(kkadi.Text);
            if(ad.Text=="" || kkadi.Text == "" || ksifre.Text == "" || ksifre2.Text == "" || eposta.Text == "" || telefon.Text == "" )
            {
                hata2.Text = "Lütfen Tüm Alanları Doldurun";
            }
            else
            {
                if (dt.Rows.Count > 0)
                {
                    hata2.Text = "Kayıtlı Kullanıcı";
                }
                else
                {
                    if (ksifre.Text != ksifre2.Text)
                    {
                        hata2.Text = "Şifreler Aynı Değil";
                    }
                    else
                    {
                        bool hata = kullaniciLogin.KullaniciEkle(ad.Text, soyad.Text, kkadi.Text, ksifre.Text, eposta.Text, telefon.Text);
                        if (hata == false)
                        {
                            hata2.Text = "Kayıt Başarıyla Eklendi";
                        }
                        else
                        {
                            hata2.Text = "Kaydınız yapılamadı.";
                        }
                    }

                }
            }
        }
    }
}