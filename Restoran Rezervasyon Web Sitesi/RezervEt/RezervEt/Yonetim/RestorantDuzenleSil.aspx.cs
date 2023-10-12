using RezervEt.VeriBaglanti;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using static System.Net.Mime.MediaTypeNames;

namespace RezervEt.Yonetim
{
    public partial class RestaurantEkleSil : System.Web.UI.Page
    {
        Baglan b = new Baglan();
        RestoranlarGun restoranlar = new RestoranlarGun();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Yetki"] == null)
            {
                Response.Redirect("../default.aspx");

            }
            VeriGetir();
        }
        protected void Guncelle(object sender, EventArgs e)
        {
            restoranlar.RestoranGuncelle(lblId.Text, txtAd.Text, txtMail.Text, txtTel.Text, txtDetay.Text, "images/"+lblLogo.Text);
            VeriGetir();
        }
        protected void Sil(object sender, EventArgs e)
        {
            restoranlar.RestoranSil(Convert.ToInt32(lblId.Text));
            VeriGetir();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            
            lblId.Text = GridView1.SelectedRow.Cells[1].Text;
            txtAd.Text = HttpUtility.HtmlDecode(GridView1.SelectedRow.Cells[2].Text.ToString());
            txtMail.Text = HttpUtility.HtmlDecode(GridView1.SelectedRow.Cells[3].Text.ToString());
            txtTel.Text = HttpUtility.HtmlDecode(GridView1.SelectedRow.Cells[4].Text.ToString());
            txtDetay.Text = HttpUtility.HtmlDecode(GridView1.SelectedRow.Cells[5].Text.ToString());
            lblLogo.Text = HttpUtility.HtmlDecode(GridView1.SelectedRow.Cells[6].Text.ToString());
            

        }
        protected void GridView1_PageIndexChanged(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            VeriGetir();
        }

        protected void Resim_Yukle(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
            {
                if (FileUpload1.PostedFile.ContentType == "image/jpeg" || FileUpload1.PostedFile.ContentType == "image/jpg" || FileUpload1.PostedFile.ContentType == "image/png")
                {
                    string resimAd = FileUpload1.FileName.ToString();
                    FileUpload1.SaveAs(Server.MapPath("~/images/" + resimAd));
                    lblLogo.Text = resimAd.ToString();
                    
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


        protected void VeriGetir()
        {
            GridView1.DataSource = restoranlar.RestoranGoster();
            GridView1.DataBind();
        }
        

    }
}