using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace enasproject2
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
     protected void  But_login(object sender, EventArgs e)
        {
            string email = TextBox_Email.Value;
            string password = TextBox_password.Value;

            DataAccessLayer dal = DataAccessLayer.getConInstance();
            dal.Open();
            SqlParameter[] p = new SqlParameter[2];
            p[0] = new SqlParameter("@_Email", email);
            p[1] = new SqlParameter("@_password", password);

            DataTable dt = dal.SelectData("myLogin", p);
            if (dt.Rows.Count > 0)
            {
                Response.Redirect("Default.aspx");
            }

        }
    }
}