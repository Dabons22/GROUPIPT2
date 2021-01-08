<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_page/AdminPage.Master" AutoEventWireup="true" CodeBehind="FileSchoolYear.aspx.cs" Inherits="School_Website.Admin_page.FileSchoolYear" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <link href="../Content/Header.css" rel="stylesheet" />
    <link href="../Content/ForForms.css" rel="stylesheet" />
    <link href="../Content/ModalAdmin.css" rel="stylesheet" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="heroContainer">
    </div>
        <div class="Card">
        <h1 class="pas">School Year</h1>
      <p>  This Page is used for performing Add, Edit, Delete and Update Operations for School Year Table.</p>
        <hr />
    </div>
    <div class="Operations">
        <asp:Label ID="Label1" runat="server" Text="Search"></asp:Label><asp:TextBox ID="txtSearchshoolYear" runat="server" OnTextChanged="txtSearchshoolYear_TextChanged"></asp:TextBox>
    </div>
    <div class="Caption">
        <asp:SqlDataSource ID="tblSchoolYear" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:USERSDATAConnectionString %>" DeleteCommand="DELETE FROM [SCHOOLYEAR] WHERE [SchoolYear] = @original_SchoolYear AND (([StartDate] = @original_StartDate) OR ([StartDate] IS NULL AND @original_StartDate IS NULL)) AND (([EndDate] = @original_EndDate) OR ([EndDate] IS NULL AND @original_EndDate IS NULL)) AND (([State] = @original_State) OR ([State] IS NULL AND @original_State IS NULL))" InsertCommand="INSERT INTO [SCHOOLYEAR] ([SchoolYear], [StartDate], [EndDate], [State]) VALUES (@SchoolYear, @StartDate, @EndDate, @State)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [SCHOOLYEAR]" UpdateCommand="UPDATE [SCHOOLYEAR] SET [StartDate] = @StartDate, [EndDate] = @EndDate, [State] = @State WHERE [SchoolYear] = @original_SchoolYear AND (([StartDate] = @original_StartDate) OR ([StartDate] IS NULL AND @original_StartDate IS NULL)) AND (([EndDate] = @original_EndDate) OR ([EndDate] IS NULL AND @original_EndDate IS NULL)) AND (([State] = @original_State) OR ([State] IS NULL AND @original_State IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_SchoolYear" Type="String" />
                <asp:Parameter DbType="Date" Name="original_StartDate" />
                <asp:Parameter DbType="Date" Name="original_EndDate" />
                <asp:Parameter Name="original_State" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="SchoolYear" Type="String" />
                <asp:Parameter DbType="Date" Name="StartDate" />
                <asp:Parameter DbType="Date" Name="EndDate" />
                <asp:Parameter Name="State" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter DbType="Date" Name="StartDate" />
                <asp:Parameter DbType="Date" Name="EndDate" />
                <asp:Parameter Name="State" Type="String" />
                <asp:Parameter Name="original_SchoolYear" Type="String" />
                <asp:Parameter DbType="Date" Name="original_StartDate" />
                <asp:Parameter DbType="Date" Name="original_EndDate" />
                <asp:Parameter Name="original_State" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="tblSearchSchoolYear" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:USERSDATAConnectionString %>" DeleteCommand="DELETE FROM [SCHOOLYEAR] WHERE [SchoolYear] = @original_SchoolYear AND (([StartDate] = @original_StartDate) OR ([StartDate] IS NULL AND @original_StartDate IS NULL)) AND (([EndDate] = @original_EndDate) OR ([EndDate] IS NULL AND @original_EndDate IS NULL)) AND (([State] = @original_State) OR ([State] IS NULL AND @original_State IS NULL))" InsertCommand="INSERT INTO [SCHOOLYEAR] ([SchoolYear], [StartDate], [EndDate], [State]) VALUES (@SchoolYear, @StartDate, @EndDate, @State)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [SCHOOLYEAR] WHERE ([SchoolYear] LIKE '%' + @SchoolYear + '%')" UpdateCommand="UPDATE [SCHOOLYEAR] SET [StartDate] = @StartDate, [EndDate] = @EndDate, [State] = @State WHERE [SchoolYear] = @original_SchoolYear AND (([StartDate] = @original_StartDate) OR ([StartDate] IS NULL AND @original_StartDate IS NULL)) AND (([EndDate] = @original_EndDate) OR ([EndDate] IS NULL AND @original_EndDate IS NULL)) AND (([State] = @original_State) OR ([State] IS NULL AND @original_State IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_SchoolYear" Type="String" />
                <asp:Parameter DbType="Date" Name="original_StartDate" />
                <asp:Parameter DbType="Date" Name="original_EndDate" />
                <asp:Parameter Name="original_State" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="SchoolYear" Type="String" />
                <asp:Parameter DbType="Date" Name="StartDate" />
                <asp:Parameter DbType="Date" Name="EndDate" />
                <asp:Parameter Name="State" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="txtSearchshoolYear" Name="SchoolYear" PropertyName="Text" Type="String" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter DbType="Date" Name="StartDate" />
                <asp:Parameter DbType="Date" Name="EndDate" />
                <asp:Parameter Name="State" Type="String" />
                <asp:Parameter Name="original_SchoolYear" Type="String" />
                <asp:Parameter DbType="Date" Name="original_StartDate" />
                <asp:Parameter DbType="Date" Name="original_EndDate" />
                <asp:Parameter Name="original_State" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="grdSchoolYear" runat="server" AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" DataKeyNames="SchoolYear" DataSourceID="tblSchoolYear" ForeColor="Black" GridLines="None" Width="651px" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating">
            <AlternatingRowStyle BackColor="PaleGoldenrod" />
            <Columns>
                <asp:BoundField DataField="SchoolYear" HeaderText="SchoolYear" ReadOnly="True" SortExpression="SchoolYear" />
                <asp:BoundField DataField="StartDate" HeaderText="StartDate" SortExpression="StartDate" />
                <asp:BoundField DataField="EndDate" HeaderText="EndDate" SortExpression="EndDate" />
                <asp:BoundField DataField="State" HeaderText="State" SortExpression="State" />
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
   <div class ="Card">
         <div style="height:30px; padding:2px;"> <a style="font-size:18px; font-family:'Source Sans Pro'"; href="#open-modal">Add Data</a>
</div>
<div id="open-modal" class="modal-window">
  <div>
    <a href="#modal-close" title="Close" class="modal-close">close &times;</a>
    <h1>Add Data for School Year</h1>
      <div class="Lblleft">
      <asp:Label ID="Label2" runat="server" Text="School Year:"></asp:Label>
          <asp:TextBox ID="txtSchoolYear" runat="server"></asp:TextBox>
      <br />
     <asp:Label ID="Label3" runat="server" Text="Start Date:"></asp:Label>
          <asp:TextBox ID="txtStartDate" runat="server"></asp:TextBox>
            <ajaxToolkit:CalendarExtender ID="txtStartDate_CalendarExtender" runat="server" BehaviorID="txtStartDate_CalendarExtender" TargetControlID="txtStartDate" />
          <br />
    <asp:Label ID="Label4" runat="server" Text="End Date:"></asp:Label>
          <asp:TextBox ID="txtEndDate" runat="server"></asp:TextBox>
          <ajaxToolkit:CalendarExtender ID="txtEndDate_CalendarExtender" runat="server" BehaviorID="txtEndDate_CalendarExtender" TargetControlID="txtEndDate" />
          <br />
           <asp:Label ID="Label5" runat="server" Text="State:"></asp:Label>
          <asp:TextBox ID="txtStateSchoolYear" runat="server" ></asp:TextBox>
      <br />
      <br />
   
                 <div style="text-align:center;"><asp:Button ID="btnSave" runat="server" Text="SAVE DATA" Width="121px" OnClick="btnSave_Click"  /> 
              <asp:Label ID="lblsignWarning" runat="server" ForeColor="#CC0000" Text="COMPLETE THE INFO"></asp:Label>
      <br />
         
              </div>
          </div>
    </div>
    </div>
    </div>
</asp:Content>
