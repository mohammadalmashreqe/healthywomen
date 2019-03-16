using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace enasproject2
{
    public partial class signup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string firstname = TextBox_FirstName.Text;
            string lastname = TextBox_lastName.Text;
            string password = TextBox_password.Text;
            string age = TextBox_Age.Text;

            string email = TextBox_Email.Text;
            string phoneNumber = TextBox_phonenumber.Text;
            DataAccessLayer dal = DataAccessLayer.getConInstance();
            dal.Open();
            SqlParameter[] p = new SqlParameter[6];
            p[0] = new SqlParameter("@_Email", email);
            p[1] = new SqlParameter("@_Age", age);
            p[2] = new SqlParameter("@_FirstName", firstname);
            p[3] = new SqlParameter("@_LastName", lastname);
            p[4] = new SqlParameter("@_Password", password);
            p[5] = new SqlParameter("@_phoneNumber", phoneNumber);

            if(dal.myExcute("signUp", p))
            {
                //لازم اقله انه عمل بنجاح 
                Response.Write("<script>alert('signup successful');</script>");
                Response.Redirect("Login.aspx");
            }
           







        }

        protected void Button1_Click1(object sender, EventArgs e)
        {

        }
    }
}