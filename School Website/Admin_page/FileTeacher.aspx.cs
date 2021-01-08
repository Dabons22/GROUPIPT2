using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace School_Website.Admin_page
{
    public partial class FileTeacher : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            grdTeacher.DataSourceID = "tblTeacher";
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            if (String.IsNullOrEmpty(txtTeacherID.Text)||String.IsNullOrEmpty(txtLastName.Text)|| String.IsNullOrEmpty(txtFirstName.Text) || String.IsNullOrEmpty(txtContact.Text) || String.IsNullOrEmpty(txtEmail.Text) || String.IsNullOrEmpty(txtPrcid.Text) || String.IsNullOrEmpty(txtProfessionalQualification.Text) || String.IsNullOrEmpty(txtMajorSubject.Text) || String.IsNullOrEmpty(txtMinorSubject.Text) )
            {
                if (lblsignWarning.Visible == true)
                {
                    lblsignWarning.Visible = false;
                }
                else {
                    lblsignWarning.Visible = true;
                }
            }
            else {
                Page.MaintainScrollPositionOnPostBack = true;
                tblTeacher.InsertParameters["TeacherID"].DefaultValue = txtTeacherID.Text;
                tblTeacher.InsertParameters["LastName"].DefaultValue = txtLastName.Text;
                tblTeacher.InsertParameters["FirstName"].DefaultValue = txtFirstName.Text;
                tblTeacher.InsertParameters["ContactNo"].DefaultValue = txtContact.Text;
                tblTeacher.InsertParameters["Email"].DefaultValue = txtEmail.Text;
                tblTeacher.InsertParameters["PRCID"].DefaultValue = txtPrcid.Text;
                tblTeacher.InsertParameters["ProfessionalQualification"].DefaultValue = txtProfessionalQualification.Text;
                tblTeacher.InsertParameters["MajorSubjectAssignments"].DefaultValue = txtMajorSubject.Text;
                tblTeacher.InsertParameters["MinorSubjectAssignments"].DefaultValue = txtMinorSubject.Text;
                tblTeacher.Insert();
                grdTeacher.DataSourceID = "tblTeacher";
                grdTeacher.DataBind();
                ClearItems();

            }
        }

        protected void txtSearchName_TextChanged(object sender, EventArgs e)
        {
            if (grdTeacher.DataSourceID.Equals("tblTeacher"))
            {
                grdTeacher.DataSourceID = "tblSearch";
                grdTeacher.DataBind();
            }
            else {
                grdTeacher.DataSourceID = "tblTeacher";
                grdTeacher.DataBind();
            }
        }
        private void ClearItems() {
            txtContact.Text= String.Empty;
            txtFirstName.Text = String.Empty;
            txtLastName.Text = String.Empty;
            txtTeacherID.Text = String.Empty;
            txtContact.Text = String.Empty;
            txtEmail.Text = String.Empty;
            txtPrcid.Text = String.Empty;
            txtProfessionalQualification.Text = String.Empty;
            txtMajorSubject.Text = String.Empty;
            txtMinorSubject.Text = String.Empty;
        }

        protected void grdTeacher_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {

        }

        protected void grdTeacher_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {

        }

        protected void grdTeacher_RowEditing(object sender, GridViewEditEventArgs e)
        {

        }

        protected void grdTeacher_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {

        }
    }
}