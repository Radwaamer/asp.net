using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace form
{
    public partial class Register : System.Web.UI.Page
    {
        string gender;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_reg_Click(object sender, EventArgs e)
        {
            SqlConnection sql = new SqlConnection(@"Data Source=DESKTOP-USUPQ43\SQLEXPRESS;Initial Catalog=form;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("insert into register values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox7.Text + "','" + TextBox8.Text + "','" + TextBox9.Text + "','" + TextBox10.Text + "','" + TextBox11.Text + "','" + TextBox12.Text + "','"+gender+"')", sql);
            sql.Open();
            cmd.ExecuteNonQuery();
            sql.Close();
            Response.Redirect("Log in.aspx");
        }

        void clear()
        {
            TextBox1.Text = TextBox2.Text = TextBox3.Text = TextBox4.Text = TextBox5.Text = TextBox6.Text = TextBox7.Text = TextBox8.Text = TextBox9.Text = TextBox10.Text = TextBox11.Text = TextBox12.Text = gender = "";
            RadioButton1.Checked = false;
            RadioButton2.Checked = false;
        }

        protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
        {
            gender = "Male";
        }

        protected void RadioButton2_CheckedChanged(object sender, EventArgs e)
        {
            gender = "Female";
        }

        protected void btn_update_Click(object sender, EventArgs e)
        {
            SqlConnection sql = new SqlConnection(@"Data Source=DESKTOP-USUPQ43\SQLEXPRESS;Initial Catalog=form;Integrated Security=True");
            SqlCommand cmd= new SqlCommand("update register set fname = '"+ TextBox1.Text + "' , lname = '"+ TextBox2.Text + "' , age = '"+ TextBox3.Text + "' , city = '"+TextBox4.Text+"', mail = '"+ TextBox5.Text + "', pass = '"+ TextBox6.Text + "', phone = '"+ TextBox7.Text + "',lang = '"+ TextBox8.Text + "', adb = '"+ TextBox9.Text + "', html = '"+ TextBox10.Text + "', js = '"+ TextBox11.Text + "', php = '"+ TextBox12.Text + "',gender = '"+gender+"' where mail = '"+ TextBox5.Text + "' And pass = '"+ TextBox6.Text + "'", sql);
            sql.Open();
            cmd.ExecuteNonQuery();
            sql.Close();
            Response.Write("<Script> alert ('Updated Successfuly') </Script>");
            clear();
        }

        protected void btn_fill_Click(object sender, EventArgs e)
        {
            SqlConnection sql = new SqlConnection(@"Data Source=DESKTOP-USUPQ43\SQLEXPRESS;Initial Catalog=form;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("select *from register where mail = '" + TextBox5.Text + "' And pass = '" + TextBox6.Text + "'", sql);
            SqlDataAdapter data = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sql.Open();
            data.Fill(dt);
            TextBox1.Text = dt.Rows[0][0].ToString();
            TextBox2.Text = dt.Rows[0][1].ToString();
            TextBox3.Text = dt.Rows[0][2].ToString();
            TextBox4.Text = dt.Rows[0][3].ToString();
            TextBox5.Text = dt.Rows[0][4].ToString();
            TextBox6.Text = dt.Rows[0][5].ToString();
            TextBox7.Text = dt.Rows[0][6].ToString();
            TextBox8.Text = dt.Rows[0][7].ToString();
            TextBox9.Text = dt.Rows[0][8].ToString();
            TextBox10.Text = dt.Rows[0][9].ToString();
            TextBox11.Text = dt.Rows[0][10].ToString();
            TextBox12.Text = dt.Rows[0][11].ToString();
            gender = dt.Rows[0][12].ToString();
            if(gender == "Male")
            {
                RadioButton1.Checked = true;
            }
            else
            {
                RadioButton2.Checked = true;
            }
            DataBind();
            sql.Close();
        }
    }
}