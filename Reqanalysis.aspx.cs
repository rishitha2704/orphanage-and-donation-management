using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Windows.Forms;
public partial class Reqanalysis : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    string query;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    public void data()
    {
        string connstring = WebConfigurationManager.ConnectionStrings["connect"].ConnectionString;
        con = new SqlConnection(connstring);
        con.Open();
    }
    protected void dropinventory_SelectedIndexChanged(object sender, EventArgs e)
    {
        data();
        query = "select availnum,wannum from inventstock where invname='" + dropinventory.SelectedItem + "'";
        cmd = new SqlCommand(query, con);
        SqlDataReader rd = cmd.ExecuteReader();
        while (rd.Read())
        {
            lblavail.Text = rd[0].ToString();
            lblwanted.Text = rd[1].ToString();
        }
        rd.Close();
        con.Close();
    }
}