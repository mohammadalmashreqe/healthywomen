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
    public partial class ContactwithDoctor : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] == null)
            {

                Response.Redirect("Home.aspx");
            }
            else
            {
                if (!IsPostBack)
                {
                    DataAccessLayer dal = DataAccessLayer.getConInstance();
                    dal.Open();
                    DataTable dt = dal.SelectData("GetAllDoctors", null);
                    Repeater1.DataSource = dt;

                    Repeater1.DataBind();
                }
            }
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {
           
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DataAccessLayer dal = DataAccessLayer.getConInstance();
            dal.Open();
            SqlParameter[] sqlparamater = new SqlParameter[1];
            sqlparamater[0] = new SqlParameter("@param", TextBox1.Text);
           DataTable dt = dal.SelectData("SerchDoctor", sqlparamater);
            Repeater1.DataSource = dt;

            Repeater1.DataBind();
        }
    }
}