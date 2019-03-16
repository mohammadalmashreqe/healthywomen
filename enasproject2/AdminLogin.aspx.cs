using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace enasproject2
{
    public partial class AdminLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox_Email.Text == "admin" && TextBox_password.Text == "admin")
            {
                Session["islogged"] = true;
                Response.Redirect("AdminPanel.aspx");
            }
            else
                Response.Write("login faild try again");
        }
    }
}