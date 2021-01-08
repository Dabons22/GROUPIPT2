<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_page/AdminPage.Master" AutoEventWireup="true" CodeBehind="FileTeacher.aspx.cs" Inherits="School_Website.Admin_page.FileTeacher" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
       <link href="../Content/Header.css" rel="stylesheet" />
    <link href="../Content/ForForms.css" rel="stylesheet" />
    <link href="../Content/TeacherModal.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class ="heroContainer">
    </div>
    <div class="Card">
        <h1 class="pas">Teacher</h1>
      <p>  This Page is used for performing Add, Edit, Delete and Update Operations for Subject Table.</p>
        <hr />
    </div>

    <div class="Operations">
        <asp:Label ID="Label1" runat="server" Text="Search:"></asp:Label><asp:TextBox ID="txtSearchName" runat="server" OnTextChanged="txtSearchName_TextChanged"></asp:TextBox>
    </div>
    <div class="Caption">
        <asp:SqlDataSource ID="tblTeacher" runat="server" ConnectionString="<%$ ConnectionStrings:USERSDATAConnectionString %>" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [TeacherID], [LastName], [FirstName], [Email], [ContactNo], [SectionAdvisory], [PRCID], [MinorSubjectAssignments], [MajorSubjectAssignments], [ProfessionalQualification] FROM [TEACHERS]" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [TEACHERS] WHERE [TeacherID] = @original_TeacherID AND (([LastName] = @original_LastName) OR ([LastName] IS NULL AND @original_LastName IS NULL)) AND (([FirstName] = @original_FirstName) OR ([FirstName] IS NULL AND @original_FirstName IS NULL)) AND (([Email] = @original_Email) OR ([Email] IS NULL AND @original_Email IS NULL)) AND (([ContactNo] = @original_ContactNo) OR ([ContactNo] IS NULL AND @original_ContactNo IS NULL)) AND (([SectionAdvisory] = @original_SectionAdvisory) OR ([SectionAdvisory] IS NULL AND @original_SectionAdvisory IS NULL)) AND (([PRCID] = @original_PRCID) OR ([PRCID] IS NULL AND @original_PRCID IS NULL)) AND (([MinorSubjectAssignments] = @original_MinorSubjectAssignments) OR ([MinorSubjectAssignments] IS NULL AND @original_MinorSubjectAssignments IS NULL)) AND (([MajorSubjectAssignments] = @original_MajorSubjectAssignments) OR ([MajorSubjectAssignments] IS NULL AND @original_MajorSubjectAssignments IS NULL)) AND (([ProfessionalQualification] = @original_ProfessionalQualification) OR ([ProfessionalQualification] IS NULL AND @original_ProfessionalQualification IS NULL))" InsertCommand="INSERT INTO [TEACHERS] ([TeacherID], [LastName], [FirstName], [Email], [ContactNo], [SectionAdvisory], [PRCID], [MinorSubjectAssignments], [MajorSubjectAssignments], [ProfessionalQualification]) VALUES (@TeacherID, @LastName, @FirstName, @Email, @ContactNo, @SectionAdvisory, @PRCID, @MinorSubjectAssignments, @MajorSubjectAssignments, @ProfessionalQualification)" UpdateCommand="UPDATE [TEACHERS] SET [LastName] = @LastName, [FirstName] = @FirstName, [Email] = @Email, [ContactNo] = @ContactNo, [SectionAdvisory] = @SectionAdvisory, [PRCID] = @PRCID, [MinorSubjectAssignments] = @MinorSubjectAssignments, [MajorSubjectAssignments] = @MajorSubjectAssignments, [ProfessionalQualification] = @ProfessionalQualification WHERE [TeacherID] = @original_TeacherID AND (([LastName] = @original_LastName) OR ([LastName] IS NULL AND @original_LastName IS NULL)) AND (([FirstName] = @original_FirstName) OR ([FirstName] IS NULL AND @original_FirstName IS NULL)) AND (([Email] = @original_Email) OR ([Email] IS NULL AND @original_Email IS NULL)) AND (([ContactNo] = @original_ContactNo) OR ([ContactNo] IS NULL AND @original_ContactNo IS NULL)) AND (([SectionAdvisory] = @original_SectionAdvisory) OR ([SectionAdvisory] IS NULL AND @original_SectionAdvisory IS NULL)) AND (([PRCID] = @original_PRCID) OR ([PRCID] IS NULL AND @original_PRCID IS NULL)) AND (([MinorSubjectAssignments] = @original_MinorSubjectAssignments) OR ([MinorSubjectAssignments] IS NULL AND @original_MinorSubjectAssignments IS NULL)) AND (([MajorSubjectAssignments] = @original_MajorSubjectAssignments) OR ([MajorSubjectAssignments] IS NULL AND @original_MajorSubjectAssignments IS NULL)) AND (([ProfessionalQualification] = @original_ProfessionalQualification) OR ([ProfessionalQualification] IS NULL AND @original_ProfessionalQualification IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_TeacherID" Type="String" />
                <asp:Parameter Name="original_LastName" Type="String" />
                <asp:Parameter Name="original_FirstName" Type="String" />
                <asp:Parameter Name="original_Email" Type="String" />
                <asp:Parameter Name="original_ContactNo" Type="String" />
                <asp:Parameter Name="original_SectionAdvisory" Type="String" />
                <asp:Parameter Name="original_PRCID" Type="String" />
                <asp:Parameter Name="original_MinorSubjectAssignments" Type="String" />
                <asp:Parameter Name="original_MajorSubjectAssignments" Type="String" />
                <asp:Parameter Name="original_ProfessionalQualification" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="TeacherID" Type="String" />
                <asp:Parameter Name="LastName" Type="String" />
                <asp:Parameter Name="FirstName" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="ContactNo" Type="String" />
                <asp:Parameter Name="SectionAdvisory" Type="String" />
                <asp:Parameter Name="PRCID" Type="String" />
                <asp:Parameter Name="MinorSubjectAssignments" Type="String" />
                <asp:Parameter Name="MajorSubjectAssignments" Type="String" />
                <asp:Parameter Name="ProfessionalQualification" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="LastName" Type="String" />
                <asp:Parameter Name="FirstName" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="ContactNo" Type="String" />
                <asp:Parameter Name="SectionAdvisory" Type="String" />
                <asp:Parameter Name="PRCID" Type="String" />
                <asp:Parameter Name="MinorSubjectAssignments" Type="String" />
                <asp:Parameter Name="MajorSubjectAssignments" Type="String" />
                <asp:Parameter Name="ProfessionalQualification" Type="String" />
                <asp:Parameter Name="original_TeacherID" Type="String" />
                <asp:Parameter Name="original_LastName" Type="String" />
                <asp:Parameter Name="original_FirstName" Type="String" />
                <asp:Parameter Name="original_Email" Type="String" />
                <asp:Parameter Name="original_ContactNo" Type="String" />
                <asp:Parameter Name="original_SectionAdvisory" Type="String" />
                <asp:Parameter Name="original_PRCID" Type="String" />
                <asp:Parameter Name="original_MinorSubjectAssignments" Type="String" />
                <asp:Parameter Name="original_MajorSubjectAssignments" Type="String" />
                <asp:Parameter Name="original_ProfessionalQualification" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="tblSearch" runat="server" ConnectionString="<%$ ConnectionStrings:USERSDATAConnectionString %>" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [SectionAdvisory], [PRCID], [MinorSubjectAssignments], [MajorSubjectAssignments], [ProfessionalQualification], [Email], [ContactNo], [FirstName], [LastName], [TeacherID] FROM [TEACHERS] WHERE ([LastName] LIKE '%' + @LastName + '%')">
            <SelectParameters>
                <asp:ControlParameter ControlID="txtSearchName" Name="LastName" PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="grdTeacher" runat="server" AutoGenerateColumns="False" DataKeyNames="TeacherID" DataSourceID="tblTeacher" Width="884px" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None" OnRowCancelingEdit="grdTeacher_RowCancelingEdit" OnRowUpdating="grdTeacher_RowUpdating" OnRowEditing="grdTeacher_RowEditing" OnRowDeleting="grdTeacher_RowDeleting">
            <AlternatingRowStyle BackColor="PaleGoldenrod" />
            <Columns>
                <asp:BoundField DataField="TeacherID" HeaderText="TeacherID" SortExpression="TeacherID" ReadOnly="True" />
                <asp:BoundField DataField="LastName" HeaderText="Last Name" SortExpression="LastName" />
                <asp:BoundField DataField="FirstName" HeaderText="First Name" SortExpression="FirstName" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:BoundField DataField="ContactNo" HeaderText="ContactNo" SortExpression="ContactNo" />
                <asp:BoundField DataField="SectionAdvisory" HeaderText="Section Advisory" SortExpression="SectionAdvisory" />
                <asp:BoundField DataField="PRCID" HeaderText="PRCID" SortExpression="PRCID" />
                <asp:BoundField DataField="MinorSubjectAssignments" HeaderText="MinorSubject Assignments" SortExpression="MinorSubjectAssignments" />
                <asp:BoundField DataField="MajorSubjectAssignments" HeaderText="MajorSubject Assignments" SortExpression="MajorSubjectAssignments" />
                <asp:BoundField DataField="ProfessionalQualification" HeaderText="Professional Qualification" SortExpression="ProfessionalQualification" />
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
    <h1>Add Data for Teacher</h1>
      <div class="Lblleft">
      <asp:Label ID="Label2" runat="server" Text="Teacher ID:"></asp:Label>
          <asp:TextBox ID="txtTeacherID" runat="server"></asp:TextBox>
      <br />
          <asp:Label ID="Label3" runat="server" Text="Last Name:"></asp:Label>
          <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>
      <br />
       <asp:Label ID="Label4" runat="server" Text="First Name:"></asp:Label>
          <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>
      <br /><asp:Label ID="Label5" runat="server" Text="Email:"></asp:Label>
          <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
      <br />
          <asp:Label ID="Label6" runat="server" Text="Contact #:"></asp:Label>
          <asp:TextBox ID="txtContact" runat="server"></asp:TextBox>
      <br /><asp:Label ID="Label7" runat="server" Text="Section Advisory:"></asp:Label>
          <asp:TextBox ID="txtSectionAdd" runat="server"></asp:TextBox>
      <br /><asp:Label ID="Label8" runat="server" Text="PRCID:"></asp:Label>
          <asp:TextBox ID="txtPrcid" runat="server"></asp:TextBox>
      <br />
      <asp:Label ID="Label9" runat="server" Text="Minor Subject Assignment:"></asp:Label>
          <asp:TextBox ID="txtMinorSubject" runat="server"></asp:TextBox>
      <br />
      <asp:Label ID="Label10" runat="server" Text="Major Subject Assignment:"></asp:Label>
          <asp:TextBox ID="txtMajorSubject" runat="server"></asp:TextBox>
      <br /><asp:Label ID="Label11" runat="server" Text="Professional Qualification:"></asp:Label>
          <asp:TextBox ID="txtProfessionalQualification" runat="server"></asp:TextBox>
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
