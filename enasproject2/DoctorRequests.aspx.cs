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
    public partial class DoctorRequests : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataAccessLayer dal = DataAccessLayer.getConInstance();
            dal.Open();
            DataTable data = dal.SelectData("DoctorRequest", null);
            GridView1.DataSource = data;

            GridView1.DataBind();

            Button1.Visible = false;

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
                    Button1.Visible = true;
                   
                }
                else
                {
                    row.BackColor = ColorTranslator.FromHtml("#FFFFFF");
                    row.ToolTip = "Click to select this row.";
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string email = GridView1.SelectedRow.Cells[0].Text;
            DataAccessLayer dal = DataAccessLayer.getConInstance();
            dal.Open();
            SqlParameter[] p = new SqlParameter[1];
            p[0] = new SqlParameter("@_Email", email);
            dal.myExcute("AcceptDoctor", p);


        }
    }
}