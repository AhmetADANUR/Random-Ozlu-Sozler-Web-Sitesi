using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Data;
using System.Collections.Generic;

namespace özlüsözler
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        List<string> liste = new List<string>();
        protected void Page_Load(object sender, EventArgs e)
        {
            

            OleDbConnection baglan = new OleDbConnection("Provider=Microsoft.jet.oledb.4.0; data source=" + Server.MapPath("App_Data/vt.mdb"));
            OleDbCommand komut = new OleDbCommand("Select * from sozler", baglan);
            baglan.Open();
            OleDbDataReader dr = komut.ExecuteReader();
            while (dr.Read())
            {
                liste.Add(dr["soz"].ToString());
            }
            baglan.Close();

            Random rastgele = new Random();
            int ras = rastgele.Next(0, liste.Count);
            Label1.Text = liste[ras].ToString();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Random rastgele = new Random();
            int ras = rastgele.Next(0, liste.Count);
            Label1.Text = liste[ras].ToString();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("ekle.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("sil.aspx");
        }
    }
}