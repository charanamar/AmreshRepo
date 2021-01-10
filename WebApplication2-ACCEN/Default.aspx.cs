using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace WebApplication2_ACCEN
{
    public partial class _Default : System.Web.UI.Page
    {
        DataTable dt = null;
        SqlCommand cmd = null;
        SqlDataAdapter da = null;
        SqlConnection con = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack)
            {

            }
            else
            {
                con = new SqlConnection(ConfigurationManager.ConnectionStrings["AmreshDatabaseConnectionString"].ToString());
                con.Open();
                cmd = new SqlCommand("select * from employee", con);
                da = new SqlDataAdapter(cmd);
                dt = new DataTable();
                da.Fill(dt);
                GridView1.DataSource = dt;
                GridView1.DataBind();
                ViewState["gridData"] = dt;
                con.Close();
            }
        }

        //protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        //{
        //    GridView1.PageIndex = e.NewPageIndex;
        //    //GridView1.DataSource = (DataTable)ViewState["gridData"];
        //    //GridView1.DataBind();
        //}
    }
}
