using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Windows.Forms;
public partial class accounts : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    string query,dtype;
    protected void Page_Load(object sender, EventArgs e)
    {
        lbldate.Text = System.DateTime.Today.ToShortDateString();
    }
    public void data()
    {
        string connstring = WebConfigurationManager.ConnectionStrings["connect"].ConnectionString;
        con = new SqlConnection(connstring);
        con.Open();
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        data();
        query = "select dname from donardet where donid='" + dropdonar.SelectedItem + "'";
        cmd = new SqlCommand(query, con);
        SqlDataReader rd = cmd.ExecuteReader();
        while (rd.Read())
        {
            lblname.Text = rd[0].ToString();
        }
        rd.Close();
        con.Close();
    }
    protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
    {
        Panel1.Visible = true;
        Panel2.Visible = false;
    }
    protected void RadioButton2_CheckedChanged(object sender, EventArgs e)
    {
        Panel1.Visible = false;
        Panel2.Visible = true;
    }
    protected void dropinv_SelectedIndexChanged(object sender, EventArgs e)
    {
        data();
        query = "select wannum from inventstock where invname='" + dropinv.SelectedItem + "'";
        cmd = new SqlCommand(query, con);
        SqlDataReader rd = cmd.ExecuteReader();
        while (rd.Read())
        {
            lblwantednum.Text = rd[0].ToString();
        }
        rd.Close();
        con.Close();
    }
    int availnum,donatenum,wantnum;
    int final_avail, final_want;
    int donateamt;
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (RadioButton1.Checked == true)
        {
            dtype = "Cash";
        }
        else
        {
            dtype = "Product";
        }

        if (RadioButton2.Checked == true)
        {
            data();
            query = "select availnum from inventstock where invname='" + dropinv.SelectedItem + "'";
            cmd = new SqlCommand(query, con);
            SqlDataReader rd = cmd.ExecuteReader();
            while (rd.Read())
            {
                availnum = Convert.ToInt32(rd[0]);
            }
            rd.Close();
            con.Close();
            wantnum = Convert.ToInt32(lblwantednum.Text);
            donatenum = Convert.ToInt32(txtnodonation.Text);
            final_avail = availnum + donatenum;
            final_want = wantnum - donatenum;
            //stock updation
            data();
            query = "update inventstock set availnum=" + final_avail + ",wannum=" + final_want + " where invname='" + dropinv.SelectedItem + "'";
            cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();
            con.Close();
        }
        if (RadioButton1.Checked == true)
        {
            donateamt = Convert.ToInt32(txtdonamt.Text);
            //for accounts
            data();
            query = "select cdate from accdet where cdate='" + System.DateTime.Today.ToShortDateString() + "'";
            cmd = new SqlCommand(query, con);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                data();
                query = "update accdet set amt=amt+" + donateamt + " where cdate='" + System.DateTime.Today.ToShortDateString() + "'";
                cmd = new SqlCommand(query, con);
                cmd.ExecuteNonQuery();
                con.Close();
            }
            else
            {
                data();
                query = "insert into accdet(cdate,amt)values('" + lbldate.Text + "'," + txtdonamt.Text + ")";
                cmd = new SqlCommand(query, con);
                cmd.ExecuteNonQuery();
                con.Close();
            }
        }
        //for accountdetails
        data();
        query = "insert into accountsdetails(donid,dname,cdate,dtype,c_damt,c_cheqno,c_bankdet,p_invname,p_wannum,p_donum)values('" + dropdonar.SelectedItem + "','" + lblname.Text + "','" + lbldate.Text + "','" + dtype + "'," + txtdonamt.Text + ",'" + txtchequenum.Text + "','" + txtbank.Text + "','" + dropinv.SelectedItem + "'," + lblwantednum.Text + "," + txtnodonation.Text + ")";
        cmd = new SqlCommand(query, con);
        cmd.ExecuteNonQuery();
        con.Close();
        GridView1.DataBind();
        GridView2.DataBind();
        MessageBox.Show("Accounts Added");
        Response.Redirect("accounts.aspx");
    }
}