using RezervEt.VeriBaglanti;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RezervEt.Yonetim
{
    public partial class RestaurantEkle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Yetki"] == null)
            {
                Response.Redirect("../default.aspx");

            }
        }
        RestoranlarGun restoranlar = new RestoranlarGun();

        static int a = -1;
        
        protected void Resim_Yukle(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
            {
                if (FileUpload1.PostedFile.ContentType == "image/jpeg" || FileUpload1.PostedFile.ContentType == "image/jpg" || FileUpload1.PostedFile.ContentType == "image/png")
                {
                    string resimAd = FileUpload1.FileName.ToString();
                    FileUpload1.SaveAs(Server.MapPath("~/images/" + resimAd));
                    lblLogo.Text = resimAd.ToString();
                    a = 1;
                }
                else
                {
                    lblLogo.Text = "Lütfen 'jpeg' , 'jpg' veya 'png' uzantılı resim seçin.";
                }
            }
            else
            {
                lblLogo.Text = "Lütfen bir resim seçin...";
            }
        }
        protected void Ekle_Click(object sender, EventArgs e)
        {
            DataTable dt = new DataTable();
            dt = restoranlar.RestoranGetir2(txtAd.Text);
            if (txtAd.Text == "" || txtMail.Text == "" || txtTel.Text == "" || txtDetay.Text == "" || a != 1)
            {
                lblHata.Text = "Lütfen Tüm Alanları Doldurun";
            }
            else
            {
                if (dt.Rows.Count > 0)
                {
                    lblHata.Text = "Zaten Bu İsme Sahip Bir Restoran Var...";
                }
                else
                {
                    bool hata = restoranlar.RestoranEkle(txtAd.Text, txtMail.Text, txtTel.Text, txtDetay.Text,"images/"+ lblLogo.Text);
                    if (hata == false)
                    {
                        lblHata.Text = "Kayıt Başarıyla Eklendi";
                    }
                    else
                    {
                        lblHata.Text = "Kaydınız yapılamadı.";
                    }

                }
            }
            Temizle();
        }
        void Temizle()
        {

            lblHata.Text = "";
            txtAd.Text = "";
            txtDetay.Text = "";
            txtMail.Text = "";
            txtTel.Text = "";
            lblLogo.Text = "";

        }

    }
}