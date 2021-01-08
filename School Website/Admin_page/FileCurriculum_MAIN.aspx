<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_page/AdminPage.Master" AutoEventWireup="true" CodeBehind="FileCurriculum_MAIN.aspx.cs" Inherits="School_Website.Admin_page.FileCurriculum_MAIN" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../Content/Header.css" rel="stylesheet" />
    <link href="../Content/ForForms.css" rel="stylesheet" />
    <link href="../Content/ModalAdmin.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="heroContainer">
    

</div>
<div class="Card">
        <h1 class="pas">Curriculum</h1>
      <p>  This Page is used for performing Add, Edit, Delete and Update Operations for Curriculum Table.</p>
        <hr />
    </div>
    <div class="Operations">
        <asp:Label ID="lblSearch" runat="server" Text="Search"></asp:Label><asp:TextBox ID="txtSearch" runat="server" OnTextChanged="txtSearch_TextChanged" Height="20px" Width="184px"></asp:TextBox>
    </div>
    <br />
<div class="Caption">
        
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:USERSDATAConnectionString %>" DeleteCommand="DELETE FROM [CURRICULUM] WHERE [TitleOfCurriculum] = @original_TitleOfCurriculum AND [ActivatedYear] = @original_ActivatedYear AND [Description] = @original_Description AND [State] = @original_State" InsertCommand="INSERT INTO [CURRICULUM] ([TitleOfCurriculum], [ActivatedYear], [Description], [State]) VALUES (@TitleOfCurriculum, @ActivatedYear, @Description, @State)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [CURRICULUM]" UpdateCommand="UPDATE [CURRICULUM] SET [ActivatedYear] = @ActivatedYear, [Description] = @Description, [State] = @State WHERE [TitleOfCurriculum] = @original_TitleOfCurriculum AND [ActivatedYear] = @original_ActivatedYear AND [Description] = @original_Description AND [State] = @original_State">
        <DeleteParameters>
            <asp:Parameter Name="original_TitleOfCurriculum" Type="String" />
            <asp:Parameter Name="original_ActivatedYear" Type="String" />
            <asp:Parameter Name="original_Description" Type="String" />
            <asp:Parameter Name="original_State" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="TitleOfCurriculum" Type="String" />
            <asp:Parameter Name="ActivatedYear" Type="String" />
            <asp:Parameter Name="Description" Type="String" />
            <asp:Parameter Name="State" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="ActivatedYear" Type="String" />
            <asp:Parameter Name="Description" Type="String" />
            <asp:Parameter Name="State" Type="String" />
            <asp:Parameter Name="original_TitleOfCurriculum" Type="String" />
            <asp:Parameter Name="original_ActivatedYear" Type="String" />
            <asp:Parameter Name="original_Description" Type="String" />
            <asp:Parameter Name="original_State" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:USERSDATAConnectionString %>" SelectCommand="SELECT * FROM [CURRICULUM] WHERE ([TitleOfCurriculum] = @TitleOfCurriculum)" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [CURRICULUM] WHERE [TitleOfCurriculum] = @original_TitleOfCurriculum AND [ActivatedYear] = @original_ActivatedYear AND [Description] = @original_Description AND [State] = @original_State" InsertCommand="INSERT INTO [CURRICULUM] ([TitleOfCurriculum], [ActivatedYear], [Description], [State]) VALUES (@TitleOfCurriculum, @ActivatedYear, @Description, @State)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [CURRICULUM] SET [ActivatedYear] = @ActivatedYear, [Description] = @Description, [State] = @State WHERE [TitleOfCurriculum] = @original_TitleOfCurriculum AND [ActivatedYear] = @original_ActivatedYear AND [Description] = @original_Description AND [State] = @original_State">
        <DeleteParameters>
            <asp:Parameter Name="original_TitleOfCurriculum" Type="String" />
            <asp:Parameter Name="original_ActivatedYear" Type="String" />
            <asp:Parameter Name="original_Description" Type="String" />
            <asp:Parameter Name="original_State" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="TitleOfCurriculum" Type="String" />
            <asp:Parameter Name="ActivatedYear" Type="String" />
            <asp:Parameter Name="Description" Type="String" />
            <asp:Parameter Name="State" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="txtSearch" Name="TitleOfCurriculum" PropertyName="Text" Type="String" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="ActivatedYear" Type="String" />
            <asp:Parameter Name="Description" Type="String" />
            <asp:Parameter Name="State" Type="String" />
            <asp:Parameter Name="original_TitleOfCurriculum" Type="String" />
            <asp:Parameter Name="original_ActivatedYear" Type="String" />
            <asp:Parameter Name="original_Description" Type="String" />
            <asp:Parameter Name="original_State" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:GridView ID="GridView1S" runat="server" AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" DataKeyNames="TitleOfCurriculum"  ForeColor="Black" GridLines="None" Width="626px" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowUpdating="GridView1_RowUpdating" OnRowDeleting="GridView1_RowDeleting"   OnRowEditing="GridView1_RowEditing" DataSourceID="SqlDataSource1" >
        <AlternatingRowStyle BackColor="PaleGoldenrod" />
        <Columns>
            <asp:BoundField DataField="TitleOfCurriculum" HeaderText="TitleOfCurriculum" ReadOnly="True" SortExpression="TitleOfCurriculum" />
            <asp:BoundField DataField="ActivatedYear" HeaderText="ActivatedYear" SortExpression="ActivatedYear" />
            <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
            <asp:BoundField DataField="State" HeaderText="State" SortExpression="State" />
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" HeaderText="Actions" />
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
    <h1>Add Data for Curriculum</h1>
      <div class="Lblleft">
      <asp:Label ID="Label1" runat="server" Text="Title Of Curriculum:"></asp:Label>
          <asp:TextBox ID="txtCurriculum" runat="server"></asp:TextBox>
      <br />
     <asp:Label ID="Label2" runat="server" Text="Activated Year:">
             </asp:Label><asp:TextBox ID="txtActYear" runat="server"></asp:TextBox>
      <br />
    <asp:Label ID="Label3" runat="server" Text="Description:">
    </asp:Label><asp:TextBox ID="txtDescription" runat="server"></asp:TextBox>
      <br />
           <asp:Label ID="Label4" runat="server" Text="STATE:"></asp:Label>
          <asp:TextBox ID="txtState" runat="server" OnTextChanged="txtState_TextChanged1"></asp:TextBox>
      <br />
          <div style="text-align:center;"><asp:Button ID="btnSave" runat="server" Text="SAVE DATA" Width="121px" OnClick="btnSave_Click" /> 
              <asp:Label ID="lblsignWarning" runat="server" ForeColor="#CC0000" Text="COMPLETE THE INFO"></asp:Label>
          </div>
          </div>
    
  </div>
</div></div>

 </asp:Content>
