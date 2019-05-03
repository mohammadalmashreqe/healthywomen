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
            if (Session["username"] == null)
            {

                Response.Redirect("Home.aspx");
              
            }
            h1res.Visible = false;
            h2roc.Visible = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
     
            double w =double.Parse(TextBox_weight.Text);
          
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


          Label_roc.Text= "<ol><li> Have 1/4 to 1/2cupo fnuts everyday </li>"+
                "<li> Limitlow - caloriebeverages,suchasdietdrinks,andreplacewithmilk,smoothiesorjuice</li>"+
"<li> Eatingfruits </li>"+ "<li>eatinghealthy </li>"+"<li>drinkwater</li> <li> Eatmorethan3mealsaday</li><li> Eatmeat</li>";

            h1res.Visible = true;
            h2roc.Visible = true; 
        }

    }
}