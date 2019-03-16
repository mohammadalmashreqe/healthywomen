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
    public partial class AddArticle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataAccessLayer dal = DataAccessLayer.getConInstance();
            dal.Open();
            DataTable data = dal.SelectData("GetArticles", null);
            GridView1.DataSource = data;
            //GridView1.Columns[2].Visible = false;
            GridView1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DataAccessLayer dal = DataAccessLayer.getConInstance();
            dal.Open();
            SqlParameter[] p = new SqlParameter[3];
            p[0] = new SqlParameter("@_title", TextBox_title.Text);
            p[1] = new SqlParameter("@_text", TextBox_text.Text);
            p[2] = new SqlParameter("@_publishDate", DateTime.Now);
            if(dal.myExcute("insertArticle", p))
            {
            DataTable data= dal.SelectData("GetArticles", null);
                GridView1.DataSource = data;
                //GridView1.Columns[2].Visible = false;
                GridView1.DataBind();
            }
            else
            {
                Response.Redirect("error.aspx");
            }
         

        }
    }
}