<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_page/AdminPage.Master" AutoEventWireup="true" CodeBehind="FileSection.aspx.cs" Inherits="School_Website.Admin_page.FileSection" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
           <link href="../Content/Header.css" rel="stylesheet" />
    <link href="../Content/ForForms.css" rel="stylesheet" />
    <link href="../Content/ModalAdmin.css" rel="stylesheet" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="heroContainer">
    </div>
    <div class="Card">
        <h1 class="pas">SECTION</h1>
      <p>  This Page is used for performing Add, Edit, Delete and Update Operations for Section Table.</p>
        <hr />
    </div>
    <div class="Operations">
        <asp:Label ID="Label1" runat="server" Text="Search"></asp:Label><asp:TextBox ID="txtSearchRoom" runat="server" OnTextChanged="txtSearchRoom_TextChanged"></asp:TextBox>
    </div>
    <div class="Caption">
        <asp:SqlDataSource ID="tblSection" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:USERSDATAConnectionString %>" DeleteCommand="DELETE FROM [SECTIONS] WHERE [SectionName] = @original_SectionName AND (([GradeLevel] = @original_GradeLevel) OR ([GradeLevel] IS NULL AND @original_GradeLevel IS NULL)) AND (([Track] = @original_Track) OR ([Track] IS NULL AND @original_Track IS NULL)) AND (([Room] = @original_Room) OR ([Room] IS NULL AND @original_Room IS NULL)) AND (([ClassAdviser] = @original_ClassAdviser) OR ([ClassAdviser] IS NULL AND @original_ClassAdviser IS NULL)) AND (([Priority] = @original_Priority) OR ([Priority] IS NULL AND @original_Priority IS NULL))" InsertCommand="INSERT INTO [SECTIONS] ([SectionName], [GradeLevel], [Track], [Room], [ClassAdviser], [Priority]) VALUES (@SectionName, @GradeLevel, @Track, @Room, @ClassAdviser, @Priority)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [SECTIONS]" UpdateCommand="UPDATE [SECTIONS] SET [GradeLevel] = @GradeLevel, [Track] = @Track, [Room] = @Room, [ClassAdviser] = @ClassAdviser, [Priority] = @Priority WHERE [SectionName] = @original_SectionName AND (([GradeLevel] = @original_GradeLevel) OR ([GradeLevel] IS NULL AND @original_GradeLevel IS NULL)) AND (([Track] = @original_Track) OR ([Track] IS NULL AND @original_Track IS NULL)) AND (([Room] = @original_Room) OR ([Room] IS NULL AND @original_Room IS NULL)) AND (([ClassAdviser] = @original_ClassAdviser) OR ([ClassAdviser] IS NULL AND @original_ClassAdviser IS NULL)) AND (([Priority] = @original_Priority) OR ([Priority] IS NULL AND @original_Priority IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_SectionName" Type="String" />
                <asp:Parameter Name="original_GradeLevel" Type="String" />
                <asp:Parameter Name="original_Track" Type="String" />
                <asp:Parameter Name="original_Room" Type="String" />
                <asp:Parameter Name="original_ClassAdviser" Type="String" />
                <asp:Parameter Name="original_Priority" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="SectionName" Type="String" />
                <asp:Parameter Name="GradeLevel" Type="String" />
                <asp:Parameter Name="Track" Type="String" />
                <asp:Parameter Name="Room" Type="String" />
                <asp:Parameter Name="ClassAdviser" Type="String" />
                <asp:Parameter Name="Priority" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="GradeLevel" Type="String" />
                <asp:Parameter Name="Track" Type="String" />
                <asp:Parameter Name="Room" Type="String" />
                <asp:Parameter Name="ClassAdviser" Type="String" />
                <asp:Parameter Name="Priority" Type="Int32" />
                <asp:Parameter Name="original_SectionName" Type="String" />
                <asp:Parameter Name="original_GradeLevel" Type="String" />
                <asp:Parameter Name="original_Track" Type="String" />
                <asp:Parameter Name="original_Room" Type="String" />
                <asp:Parameter Name="original_ClassAdviser" Type="String" />
                <asp:Parameter Name="original_Priority" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="tblSearchSection" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:USERSDATAConnectionString %>" DeleteCommand="DELETE FROM [SECTIONS] WHERE [SectionName] = @original_SectionName AND (([GradeLevel] = @original_GradeLevel) OR ([GradeLevel] IS NULL AND @original_GradeLevel IS NULL)) AND (([Track] = @original_Track) OR ([Track] IS NULL AND @original_Track IS NULL)) AND (([Room] = @original_Room) OR ([Room] IS NULL AND @original_Room IS NULL)) AND (([ClassAdviser] = @original_ClassAdviser) OR ([ClassAdviser] IS NULL AND @original_ClassAdviser IS NULL)) AND (([Priority] = @original_Priority) OR ([Priority] IS NULL AND @original_Priority IS NULL))" InsertCommand="INSERT INTO [SECTIONS] ([SectionName], [GradeLevel], [Track], [Room], [ClassAdviser], [Priority]) VALUES (@SectionName, @GradeLevel, @Track, @Room, @ClassAdviser, @Priority)" OldValuesParameterFormatString="original_{0}" OnSelecting="tblSearchSection_Selecting" SelectCommand="SELECT * FROM [SECTIONS] WHERE ([SectionName] = @SectionName)" UpdateCommand="UPDATE [SECTIONS] SET [GradeLevel] = @GradeLevel, [Track] = @Track, [Room] = @Room, [ClassAdviser] = @ClassAdviser, [Priority] = @Priority WHERE [SectionName] = @original_SectionName AND (([GradeLevel] = @original_GradeLevel) OR ([GradeLevel] IS NULL AND @original_GradeLevel IS NULL)) AND (([Track] = @original_Track) OR ([Track] IS NULL AND @original_Track IS NULL)) AND (([Room] = @original_Room) OR ([Room] IS NULL AND @original_Room IS NULL)) AND (([ClassAdviser] = @original_ClassAdviser) OR ([ClassAdviser] IS NULL AND @original_ClassAdviser IS NULL)) AND (([Priority] = @original_Priority) OR ([Priority] IS NULL AND @original_Priority IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_SectionName" Type="String" />
                <asp:Parameter Name="original_GradeLevel" Type="String" />
                <asp:Parameter Name="original_Track" Type="String" />
                <asp:Parameter Name="original_Room" Type="String" />
                <asp:Parameter Name="original_ClassAdviser" Type="String" />
                <asp:Parameter Name="original_Priority" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="SectionName" Type="String" />
                <asp:Parameter Name="GradeLevel" Type="String" />
                <asp:Parameter Name="Track" Type="String" />
                <asp:Parameter Name="Room" Type="String" />
                <asp:Parameter Name="ClassAdviser" Type="String" />
                <asp:Parameter Name="Priority" Type="Int32" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="txtSearchRoom" Name="SectionName" PropertyName="Text" Type="String" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="GradeLevel" Type="String" />
                <asp:Parameter Name="Track" Type="String" />
                <asp:Parameter Name="Room" Type="String" />
                <asp:Parameter Name="ClassAdviser" Type="String" />
                <asp:Parameter Name="Priority" Type="Int32" />
                <asp:Parameter Name="original_SectionName" Type="String" />
                <asp:Parameter Name="original_GradeLevel" Type="String" />
                <asp:Parameter Name="original_Track" Type="String" />
                <asp:Parameter Name="original_Room" Type="String" />
                <asp:Parameter Name="original_ClassAdviser" Type="String" />
                <asp:Parameter Name="original_Priority" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="grdSection" runat="server" AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" DataKeyNames="SectionName" DataSourceID="tblSection" ForeColor="Black" GridLines="None" OnSelectedIndexChanged="grdSection_SelectedIndexChanged" Width="562px" OnRowCancelingEdit="grdSection_RowCancelingEdit" OnRowEditing="grdSection_RowEditing" OnRowUpdating="grdSection_RowUpdating" OnRowDeleting="grdSection_RowDeleting">
            <AlternatingRowStyle BackColor="PaleGoldenrod" />
            <Columns>
                <asp:BoundField DataField="SectionName" HeaderText="Section Name" ReadOnly="True" SortExpression="SectionName" />
                <asp:BoundField DataField="GradeLevel" HeaderText="Grade Level" SortExpression="GradeLevel" />
                <asp:BoundField DataField="Track" HeaderText="Track" SortExpression="Track" />
                <asp:BoundField DataField="Room" HeaderText="Room" SortExpression="Room" />
                <asp:BoundField DataField="ClassAdviser" HeaderText="Class Adviser" SortExpression="ClassAdviser" />
                <asp:BoundField DataField="Priority" HeaderText="Priority" SortExpression="Priority" />
                <asp:CommandField HeaderText="Actions" ShowDeleteButton="True" ShowEditButton="True" />
            </Columns>
            <FooterStyle BackColor="Tan" />
            <HeaderStyle BackColor="Tan" Font-Bold="True" />
            <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
            <SortedAscendingCellStyle BackColor="#FAFAE7" />
            <SortedAscendingHeaderStyle BackColor="#DAC09E" />
            <SortedDescendingCellStyle BackColor="#E1DB9C" />
            <SortedDescendingHeaderStyle BackColor="#C2A47B" />
        </asp:GridView>
    </div>
    <div class="Card">
             <div style="height:30px; padding:2px;"> <a style="font-size:18px; font-family:'Source Sans Pro'"; href="#open-modal">Add Data</a>
</div>
<div id="open-modal" class="modal-window">
  <div>
    <a href="#modal-close" title="Close" class="modal-close">close &times;</a>
    <h1>Add Data for Room</h1>
      <div class="Lblleft">
      <asp:Label ID="Label2" runat="server" Text="Room Name:"></asp:Label>
          <asp:TextBox ID="txtRoomName" runat="server"></asp:TextBox>
      <br />
     <asp:Label ID="Label3" runat="server" Text="Section Name:">
             </asp:Label><asp:TextBox ID="txtSectionName" runat="server"></asp:TextBox>
      <br />
    <asp:Label ID="Label4" runat="server" Text="Grade Level:">
    </asp:Label><asp:TextBox ID="txtGradelevel" runat="server"></asp:TextBox>
      <br />
           <asp:Label ID="Label5" runat="server" Text="Track:"></asp:Label>
          <asp:TextBox ID="txtTrack" runat="server" ></asp:TextBox>
      <br />
           <asp:Label ID="Label6" runat="server" Text="Room:"></asp:Label>
          <asp:TextBox ID="txtRoom" runat="server" ></asp:TextBox>
      <br />
          <asp:Label ID="Label7" runat="server" Text="Class Advisory:"></asp:Label>
          <asp:TextBox ID="txtClassAd" runat="server" ></asp:TextBox>
      <br />
           <asp:Label ID="Label8" runat="server" Text="Priority:"></asp:Label>
          <asp:TextBox ID="txtPriority" runat="server" ></asp:TextBox>
      <br />
    
                 <div style="text-align:center;"><asp:Button ID="btnSave" runat="server" Text="SAVE DATA" Width="121px" OnClick="btnSave_Click" /> 
              <asp:Label ID="lblsignWarning" runat="server" ForeColor="#CC0000" Text="COMPLETE THE INFO"></asp:Label>
      <br />
         
              </div>
          </div>
    </div>
    </div>
    </div>
   
</asp:Content>
