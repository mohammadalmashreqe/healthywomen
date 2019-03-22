using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
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
            Button_Edit.Visible = false;
            Button_Delete.Visible = false;


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DataAccessLayer dal = DataAccessLayer.getConInstance();
            dal.Open();
            SqlParameter[] p = new SqlParameter[3];
            p[0] = new SqlParameter("@_title", TextBox_title.Text);
            p[1] = new SqlParameter("@_URL", TextBox_URL.Text);
            p[2] = new SqlParameter("@_publishDate", DateTime.Now);
            if (dal.myExcute("insertArticle", p))
            {
                DataTable data = dal.SelectData("GetArticles", null);
                GridView1.DataSource = data;
                //GridView1.Columns[2].Visible = false;
                GridView1.DataBind();
            }
            else
            {
                Response.Redirect("error.aspx");
            }


        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                e.Row.Attributes["onclick"] = Page.ClientScript.GetPostBackClientHyperlink(GridView1, "Select$" + e.Row.RowIndex);
                e.Row.ToolTip = "Click to select this row.";
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            foreach (GridViewRow row in GridView1.Rows)
            {
                if (row.RowIndex == GridView1.SelectedIndex)
                {
                    row.BackColor = ColorTranslator.FromHtml("#A1DCF2");
                    row.ToolTip = string.Empty;
                    Button_Delete.Visible = true;
                    Button_Edit.Visible = true;

                }
                else
                {
                    row.BackColor = ColorTranslator.FromHtml("#FFFFFF");
                    row.ToolTip = "Click to select this row.";
                }
                Button_Edit.Visible = true;
                Button_Delete.Visible = true;

            }
        }

        protected void Button_Edit_Click(object sender, EventArgs e)
        {
            if (GridView1.SelectedIndex != -1)
            {
                string id = GridView1.SelectedRow.Cells[0].Text;
                string title = GridView1.SelectedRow.Cells[1].Text;
                string url = GridView1.SelectedRow.Cells[2].Text;

                DataAccessLayer dal = DataAccessLayer.getConInstance();
                dal.Open();
                SqlParameter[] p = new SqlParameter[4];
                p[0] = new SqlParameter("@_id", id);
                p[1] = new SqlParameter("@_title", title);
                p[2] = new SqlParameter("@_URL", url);
                p[3] = new SqlParameter("@_publishDate", DateTime.Now);
                dal.myExcute("EditArticle", p);
            }
        }

        protected void Button_Delete_Click(object sender, EventArgs e)
        {
            if (GridView1.SelectedIndex != -1)
            {
                string id = GridView1.SelectedRow.Cells[0].Text;
                SqlParameter[] p = new SqlParameter[1];
                p[0] = new SqlParameter("@_id", id);
                DataAccessLayer dal = DataAccessLayer.getConInstance();
                dal.Open();
                dal.myExcute("DeleteArticle", p);

            }
        }
    }
}