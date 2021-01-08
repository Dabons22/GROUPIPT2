using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace School_Website.Admin_page
{
    public partial class FileRooms : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            grdRooms.DataSourceID = "tblRooms";
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void grdRooms_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {

        }

        protected void grdRooms_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {

        }

        protected void grdRooms_RowEditing(object sender, GridViewEditEventArgs e)
        {

        }

        protected void grdRooms_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {

        }

        protected void TxtSearchRooms_TextChanged(object sender, EventArgs e)
        {
            if (String.IsNullOrEmpty(TxtSearchRooms.Text))
            {
                    grdRooms.DataSourceID = "tblSearch";
                    grdRooms.DataBind();
                
            }
            else
            {
                grdRooms.DataSourceID = "tblSearch";
                grdRooms.DataBind();
            }
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            if (String.IsNullOrEmpty(txtmaxroom.Text) || String.IsNullOrEmpty(txtminroom.Text) || String.IsNullOrEmpty(txtRoomName.Text) || String.IsNullOrEmpty(txtStateRoom.Text) || String.IsNullOrEmpty(txtRoomSize.Text))
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
                tblRooms.InsertParameters["RoomName"].DefaultValue = txtRoomName.Text;
                tblRooms.InsertParameters["RoomSize"].DefaultValue = txtRoomSize.Text;
                tblRooms.InsertParameters["MinimumCapacity"].DefaultValue = txtminroom.Text;
                tblRooms.InsertParameters["MaximumCapacity"].DefaultValue = txtmaxroom.Text;
                tblRooms.InsertParameters["State"].DefaultValue = txtStateRoom.Text;
                tblRooms.Insert();
                grdRooms.DataSourceID = "tblRooms";
                tblRooms.DataBind();
                ClearItems();

            }
        }

        private void ClearItems() {
            txtmaxroom.Text = String.Empty;
            txtminroom.Text = String.Empty;
            txtRoomName.Text = String.Empty;
            txtRoomSize.Text = String.Empty;
            txtStateRoom.Text = String.Empty;
        }
    }
}