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
    public partial class _default : System.Web.UI.Page
    {
        Bilgi bilgi = new Bilgi();
        AnaSayfaGun anasayfa = new AnaSayfaGun();
        SiteGenelGun sitegenel = new SiteGenelGun();
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
            sitegenel.SiteGenelGuncelle(fotolbl1.Text, baslik1.Text, metin4.Text, menu1.Text, menu2.Text, menu3.Text, menu4.Text, link1.Text, link2.Text, link3.Text, link4.Text);

            anasayfa.AnaSayfaGuncelle(baslik1.Text, baslik2.Text, baslik4.Text, metin1.Text, metin2.Text, metin3.Text, fotolbl2.Text, fotolbl3.Text, fotolbl4.Text);

            VeriGetir();
        }

        public void VeriGetir()
        {
            DataTable dt = new DataTable();
            dt = bilgi.SiteGenel();

            Image1.ImageUrl = "../" + dt.Rows[0][1].ToString();
            fotolbl1.Text = dt.Rows[0][1].ToString();
            menu1.Text = dt.Rows[0][12].ToString();
            menu2.Text = dt.Rows[0][13].ToString();
            menu3.Text = dt.Rows[0][14].ToString();
            menu4.Text = dt.Rows[0][15].ToString();
            link1.Text = dt.Rows[0][16].ToString();
            link2.Text = dt.Rows[0][17].ToString();
            link3.Text = dt.Rows[0][18].ToString();
            link4.Text = dt.Rows[0][19].ToString();
            metin4.Text = dt.Rows[0][3].ToString();

            dt = bilgi.AnaSayfa();
            baslik1.Text = dt.Rows[0][1].ToString();
            baslik2.Text = dt.Rows[0][2].ToString();
            baslik3.Text = dt.Rows[0][1].ToString();
            baslik4.Text = dt.Rows[0][3].ToString();
            metin1.Text = dt.Rows[0][4].ToString();
            metin2.Text = dt.Rows[0][5].ToString();
            metin3.Text = dt.Rows[0][6].ToString();


            Image2.ImageUrl = "../" + dt.Rows[0][7].ToString();
            fotolbl2.Text = dt.Rows[0][7].ToString();
            Image3.ImageUrl = "../" + dt.Rows[0][8].ToString();
            fotolbl3.Text = dt.Rows[0][8].ToString();
            Image4.ImageUrl = "../" + dt.Rows[0][9].ToString();
            fotolbl4.Text = dt.Rows[0][9].ToString();
        }

        protected void Resim_Yukle(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
            {
                if (FileUpload1.PostedFile.ContentType == "image/jpeg" || FileUpload1.PostedFile.ContentType == "image/jpg" || FileUpload1.PostedFile.ContentType == "image/png")
                {
                    string resimAd = FileUpload1.FileName.ToString();
                    FileUpload1.SaveAs(Server.MapPath("~/images/" + resimAd));
                    fotolbl1.Text = "images/" + resimAd.ToString();

                }
                else
                {
                    fotolbl1.Text = "Lütfen 'jpeg' , 'jpg' veya 'png' uzantılı resim seçin.";
                }
            }
            else
            {
                fotolbl1.Text = "Lütfen bir resim seçin...";
            }
        }

        protected void Resim_Yukle2(object sender, EventArgs e)
        {
            if (FileUpload2.HasFile)
            {
                if (FileUpload2.PostedFile.ContentType == "image/jpeg" || FileUpload2.PostedFile.ContentType == "image/jpg" || FileUpload2.PostedFile.ContentType == "image/png")
                {
                    string resimAd = FileUpload2.FileName.ToString();
                    FileUpload2.SaveAs(Server.MapPath("~/images/" + resimAd));
                    fotolbl2.Text = "images/" + resimAd.ToString();

                }
                else
                {
                    fotolbl2.Text = "Lütfen 'jpeg' , 'jpg' veya 'png' uzantılı resim seçin.";
                }
            }
            else
            {
                fotolbl2.Text = "Lütfen bir resim seçin...";
            }
        }

        protected void Resim_Yukle3(object sender, EventArgs e)
        {
            if (FileUpload3.HasFile)
            {
                if (FileUpload3.PostedFile.ContentType == "image/jpeg" || FileUpload3.PostedFile.ContentType == "image/jpg" || FileUpload3.PostedFile.ContentType == "image/png")
                {
                    string resimAd = FileUpload3.FileName.ToString();
                    FileUpload1.SaveAs(Server.MapPath("~/images/" + resimAd));
                    fotolbl3.Text = "images/" + resimAd.ToString();

                }
                else
                {
                    fotolbl3.Text = "Lütfen 'jpeg' , 'jpg' veya 'png' uzantılı resim seçin.";
                }
            }
            else
            {
                fotolbl3.Text = "Lütfen bir resim seçin...";
            }
        }

        protected void Resim_Yukle4(object sender, EventArgs e)
        {
            if (FileUpload4.HasFile)
            {
                if (FileUpload4.PostedFile.ContentType == "image/jpeg" || FileUpload4.PostedFile.ContentType == "image/jpg" || FileUpload4.PostedFile.ContentType == "image/png")
                {
                    string resimAd = FileUpload4.FileName.ToString();
                    FileUpload2.SaveAs(Server.MapPath("~/images/" + resimAd));
                    fotolbl4.Text = "images/" + resimAd.ToString();

                }
                else
                {
                    fotolbl4.Text = "Lütfen 'jpeg' , 'jpg' veya 'png' uzantılı resim seçin.";
                }
            }
            else
            {
                fotolbl4.Text = "Lütfen bir resim seçin...";
            }
        }

    }
}