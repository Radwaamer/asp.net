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
    public partial class Log_in : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btn_log_Click(object sender, EventArgs e)
        {
            SqlConnection sql = new SqlConnection(@"Data Source=DESKTOP-USUPQ43\SQLEXPRESS;Initial Catalog=form;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("select *from register where mail = '" + TextBox5.Text + "' And pass = '" + TextBox6.Text + "'", sql);
            SqlDataAdapter data = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sql.Open();
            data.Fill(dt);
            GridView2.DataSource = dt;
            DataBind();
            sql.Close();
            //contact.Visible = false;
        }
    }
}