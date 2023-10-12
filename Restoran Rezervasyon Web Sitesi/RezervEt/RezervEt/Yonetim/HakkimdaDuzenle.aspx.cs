using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using RezervEt.VeriBaglanti;

namespace RezervEt.Yonetim
{
    public partial class HakkimdaDuzenleSil : System.Web.UI.Page
    {
        Bilgi bilgi = new Bilgi();
        HakkimdaGun hakkimda = new HakkimdaGun();

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
        protected void Guncelle(object sender, EventArgs e)
        {
            hakkimda.HakkimdaGuncelle(baslik1a.Text, baslik1b.Text, baslik2a.Text, baslik2b.Text, aciklama1.Text, aciklama2.Text, lblLogo.Text, lblLogo2.Text);
            
            VeriGetir();
        }

        public void VeriGetir()
        {
            DataTable dt = new DataTable();
            dt = bilgi.Hakkimda();

            baslik1a.Text = dt.Rows[0][1].ToString();
            baslik1b.Text = dt.Rows[0][2].ToString();
            baslik2c.Text = dt.Rows[0][2].ToString();
            baslik2a.Text = dt.Rows[0][3].ToString();
            baslik2b.Text = dt.Rows[0][4].ToString();
            aciklama1.Text = dt.Rows[0][5].ToString();
            aciklama2.Text = dt.Rows[0][6].ToString();

            Image1.ImageUrl = "../" + dt.Rows[0][7].ToString();
            lblLogo.Text = dt.Rows[0][7].ToString();
            Image2.ImageUrl = "../" + dt.Rows[0][8].ToString();
            lblLogo2.Text = dt.Rows[0][8].ToString();
        }


        protected void Resim_Yukle(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
            {
                if (FileUpload1.PostedFile.ContentType == "image/jpeg" || FileUpload1.PostedFile.ContentType == "image/jpg" || FileUpload1.PostedFile.ContentType == "image/png")
                {
                    string resimAd = FileUpload1.FileName.ToString();
                    FileUpload1.SaveAs(Server.MapPath("~/images/" + resimAd));
                    lblLogo.Text = "images/" + resimAd.ToString();

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

        protected void Resim_Yukle2(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
            {
                if (FileUpload2.PostedFile.ContentType == "image/jpeg" || FileUpload2.PostedFile.ContentType == "image/jpg" || FileUpload2.PostedFile.ContentType == "image/png")
                {
                    string resimAd = FileUpload2.FileName.ToString();
                    FileUpload2.SaveAs(Server.MapPath("~/images/" + resimAd));
                    lblLogo2.Text = "images/" + resimAd.ToString();

                }
                else
                {
                    lblLogo2.Text = "Lütfen 'jpeg' , 'jpg' veya 'png' uzantılı resim seçin.";
                }
            }
            else
            {
                lblLogo2.Text = "Lütfen bir resim seçin...";
            }
        }


    }
}