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
    public partial class Hakkimizda : System.Web.UI.Page
    {
        Bilgi bilgi = new Bilgi();
        
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        public string VeriGetir(int a)
        {
            DataTable dt = new DataTable();
            dt = bilgi.Hakkimda();
            return dt.Rows[0][a].ToString();
        }
    }
}