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
    public partial class Process : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection sql = new SqlConnection(@"Data Source=DESKTOP-USUPQ43\SQLEXPRESS;Initial Catalog=form;Integrated Security=True");
            //SqlCommand cmd= new SqlCommand("select *from register ",sql)
        }
    }
}