using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace enasproject2
{
    public partial class Date_of_birth : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            DateTime d= Calendar1.SelectedDate;
            
         
            
            Label1.Text = "Result : " + d.AddDays(280).ToShortDateString();
        }
    }
}