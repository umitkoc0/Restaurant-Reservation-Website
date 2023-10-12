using RezervEt.VeriBaglanti;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Reflection;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace RezervEt.Yonetim
{
    public partial class IletisimDuzenleSil : System.Web.UI.Page
    {
        Bilgi bilgi = new Bilgi();
        IletisimGun iletisim = new IletisimGun();
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
            

            iletisim.IletisimGuncelle(adres.Text, adresLink.Text, eposta.Text, telefon.Text, facebook.Text, instagram.Text, twitter.Text, linkedin.Text, googleMap.Text);

            VeriGetir();
        }


        public void VeriGetir()
        {
            DataTable dt = new DataTable();
            dt = bilgi.SiteGenel();

            adres.Text = dt.Rows[0][4].ToString();
            adresLink.Text = dt.Rows[0][20].ToString();
            eposta.Text = dt.Rows[0][5].ToString();
            telefon.Text = dt.Rows[0][6].ToString();
            facebook.Text = dt.Rows[0][7].ToString();
            instagram.Text = dt.Rows[0][8].ToString();
            twitter.Text = dt.Rows[0][9].ToString();
            linkedin.Text = dt.Rows[0][10].ToString();
            googleMap.Text = dt.Rows[0][11].ToString();

        }

        
    }
}