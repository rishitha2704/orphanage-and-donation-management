using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;
public partial class managedonar : System.Web.UI.Page
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
    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        TextBox txtname = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox1");
        TextBox txtgender = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox2");
        TextBox txtaddress = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox3");
        TextBox txtphone = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox4");
        TextBox txtemail = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox5");
        TextBox txtoccupation = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox6");
        TextBox txtannincome = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox7");
        string donid = GridView1.DataKeys[e.RowIndex].Values[0].ToString();
        data();
        query = "update donardet set dname='" + txtname.Text + "',dgender='" + txtgender.Text + "',daddress='" + txtaddress.Text + "',dphno='" + txtphone.Text + "',demail='" + txtemail.Text + "',doccup='" + txtoccupation.Text + "',dincome='" + txtannincome.Text + "' where donid='" + donid + "'";
        SqlDataSource1.UpdateCommand = query;
        SqlDataSource1.Update();
        con.Close();
        GridView1.DataBind();
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        string donid = GridView1.DataKeys[e.RowIndex].Values[0].ToString();
        data();
        query = "delete from donardet where donid='" + donid + "'";
        SqlDataSource1.DeleteCommand = query;
        SqlDataSource1.Delete();
        con.Close();
        GridView1.DataBind();
    }
}