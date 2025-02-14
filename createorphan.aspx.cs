using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Windows.Forms;
public partial class createorphan : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    string query,gender;
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
        if (RadioButton1.Checked == true)
        {
            gender = "male";
        }
        else
        {
            gender = "female";
        }
        data();
        query = "insert into orphandet(orpid,orname,age,gender,dob,gname,goccup,gage,gaddress,gphno,gemail,doj)values('" + txtorphanid.Text + "','" + txtorphanname.Text + "','" + txtage.Text + "','" + gender + "','" + txtdob.Text + "','" + txtguname.Text + "','" + txtguoccu.Text + "','" + txtguage.Text + "','" + txtguaddress.Text + "','" + txtguphone.Text + "','" + txtguemail.Text + "','" + txtdoj.Text + "')";
        cmd = new SqlCommand(query, con);
        cmd.ExecuteNonQuery();
        con.Close();
        MessageBox.Show("Orphan Created!!!");
        Response.Redirect("createorphan.aspx");
    }
    protected void txtorphanid_TextChanged(object sender, EventArgs e)
    {
        data();
        query = "select orpid from orphandet where orpid='" + txtorphanid.Text + "'";
        cmd = new SqlCommand(query, con);
        SqlDataReader rd = cmd.ExecuteReader();
        if (rd.Read())
        {
            lblerr.Visible = true;
            Button1.Enabled = false;
        }
        else
        {
            lblerr.Visible = false;
            Button1.Enabled = true;
        }
        rd.Close();
        con.Close();
    }
}