using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace enasproject2
{
    public partial class AdminPanel : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           /* try
            {
                if (!bool.Parse(Session["islogged"].ToString()))
                    Response.Redirect("AdminLogin.aspx");
            }
            catch
            {

                Response.Redirect("AdminLogin.aspx");
            }*/
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddArticle.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("DoctorRequests.aspx");
        }
    }
}