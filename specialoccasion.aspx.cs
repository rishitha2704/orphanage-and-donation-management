﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Windows.Forms;
public partial class specialoccasion : System.Web.UI.Page
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
        query = "insert into occasiondet(occname)values('" + txtcreateoccasion.Text.ToUpper() + "')";
        cmd = new SqlCommand(query, con);
        cmd.ExecuteNonQuery();
        con.Close();
        txtcreateoccasion.Text = "";
        GridView1.DataBind();
        DropDownList1.DataBind();
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        data();
        query = "insert into occneed(occname,occdet,cdate)values('" + DropDownList1.SelectedItem + "','" + txtrequirements.Text + "','" + System.DateTime.Today.ToShortDateString() + "')";
        cmd = new SqlCommand(query, con);
        cmd.ExecuteNonQuery();
        con.Close();
        txtrequirements.Text = "";
        GridView2.DataBind();
    }
    protected void GridView2_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        string occdet = GridView2.DataKeys[e.RowIndex].Values[0].ToString();
        data();
        query = "delete from occneed where occdet='" + occdet + "'";
        SqlDataSource2.DeleteCommand = query;
        SqlDataSource2.Delete();
        con.Close();
        GridView2.DataBind();

    }
}