<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Events.aspx.cs" Inherits="School_Website.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
  
    <link href="EventsPic/Events.css" rel="stylesheet" />
    <br />
    <br />
<h1>Gallery</h1>
<hr>

<h2>Events and Snapshots</h2>

<div class="row">
  <div class="column">
    <div class="content">
      <img src="EventsPic/pic1e.jpg"  style="width:100%">
      <h3>School Field</h3>
    </div>
  </div>
  <div class="column">
    <div class="content">
      <img src="EventsPic/pic4e.jpg"  style="width:100%; height: 175px;">
      <h3>Awarding</h3>
    </div>
  </div>
  <div class="column">
    <div class="content">
      <img src="EventsPic/pic3e.jpg"  style="width:100%">
      <h3>Reading</h3>
    </div>
  </div>
  <div class="column">
    <div class="content">
      <img src="EventsPic/pic2e.jpg"  style="width:100%">
      <h3>Classroom</h3>
    </div>
  </div>
</div>


</asp:Content>
