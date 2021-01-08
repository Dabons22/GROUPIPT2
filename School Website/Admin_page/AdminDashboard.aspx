<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_page/AdminPage.Master" AutoEventWireup="true" CodeBehind="AdminDashboard.aspx.cs" Inherits="School_Website.Admin_page.AdminDashboard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../Content/AdminDashboard.css" rel="stylesheet" />
  </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <br />
    <div class="containers">
<div class="left">
    <h1>Welcome Administrator</h1>
    <div class="subcom">
      <img alt="" class="icon-containers" src="../Pictures/Admin/management.jpg" />
        <h1 style="margin-top:-0.4px;"><a href="FileMangement.aspx">File Manager</a></h1>
     </div>
     
<div class="childs">
</div>
<div class="childs">
</div>
    <div class="childs">
</div>

</div>
    <div class="right">
       <img alt="" class="icon-containers" src="../Pictures/Admin/reports.png" />
    <div class =" descCard">
        <h3>Report</h3>
    </div>
</div>
<div class="right">
 <img alt="" class="icon-containers" src="../Pictures/Admin/inquiry.png" />
    <div class =" descCard">
        <h3>Inquiry</h3>
    </div>
</div>
        
<div class="right">
 <img alt="" class="icon-containers" src="../Pictures/Admin/utils.jpg" />
    <div class =" descCard">
        <h3>Utilities</h3>
    </div>
</div>
 </div> 
    
</asp:Content>
