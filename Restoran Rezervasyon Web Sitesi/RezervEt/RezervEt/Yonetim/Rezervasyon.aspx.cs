using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using static System.Net.Mime.MediaTypeNames;
using RezervEt.VeriBaglanti;

namespace RezervEt.Yonetim
{
    public partial class Rezervasyon : System.Web.UI.Page
    {
        RezervasyonGun rezervasyon =new RezervasyonGun();
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

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            rezervasyon.RezervasyonGuncelle(Convert.ToInt32(GridView1.SelectedRow.Cells[1].Text));
            VeriGetir();
            Temizle();
        }
        protected void GridView1_PageIndexChanged(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            VeriGetir();
        }

        void VeriGetir()
        {

            GridView1.DataSource = rezervasyon.AdminRezervasyonGetir();
            GridView1.DataBind();
        }
        void Temizle()
        {
            GridView1.SelectedIndex = -1;
            aratxt.Text = "";
        }

        protected void ara_Click(object sender, EventArgs e)
        {
            if (aratxt.Text!="")
            {
                GridView1.DataSource = rezervasyon.RezervasyonAra(aratxt.Text);
                GridView1.DataBind();
            }
            else
            {
                VeriGetir();
            }
            
        }
    }
}