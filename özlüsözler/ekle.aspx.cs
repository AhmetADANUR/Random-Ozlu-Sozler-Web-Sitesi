using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Data;
using System.Drawing;

namespace özlüsözler
{
    public partial class ekle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text == "")
            {
                Label2.Text = "LÜTFEN BOŞ ALAN BIRAKMAYIN!";
            }
            else
            {
                OleDbConnection baglan = new OleDbConnection("Provider=Microsoft.jet.oledb.4.0; data source=" + Server.MapPath("App_Data/vt.mdb"));
                OleDbCommand komut = new OleDbCommand("Insert Into sozler (soz) VALUES ('" +TextBox1.Text.ToString()+"')", baglan);
                baglan.Open();
                komut.ExecuteNonQuery();
                baglan.Close();
                Label2.ForeColor = Color.Green;
                Label2.Text = "KAYIT BAŞARLILI!";
                TextBox1.Text = "";
                
            }
        }
    }
}