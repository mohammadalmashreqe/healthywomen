using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace enasproject2
{
    public partial class Calorie_calculator : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int age = int.Parse(TextBox_Age.Text);
            double w =double.Parse(TextBox_weight.Text);
            double h = double.Parse(TextBox_height.Text);
          if(DropDownList1.SelectedIndex==0)
            {
                Label_result.Text ="Result = "+ w * 24 * 1.3+"";
            }

          else 
                if(DropDownList1.SelectedIndex==1)
            {
                Label_result.Text = "Result = " + w * 24 * 1.4 + "";

            }
          else
                Label_result.Text = "Result = " + w * 24 * 1.5 + "";


        }
    }
}