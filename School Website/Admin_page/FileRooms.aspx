<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_page/AdminPage.Master" AutoEventWireup="true" CodeBehind="FileRooms.aspx.cs" Inherits="School_Website.Admin_page.FileRooms" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <link href="../Content/Header.css" rel="stylesheet" />
    <link href="../Content/ForForms.css" rel="stylesheet" />
    <link href="../Content/ModalAdmin.css" rel="stylesheet" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="heroContainer">
</div>
    <div class="Card">
        <h1 class="pas">ROOMS</h1>
      <p>  This Page is used for performing Add, Edit, Delete and Update Operations for Room Table.</p>
        <hr />
    </div>

    <div class="Operations">
        <asp:Label ID="Label1" runat="server" Text="Search:"></asp:Label>  <asp:TextBox ID="TxtSearchRooms" runat="server" OnTextChanged="TxtSearchRooms_TextChanged"></asp:TextBox>
    </div>
    <div class="Caption">
        <asp:SqlDataSource ID="tblSearch" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:USERSDATAConnectionString %>" DeleteCommand="DELETE FROM [ROOMS] WHERE [RoomName] = @original_RoomName AND (([RoomSize] = @original_RoomSize) OR ([RoomSize] IS NULL AND @original_RoomSize IS NULL)) AND (([MinimumCapacity] = @original_MinimumCapacity) OR ([MinimumCapacity] IS NULL AND @original_MinimumCapacity IS NULL)) AND (([MaximumCapacity] = @original_MaximumCapacity) OR ([MaximumCapacity] IS NULL AND @original_MaximumCapacity IS NULL)) AND (([State] = @original_State) OR ([State] IS NULL AND @original_State IS NULL))" InsertCommand="INSERT INTO [ROOMS] ([RoomName], [RoomSize], [MinimumCapacity], [MaximumCapacity], [State]) VALUES (@RoomName, @RoomSize, @MinimumCapacity, @MaximumCapacity, @State)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [ROOMS] WHERE ([RoomName] LIKE '%' + @RoomName + '%')" UpdateCommand="UPDATE [ROOMS] SET [RoomSize] = @RoomSize, [MinimumCapacity] = @MinimumCapacity, [MaximumCapacity] = @MaximumCapacity, [State] = @State WHERE [RoomName] = @original_RoomName AND (([RoomSize] = @original_RoomSize) OR ([RoomSize] IS NULL AND @original_RoomSize IS NULL)) AND (([MinimumCapacity] = @original_MinimumCapacity) OR ([MinimumCapacity] IS NULL AND @original_MinimumCapacity IS NULL)) AND (([MaximumCapacity] = @original_MaximumCapacity) OR ([MaximumCapacity] IS NULL AND @original_MaximumCapacity IS NULL)) AND (([State] = @original_State) OR ([State] IS NULL AND @original_State IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_RoomName" Type="String" />
                <asp:Parameter Name="original_RoomSize" Type="String" />
                <asp:Parameter Name="original_MinimumCapacity" Type="Int32" />
                <asp:Parameter Name="original_MaximumCapacity" Type="Int32" />
                <asp:Parameter Name="original_State" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="RoomName" Type="String" />
                <asp:Parameter Name="RoomSize" Type="String" />
                <asp:Parameter Name="MinimumCapacity" Type="Int32" />
                <asp:Parameter Name="MaximumCapacity" Type="Int32" />
                <asp:Parameter Name="State" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="TxtSearchRooms" Name="RoomName" PropertyName="Text" Type="String" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="RoomSize" Type="String" />
                <asp:Parameter Name="MinimumCapacity" Type="Int32" />
                <asp:Parameter Name="MaximumCapacity" Type="Int32" />
                <asp:Parameter Name="State" Type="String" />
                <asp:Parameter Name="original_RoomName" Type="String" />
                <asp:Parameter Name="original_RoomSize" Type="String" />
                <asp:Parameter Name="original_MinimumCapacity" Type="Int32" />
                <asp:Parameter Name="original_MaximumCapacity" Type="Int32" />
                <asp:Parameter Name="original_State" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="tblRooms" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:USERSDATAConnectionString %>" DeleteCommand="DELETE FROM [ROOMS] WHERE [RoomName] = @original_RoomName AND (([RoomSize] = @original_RoomSize) OR ([RoomSize] IS NULL AND @original_RoomSize IS NULL)) AND (([MinimumCapacity] = @original_MinimumCapacity) OR ([MinimumCapacity] IS NULL AND @original_MinimumCapacity IS NULL)) AND (([MaximumCapacity] = @original_MaximumCapacity) OR ([MaximumCapacity] IS NULL AND @original_MaximumCapacity IS NULL)) AND (([State] = @original_State) OR ([State] IS NULL AND @original_State IS NULL))" InsertCommand="INSERT INTO [ROOMS] ([RoomName], [RoomSize], [MinimumCapacity], [MaximumCapacity], [State]) VALUES (@RoomName, @RoomSize, @MinimumCapacity, @MaximumCapacity, @State)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [ROOMS]" UpdateCommand="UPDATE [ROOMS] SET [RoomSize] = @RoomSize, [MinimumCapacity] = @MinimumCapacity, [MaximumCapacity] = @MaximumCapacity, [State] = @State WHERE [RoomName] = @original_RoomName AND (([RoomSize] = @original_RoomSize) OR ([RoomSize] IS NULL AND @original_RoomSize IS NULL)) AND (([MinimumCapacity] = @original_MinimumCapacity) OR ([MinimumCapacity] IS NULL AND @original_MinimumCapacity IS NULL)) AND (([MaximumCapacity] = @original_MaximumCapacity) OR ([MaximumCapacity] IS NULL AND @original_MaximumCapacity IS NULL)) AND (([State] = @original_State) OR ([State] IS NULL AND @original_State IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_RoomName" Type="String" />
                <asp:Parameter Name="original_RoomSize" Type="String" />
                <asp:Parameter Name="original_MinimumCapacity" Type="Int32" />
                <asp:Parameter Name="original_MaximumCapacity" Type="Int32" />
                <asp:Parameter Name="original_State" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="RoomName" Type="String" />
                <asp:Parameter Name="RoomSize" Type="String" />
                <asp:Parameter Name="MinimumCapacity" Type="Int32" />
                <asp:Parameter Name="MaximumCapacity" Type="Int32" />
                <asp:Parameter Name="State" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="RoomSize" Type="String" />
                <asp:Parameter Name="MinimumCapacity" Type="Int32" />
                <asp:Parameter Name="MaximumCapacity" Type="Int32" />
                <asp:Parameter Name="State" Type="String" />
                <asp:Parameter Name="original_RoomName" Type="String" />
                <asp:Parameter Name="original_RoomSize" Type="String" />
                <asp:Parameter Name="original_MinimumCapacity" Type="Int32" />
                <asp:Parameter Name="original_MaximumCapacity" Type="Int32" />
                <asp:Parameter Name="original_State" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="grdRooms" runat="server" AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" DataKeyNames="RoomName" DataSourceID="tblRooms" ForeColor="Black" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" OnRowCancelingEdit ="grdRooms_RowCancelingEdit" OnRowDeleting="grdRooms_RowDeleting" OnRowEditing="grdRooms_RowEditing" OnRowUpdating="grdRooms_RowUpdating" Width="673px">
            <AlternatingRowStyle BackColor="PaleGoldenrod" />
            <Columns>
                <asp:BoundField DataField="RoomName" HeaderText="Room Name" ReadOnly="True" SortExpression="RoomName" />
                <asp:BoundField DataField="RoomSize" HeaderText="Room Size" SortExpression="RoomSize" />
                <asp:BoundField DataField="MinimumCapacity" HeaderText="Minimum Capacity" SortExpression="MinimumCapacity" />
                <asp:BoundField DataField="MaximumCapacity" HeaderText="Maximum Capacity" SortExpression="MaximumCapacity" />
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
    <h1>Add Data for Room</h1>
      <div class="Lblleft">
      <asp:Label ID="Label2" runat="server" Text="Room Name:"></asp:Label>
          <asp:TextBox ID="txtRoomName" runat="server"></asp:TextBox>
      <br />
     <asp:Label ID="Label3" runat="server" Text="Room Size:">
             </asp:Label><asp:TextBox ID="txtRoomSize" runat="server"></asp:TextBox>
      <br />
    <asp:Label ID="Label4" runat="server" Text="Minimun Capacity:">
    </asp:Label><asp:TextBox ID="txtminroom" runat="server"></asp:TextBox>
      <br />
           <asp:Label ID="Label5" runat="server" Text="Maximun Capacity:"></asp:Label>
          <asp:TextBox ID="txtmaxroom" runat="server" ></asp:TextBox>
      <br />
           <asp:Label ID="Label6" runat="server" Text="State:"></asp:Label>
          <asp:TextBox ID="txtStateRoom" runat="server" ></asp:TextBox>
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
