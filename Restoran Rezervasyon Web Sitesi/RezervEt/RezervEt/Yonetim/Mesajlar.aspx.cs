using RezervEt.VeriBaglanti;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using static System.Net.Mime.MediaTypeNames;

namespace RezervEt.Yonetim
{
    public partial class Mesajlar : System.Web.UI.Page
    {
        MesajGun mesaj =new MesajGun();
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
            mesaj.MesajGuncelle(Convert.ToInt32(GridView1.SelectedRow.Cells[1].Text));
            VeriGetir();
            GridView1.SelectedIndex = -1;
        }

        protected void GridView1_PageIndexChanged(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            VeriGetir();
        }

        void VeriGetir()
        {

            GridView1.DataSource = mesaj.MesajGoster();
            GridView1.DataBind();
        }
    }
}