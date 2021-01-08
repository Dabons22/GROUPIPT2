<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="School_Website._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>School</h1>
        <p class="lead">Enjoy learning in a stress free environment where every student cherish the knowledge</p>
      </div>

    <div class="row">
        <div class="col-md-4">
            <h2>Forums</h2>
            <p>
              A place, meeting, or medium where ideas and views on a particular issue can be exchanged.</p>
           <p>
                <a class="btn btn-default" href="#">Learn more &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>News</h2>
            <p>
             Online learning opportunities and the use of open educational resources and other technologies can increase educational productivity by accelerating the rate of learning; reducing costs associated with instructional materials or program delivery; and better utilizing teacher time. </p>
            <p>
                <a class="btn btn-default" href="News.aspx">Learn more &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Events</h2>
            <p>the school established several guidelines. We created these guidelines so everyone can have an enjoyable experience in this much-awaited event.
            
            </p>
            <p>
                <a class="btn btn-default" href="Events.aspx">Learn more &raquo;</a>
            </p>
        </div>
    </div>

</asp:Content>
