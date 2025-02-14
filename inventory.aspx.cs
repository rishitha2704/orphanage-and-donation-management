using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Windows.Forms;
public partial class inventory : System.Web.UI.Page
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
    protected void Button1_Click(object sender, EventArgs e)
    {
        data();
        query = "insert into inventorymas(invname)values('" + txtcreateinvent.Text.ToUpper() + "')";
        cmd = new SqlCommand(query, con);
        cmd.ExecuteNonQuery();
        con.Close();
        data();
        query = "insert into inventstock(invname,availnum,wannum)values('" + txtcreateinvent.Text.ToUpper() + "',0,0)";
        cmd = new SqlCommand(query, con);
        cmd.ExecuteNonQuery();
        con.Close();
        txtcreateinvent.Text = "";
        GridView1.DataBind();
        dropinventory.DataBind();
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        int ava = Convert.ToInt32(txtavailnum.Text);
        int wan = Convert.ToInt32(txtwantednum.Text);
        data();
        query = "update inventstock set availnum=availnum+" + ava + ",wannum=wannum+" + wan + " where invname='" + dropinventory.SelectedItem + "'";
        cmd = new SqlCommand(query, con);
        cmd.ExecuteNonQuery();
        con.Close();
        txtwantednum.Text = "";
        txtavailnum.Text = "";
        GridView2.DataBind();
    }

    protected void dropinventory_SelectedIndexChanged(object sender, EventArgs e)
    {
        data();
        query = "select availnum,wannum from inventstock where invname='" + dropinventory.SelectedItem + "'";
        cmd = new SqlCommand(query, con);
        SqlDataReader rd = cmd.ExecuteReader();
        while (rd.Read())
        {
            txtavailnum.Text = rd[0].ToString();
            txtwantednum.Text = rd[1].ToString();
        }
        rd.Close();
        con.Close();
    }
}