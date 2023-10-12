using RezervEt.VeriBaglanti;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RezervEt
{
    public partial class index : System.Web.UI.Page
    {
        Bilgi bilgi = new Bilgi();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public string VeriGetirGenel(int a)
        {
            DataTable dt = new DataTable();
            dt = bilgi.AnaSayfa();
            return dt.Rows[0][a].ToString();
        }

        public string VeriGetirRestoran(int a, int b)
        {
            DataTable dt = new DataTable();
            dt = bilgi.RestoranGetir();

            return dt.Rows[a][b].ToString();
        }
    }
}