using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;
public partial class manageorphan : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    string query;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            GridView1.DataBind();
        }
    }
    public void data()
    {
        string connstring = WebConfigurationManager.ConnectionStrings["connect"].ConnectionString;
        con = new SqlConnection(connstring);
        con.Open();
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        string orpid = GridView1.DataKeys[e.RowIndex].Values[0].ToString();
        data();
        query = "delete from orphandet where orpid='" + orpid + "'";
        SqlDataSource1.DeleteCommand = query;
        SqlDataSource1.Delete();
        con.Close();
        GridView1.DataBind();
    }
    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        TextBox txtname = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox1");
        TextBox txtage = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox2");
        TextBox txtgender = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox3");
        TextBox txtdob = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox4");
        TextBox txtgname = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox5");
        TextBox txtgoccup = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox6");
        TextBox txtgage = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox7");
        TextBox txtgaddress = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox8");
        TextBox txtgphno = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox9");
        TextBox txtgemail = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox10");
        TextBox txtgdoj = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox11");
        string orpid = GridView1.DataKeys[e.RowIndex].Values[0].ToString();
        data();
        query = "update orphandet set orname='" + txtname.Text + "',age='" + txtage.Text + "',gender='" + txtgender.Text + "',dob='" + txtdob.Text + "',gname='" + txtgname.Text + "',goccup='" + txtgoccup.Text + "',gage='" + txtgage.Text + "',gaddress='" + txtgaddress.Text + "',gphno='" + txtgphno.Text + "',gemail='" + txtgemail.Text + "',doj='" + txtgdoj.Text + "' where orpid='" + orpid + "'";
        SqlDataSource1.UpdateCommand = query;
        SqlDataSource1.Update();
        con.Close();
        GridView1.DataBind();
    }
}