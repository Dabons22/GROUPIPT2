<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_page/AdminPage.Master" AutoEventWireup="true" CodeBehind="FileMangement.aspx.cs" Inherits="School_Website.Admin_page.FileMangement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
          <link href="../Content/Header.css" rel="stylesheet" />
    <link href="../Content/ForForms.css" rel="stylesheet" />
    <link href="../Content/ColumnsManagement.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="heroContainer">
</div>
    <div class="Card">
            <h1 class="pas">Maintenance</h1>
      <p>  This Page is used for performing Add, Edit, Delete and Update Operations for Tables.</p>
    
    </div>
   <hr /> 
<div class ="CENTERING">
      <div class = "row"> 
              
            <div class = "columnA"> 
                <a href="FileCurriculum_MAIN.aspx"><h2>Curriculum</h2></a> 
            </div>  
                        
            <div class = "columnB"> 
                <a href="FileRooms.aspx" ><h2>Rooms</h2></a>
       
            </div> 
               <div class = "columnC"> 
                <a href="FileSchoolYear.aspx" ><h2>School Year</h2> </a>
            </div> 
        </div> 
    <hr />
    <br />
    <div class="row">
     <div class = "columnA"> 
                <a href ="FileSection.aspx"><h2>Sections</h2></a> 
            </div>  
                        
            <div class = "columnB"> 
                <a href="FileSubject.aspx"><h2>Subject</h2> </a>
       
            </div> 
               <div class = "columnC"> 
                <a href="FileTeacher.aspx" ><h2>Teacher</h2> </a>
            </div> 
       </div>
    </div>
</asp:Content>
