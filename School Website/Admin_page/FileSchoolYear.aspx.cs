using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace School_Website.Admin_page
{
    public partial class FileSchoolYear : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
                grdSchoolYear.DataSourceID = "tblSchoolYear";
            
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {

        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {

        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {

        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {

        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            if (String.IsNullOrEmpty(txtSchoolYear.Text) || String.IsNullOrEmpty(txtStartDate.Text) || String.IsNullOrEmpty(txtEndDate.Text) || String.IsNullOrEmpty(txtStateSchoolYear.Text))
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
            else {
                tblSchoolYear.InsertParameters["SchoolYear"].DefaultValue = txtSchoolYear.Text;
                tblSchoolYear.InsertParameters["StartDate"].DefaultValue = txtStartDate.Text;
                tblSchoolYear.InsertParameters["EndDate"].DefaultValue = txtEndDate.Text;
                tblSchoolYear.InsertParameters["State"].DefaultValue = txtStateSchoolYear.Text;
                tblSchoolYear.Insert();
                grdSchoolYear.DataSourceID = "tblSchoolYear";
                grdSchoolYear.DataBind();
                ClearItems();
            }
}

        private void ClearItems() {
            txtEndDate.Text = String.Empty;
            txtSchoolYear.Text = String.Empty;
            txtStartDate.Text = String.Empty;
            txtStateSchoolYear.Text = String.Empty;

      }

        protected void txtSearchshoolYear_TextChanged(object sender, EventArgs e)
        {
            if (String.IsNullOrEmpty(txtSearchshoolYear.Text))
            {
                if (grdSchoolYear.DataSourceID.Equals("tblSchoolYear"))
                {
                    grdSchoolYear.DataSourceID = "tblSearchSchoolYear";
                    grdSchoolYear.DataBind();
                }
                else {
                    grdSchoolYear.DataSourceID = "tblSchoolYear";
                    grdSchoolYear.DataBind();
                }
            }
        }
    }
}