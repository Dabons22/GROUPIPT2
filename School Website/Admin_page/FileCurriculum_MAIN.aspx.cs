using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
namespace School_Website.Admin_page
{
    public partial class FileCurriculum_MAIN : System.Web.UI.Page
    {
        ConnectionDatabase DATA = new ConnectionDatabase();
         
        protected void Page_Load(object sender, EventArgs e)
        {
             GridView1S.Visible = true;
            lblsignWarning.Visible = false;
        }

        
        protected void txtSearch_TextChanged(object sender, EventArgs e)
        {
            if (!String.IsNullOrEmpty(txtSearch.Text))
            {
                if (GridView1S.DataSourceID.Equals("SqlDataSource1"))
                {
                    GridView1S.DataSourceID = "SqlDataSource2";
                    GridView1S.DataBind();
                }
            }
            else
            {
                GridView1S.DataSourceID = "SqlDataSource1";
                GridView1S.DataBind();
            } 

        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {

        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {

        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {

        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {

        }

        protected void txtState_TextChanged(object sender, EventArgs e)
        {

        }

        protected void txtState_TextChanged1(object sender, EventArgs e)
        {
            lblsignWarning.Visible = false;
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
        

            if (String.IsNullOrEmpty(txtActYear.Text) || String.IsNullOrEmpty(txtCurriculum.Text) || String.IsNullOrEmpty(txtDescription.Text) || String.IsNullOrEmpty(txtState.Text))
            {
                if (lblsignWarning.Visible == true)
                {
                    lblsignWarning.Visible = false;
                }
                else
                {
                    lblsignWarning.Visible = true;
                }
            }
            else
            {
                Page.MaintainScrollPositionOnPostBack = true;
                SqlDataSource1.InsertParameters["TitleOfCurriculum"].DefaultValue = txtCurriculum.Text;
                SqlDataSource1.InsertParameters["ActivatedYear"].DefaultValue = txtActYear.Text;
                SqlDataSource1.InsertParameters["Description"].DefaultValue = txtDescription.Text;
                SqlDataSource1.InsertParameters["State"].DefaultValue = txtState.Text;
                SqlDataSource1.Insert();
                GridView1S.DataSourceID = "SqlDataSource1";
                GridView1S.DataBind();
                clearItems();
                lblsignWarning.Visible = false;
            }
        }
        private void clearItems() {
            txtActYear.Text = String.Empty;
            txtCurriculum.Text = String.Empty;
            txtDescription.Text = String.Empty;
            txtState.Text = String.Empty;
        }
    }
}
