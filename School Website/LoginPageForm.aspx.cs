using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace School_Website
{
    public partial class LoginPageForm : System.Web.UI.Page
    {
        ConnectionDatabase DATA = new ConnectionDatabase();
        protected void Page_Load(object sender, EventArgs e)
        {
            lblsign.Visible = false;
        }

        protected void btnlogin_Click(object sender, EventArgs e)
        {

            if (DATA.IslogIn(txtUser.Text, txtpassword.Text) == true) {
                Response.Redirect("News.aspx");
            } else if (DATA.Isadmin(txtUser.Text, txtpassword.Text) == true) {
                Response.Redirect("Admin_page/AdminDashboard.aspx");
            }
            else {
                lblsign.Visible = true;
            }
        }
    }
}