using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace School_Website.Admin_page
{
    public partial class FileSubject : System.Web.UI.Page
    {
    

        protected void grdSubject_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {

        }

        protected void grdSubject_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {

        }

        protected void grdSubject_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {

        }

        protected void grdSubject_RowEditing(object sender, GridViewEditEventArgs e)
        {

        }
        protected void Page_Load(object sender, EventArgs e)
        {
            grdSubject.DataSourceID = "tblSubject";
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            if (String.IsNullOrEmpty(txtSubjectCode.Text) || String.IsNullOrEmpty(txtSubjectTitles.Text) || String.IsNullOrEmpty(txtGradelvl.Text) ||String.IsNullOrEmpty(txtCurriculum.Text))
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
                tblSubject.InsertParameters["SubjectCode"].DefaultValue = txtSubjectCode.Text;
                tblSubject.InsertParameters["SubjectTitle"].DefaultValue = txtSubjectTitles.Text;
                tblSubject.InsertParameters["Curriculum"].DefaultValue = txtCurriculum.Text;
                tblSubject.InsertParameters["GradeLevel"].DefaultValue = txtGradelvl.Text;
                tblSubject.Insert();
                grdSubject.DataSourceID = "tblSubject";
                grdSubject.DataBind();
                ClearItems();
            }
        }
        private void ClearItems()
        {
            txtGradelvl.Text = String.Empty;
            txtCurriculum.Text = String.Empty;
            txtSubjectCode.Text = String.Empty;
            txtSubjectTitles.Text = String.Empty;

        }

        protected void TxtSearchSubject_TextChanged(object sender, EventArgs e)
        {
            if (String.IsNullOrEmpty(TxtSearchSubject.Text))
            {
                if (grdSubject.DataSourceID.Equals("tblSubject"))
                {
                    grdSubject.DataSourceID = "tblSearchSubject";
                }
                else {
                    grdSubject.DataSourceID = "tblSubject";
                }
            }
        }
    }
}