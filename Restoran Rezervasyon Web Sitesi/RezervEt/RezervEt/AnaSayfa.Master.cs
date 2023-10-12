using RezervEt.VeriBaglanti;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Security.AccessControl;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RezervEt
{
    public partial class AnaSayfa : System.Web.UI.MasterPage
    {
        


        Bilgi bilgi = new Bilgi();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Kullanici"] == null)
            {
                rezerv.Visible = true;
                hesap.Visible = false;
                cks.Visible = false;
            }
            else
            {
                hesap.Visible = true;
                hesap.Text = "<ion-icon name=\"person-outline\"></ion-icon><span>" + Session["Kullanici"].ToString() + "</span>";
                cks.Visible = true;
                rezerv.Visible = false;
            }


        }

        protected void cks_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("default.aspx");
        }
        protected void hesap_Click(object sender, EventArgs e)
        {
            Response.Redirect("Hesap.aspx");
        }

        public string VeriGetir(int a)
        {
            DataTable dt = new DataTable();
            dt = bilgi.SiteGenel();
            return dt.Rows[0][a].ToString();
        }



    }
}