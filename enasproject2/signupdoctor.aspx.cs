using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace enasproject2
{
    public partial class signupdoctor : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            string firstname = TextBox_FirstName.Text;
            string lastname = TextBox_lastName.Text;
            string password = TextBox_password.Text;
            string facebook = TextBox_facebook.Text;
            string Specialization = TextBox_Specialization.Text;
            string email = TextBox_Email.Text;
            string phoneNumber = TextBox_phonenumber.Text;
            DataAccessLayer dal = DataAccessLayer.getConInstance();
            dal.Open();
            SqlParameter[] p = new SqlParameter[7];
            p[0] = new SqlParameter("@_Email", email);
            p[1] = new SqlParameter("@_facebook", facebook);
            p[2] = new SqlParameter("@_FirstName", firstname);
            p[3] = new SqlParameter("@_LastName", lastname);
            p[4] = new SqlParameter("@_Password", password);
            p[5] = new SqlParameter("@_phoneNumber", phoneNumber);
            p[6] = new SqlParameter("@_Specialization", Specialization);

            if (dal.myExcute("signupDoctor", p))
            {
              
                Response.Redirect("error.aspx");
            }
        }
    }
}