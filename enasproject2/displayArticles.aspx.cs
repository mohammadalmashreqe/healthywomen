using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace enasproject2
{
    public partial class displayArticles : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataAccessLayer dal = DataAccessLayer.getConInstance();
            dal.Open();
          DataTable dt=  dal.SelectData("GetArticles", null);
            GridView1.DataSource = dt;
            GridView1.DataBind();

        }
    }
}