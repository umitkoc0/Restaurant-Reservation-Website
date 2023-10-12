using RezervEt.VeriBaglanti;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RezervEt
{
    public partial class Restaurantlar : System.Web.UI.Page
    {
        Bilgi bilgi = new Bilgi();
        
        


        protected void Page_Load(object sender, EventArgs e)
        {
            DataTable dt = new DataTable();
            dt = bilgi.RestoranGetir();
            DataList1.DataSource = dt;
            DataList1.DataBind();
        }
        protected void text_TextChanged(object sender, EventArgs e)
        {
            
            DataTable dt = new DataTable();
            dt = bilgi.Ara(ara.Text);
            DataList1.DataSource = dt;
            DataList1.DataBind();
        }

        protected void DataList1Command(object sender, DataListCommandEventArgs e)
        {
            if (e.CommandName.ToString() == "git")
            {
                Session["Restorant"]=(e.CommandArgument.ToString());
                Response.Redirect("Rezervasyon.aspx");
            }
        }
    }
}