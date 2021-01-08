using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace School_Website.Admin_page
{
    public partial class FileSection : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            grdSection.DataSourceID = "tblSection";
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {

        }

        protected void grdSection_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {

        }

        protected void grdSection_RowEditing(object sender, GridViewEditEventArgs e)
        {

        }

        protected void grdSection_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {

        }

        protected void grdSection_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {

        }

        protected void tblSearchSection_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void txtSearchRoom_TextChanged(object sender, EventArgs e)
        {
            if (String.IsNullOrEmpty(txtSearchRoom.Text))
            {

                grdSection.DataSourceID="tblSection";
                grdSection.DataBind();
            }
            else
            {
                grdSection.DataSourceID = "tblSearchSection";
                grdSection.DataBind();
            }

        }
        private void ClearItem() {
            txtSectionName.Text = String.Empty;
            txtGradelevel.Text = String.Empty;
            txtTrack.Text = String.Empty;
            txtRoom.Text = String.Empty;
            txtClassAd.Text = String.Empty;
            txtPriority.Text = String.Empty;

        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            if (String.IsNullOrEmpty(txtRoomName.Text) || String.IsNullOrEmpty(txtGradelevel.Text) || String.IsNullOrEmpty(txtSectionName.Text) || String.IsNullOrEmpty(txtClassAd.Text) || String.IsNullOrEmpty(txtTrack.Text) ||String.IsNullOrEmpty(txtPriority.Text))
            {
            
            }
            else
            {
                Page.MaintainScrollPositionOnPostBack = true;
                tblSection.InsertParameters["SectionName"].DefaultValue = txtSectionName.Text;
                tblSection.InsertParameters["GradeLevel"].DefaultValue = txtGradelevel.Text;
                tblSection.InsertParameters["Track"].DefaultValue = txtTrack.Text;
                tblSection.InsertParameters["Room"].DefaultValue = txtRoom.Text;
                tblSection.InsertParameters["ClassAdviser"].DefaultValue = txtClassAd.Text;
                tblSection.InsertParameters["Priority"].DefaultValue = txtPriority.Text;
                tblSection.Insert();
                grdSection.DataSourceID = "tblSection";
                grdSection.DataBind();
                ClearItem();

            }
        }

        protected void grdSection_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}