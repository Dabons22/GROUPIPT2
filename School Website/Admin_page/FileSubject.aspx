<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_page/AdminPage.Master" AutoEventWireup="true" CodeBehind="FileSubject.aspx.cs" Inherits="School_Website.Admin_page.FileSubject" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../Content/Header.css" rel="stylesheet" />
    <link href="../Content/ForForms.css" rel="stylesheet" />
    <link href="../Content/ModalAdmin.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="heroContainer">

    </div>
    <div class="Card">
         <h1 class="pas">Subject</h1>
      <p>  This Page is used for performing Add, Edit, Delete and Update Operations for Subject Table.</p>
        <hr />
    </div>
    
    <div class="Operations">
        <asp:Label ID="Label1" runat="server" Text="Search"></asp:Label><asp:TextBox ID="TxtSearchSubject" runat="server" OnTextChanged="TxtSearchSubject_TextChanged"></asp:TextBox>
    </div>
    <div class="Caption">
        <asp:SqlDataSource ID="tblSubject" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:USERSDATAConnectionString %>" DeleteCommand="DELETE FROM [SUBJECT] WHERE [SubjectCode] = @original_SubjectCode AND (([SubjectTitle] = @original_SubjectTitle) OR ([SubjectTitle] IS NULL AND @original_SubjectTitle IS NULL)) AND (([Curriculum] = @original_Curriculum) OR ([Curriculum] IS NULL AND @original_Curriculum IS NULL)) AND (([GradeLevel] = @original_GradeLevel) OR ([GradeLevel] IS NULL AND @original_GradeLevel IS NULL))" InsertCommand="INSERT INTO [SUBJECT] ([SubjectCode], [SubjectTitle], [Curriculum], [GradeLevel]) VALUES (@SubjectCode, @SubjectTitle, @Curriculum, @GradeLevel)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [SUBJECT]" UpdateCommand="UPDATE [SUBJECT] SET [SubjectTitle] = @SubjectTitle, [Curriculum] = @Curriculum, [GradeLevel] = @GradeLevel WHERE [SubjectCode] = @original_SubjectCode AND (([SubjectTitle] = @original_SubjectTitle) OR ([SubjectTitle] IS NULL AND @original_SubjectTitle IS NULL)) AND (([Curriculum] = @original_Curriculum) OR ([Curriculum] IS NULL AND @original_Curriculum IS NULL)) AND (([GradeLevel] = @original_GradeLevel) OR ([GradeLevel] IS NULL AND @original_GradeLevel IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_SubjectCode" Type="String" />
                <asp:Parameter Name="original_SubjectTitle" Type="String" />
                <asp:Parameter Name="original_Curriculum" Type="String" />
                <asp:Parameter Name="original_GradeLevel" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="SubjectCode" Type="String" />
                <asp:Parameter Name="SubjectTitle" Type="String" />
                <asp:Parameter Name="Curriculum" Type="String" />
                <asp:Parameter Name="GradeLevel" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="SubjectTitle" Type="String" />
                <asp:Parameter Name="Curriculum" Type="String" />
                <asp:Parameter Name="GradeLevel" Type="String" />
                <asp:Parameter Name="original_SubjectCode" Type="String" />
                <asp:Parameter Name="original_SubjectTitle" Type="String" />
                <asp:Parameter Name="original_Curriculum" Type="String" />
                <asp:Parameter Name="original_GradeLevel" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    <asp:SqlDataSource ID="tblSearchSubject" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:USERSDATAConnectionString %>" DeleteCommand="DELETE FROM [SUBJECT] WHERE [SubjectCode] = @original_SubjectCode AND (([SubjectTitle] = @original_SubjectTitle) OR ([SubjectTitle] IS NULL AND @original_SubjectTitle IS NULL)) AND (([Curriculum] = @original_Curriculum) OR ([Curriculum] IS NULL AND @original_Curriculum IS NULL)) AND (([GradeLevel] = @original_GradeLevel) OR ([GradeLevel] IS NULL AND @original_GradeLevel IS NULL))" InsertCommand="INSERT INTO [SUBJECT] ([SubjectCode], [SubjectTitle], [Curriculum], [GradeLevel]) VALUES (@SubjectCode, @SubjectTitle, @Curriculum, @GradeLevel)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [SUBJECT] WHERE ([SubjectTitle] LIKE '%' + @SubjectTitle + '%')" UpdateCommand="UPDATE [SUBJECT] SET [SubjectTitle] = @SubjectTitle, [Curriculum] = @Curriculum, [GradeLevel] = @GradeLevel WHERE [SubjectCode] = @original_SubjectCode AND (([SubjectTitle] = @original_SubjectTitle) OR ([SubjectTitle] IS NULL AND @original_SubjectTitle IS NULL)) AND (([Curriculum] = @original_Curriculum) OR ([Curriculum] IS NULL AND @original_Curriculum IS NULL)) AND (([GradeLevel] = @original_GradeLevel) OR ([GradeLevel] IS NULL AND @original_GradeLevel IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_SubjectCode" Type="String" />
            <asp:Parameter Name="original_SubjectTitle" Type="String" />
            <asp:Parameter Name="original_Curriculum" Type="String" />
            <asp:Parameter Name="original_GradeLevel" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="SubjectCode" Type="String" />
            <asp:Parameter Name="SubjectTitle" Type="String" />
            <asp:Parameter Name="Curriculum" Type="String" />
            <asp:Parameter Name="GradeLevel" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="TxtSearchSubject" Name="SubjectTitle" PropertyName="Text" Type="String" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="SubjectTitle" Type="String" />
            <asp:Parameter Name="Curriculum" Type="String" />
            <asp:Parameter Name="GradeLevel" Type="String" />
            <asp:Parameter Name="original_SubjectCode" Type="String" />
            <asp:Parameter Name="original_SubjectTitle" Type="String" />
            <asp:Parameter Name="original_Curriculum" Type="String" />
            <asp:Parameter Name="original_GradeLevel" Type="String" />
        </UpdateParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="grdSubject" runat="server" AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" DataKeyNames="SubjectCode" DataSourceID="tblSubject" ForeColor="Black" GridLines="None" Width="605px" OnRowCancelingEdit="grdSubject_RowCancelingEdit" OnRowUpdating="grdSubject_RowUpdating" OnRowDeleting="grdSubject_RowDeleting" OnRowEditing="grdSubject_RowEditing">
            <AlternatingRowStyle BackColor="PaleGoldenrod" />
            <Columns>
                <asp:BoundField DataField="SubjectCode" HeaderText="Subject Code" ReadOnly="True" SortExpression="SubjectCode" />
                <asp:BoundField DataField="SubjectTitle" HeaderText="Subject Title" SortExpression="SubjectTitle" />
                <asp:BoundField DataField="Curriculum" HeaderText="Curriculum" SortExpression="Curriculum" />
                <asp:BoundField DataField="GradeLevel" HeaderText="Grade Level" SortExpression="GradeLevel" />
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
    <h1>Add Data for Subject</h1>
      <div class="Lblleft">
      <asp:Label ID="Label2" runat="server" Text="Subject Code"></asp:Label>
          <asp:TextBox ID="txtSubjectCode" runat="server"></asp:TextBox>
      <br />
     <asp:Label ID="Label3" runat="server" Text="Subject Title:">
             </asp:Label><asp:TextBox ID="txtSubjectTitles" runat="server"></asp:TextBox>
      <br />
    <asp:Label ID="Label4" runat="server" Text="Curriculum:">
    </asp:Label><asp:TextBox ID="txtCurriculum" runat="server"></asp:TextBox>
      <br />
           <asp:Label ID="Label5" runat="server" Text="Grade Level:"></asp:Label>
          <asp:TextBox ID="txtGradelvl" runat="server" ></asp:TextBox>
      <br />
          <div style="text-align:center;"><asp:Button ID="btnSave" runat="server" Text="SAVE DATA" Width="121px" OnClick="btnSave_Click" /> 
              <asp:Label ID="lblsignWarning" runat="server" ForeColor="#CC0000" Text="COMPLETE THE INFO"></asp:Label>
          </div>
          </div>
    
  </div>
</div></div>
</asp:Content>
