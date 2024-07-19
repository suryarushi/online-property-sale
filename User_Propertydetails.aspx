<%@ Page Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="User_Propertydetails.aspx.cs" Inherits="User_Propertydetails" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="content1" Runat="Server">
    <asp:ScriptManager ID="sm1" runat="server"></asp:ScriptManager>
<asp:UpdatePanel ID="up1" runat="server">
<ContentTemplate>
    <table width="100%" style="background-color:Aqua;">
<tr>
<td align="center" colspan="2">
<asp:Label ID="lblheader" runat="server" Text="My Propery Profile" Font-Underline="true" Font-Size="Large" Font-Bold="true" ForeColor="Violet"></asp:Label>
</td>
</tr>
<tr>
<td align="right" style="width:50%">
Category
</td>
<td align="left" style="width:50%">
<asp:Label ID="lblcategory" Text="" runat="server" Width="230px" Font-Bold="true" Font-Size="Medium" ></asp:Label>
<asp:DropDownList ID="ddlcategory" runat="server" Width="169px" Visible="False" 
        DataSourceID="SqlDataSource1" DataTextField="catname" DataValueField="catid"></asp:DropDownList>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT * FROM [tbl_category]"></asp:SqlDataSource>

</td>
</tr>

<tr>
<td align="right" style="width:50%">
 Propery In City
</td>
<td align="left" style="width:50%">
<asp:Label ID="lblpcity" Text="Nehu nagar ,police line" runat="server" Width="230px" Font-Bold="true" Font-Size="Smaller" ></asp:Label>
<asp:DropDownList ID="ddlcity" Visible="False" runat="server" Width="169px" 
        AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="cname" 
        DataValueField="cid" onselectedindexchanged="ddlcity_SelectedIndexChanged"></asp:DropDownList>

    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT * FROM [tbl_city]"></asp:SqlDataSource>

</td>
</tr>
<tr>
<td align="right" style="width:50%">
Area Of Property
</td>
<td align="left" style="width:50%">
<asp:Label ID="lblparea" Text="" runat="server" Width="230px" Font-Bold="true" Font-Size="Medium" ></asp:Label>
<asp:DropDownList ID="ddlarea" Visible="false" runat="server" Width="169px"></asp:DropDownList>
</td>
</tr>
<tr>
<td align="right" style="width:50%">
Property Address
</td>
<td align="left" style="width:50%">
<asp:Label ID="lblpaddress" Text="" runat="server" Font-Bold="true" Width="230px" Font-Size="Small" ></asp:Label>
<asp:TextBox ID="txtpaddress" runat="server" Width="230px" TextMode="MultiLine" Height="69px" Visible="false"></asp:TextBox>

</td>
</tr>
<tr>
<td align="right" style="width:50%">
Landmark
</td>
<td align="left" style="width:50%">
<asp:Label ID="lbllandmark" Text="" Font-Bold="true" runat="server" Width="230px" Font-Size="Small" ></asp:Label>
<asp:TextBox ID="txtplandmark" runat="server"  Visible="false"></asp:TextBox>

</td>
</tr>
<tr>
<td align="right" style="width:50%">
Property Size
</td>
<td align="left" style="width:50%">
<asp:Label ID="lblsize" Text="" runat="server" Font-Bold="true" Width="230px" Font-Size="Small" ></asp:Label>
<asp:TextBox ID="txtpsize" runat="server" Height="69px" Visible="false"></asp:TextBox>

</td>
</tr>
<tr>
<td align="right" style="width:50%">
Demand Price
</td>
<td align="left" style="width:50%">
<asp:Label ID="lbldemandprice" Text="" Font-Bold="true" runat="server" Width="230px" Font-Size="Small" ></asp:Label>
<asp:TextBox ID="txtdemandprice" runat="server" Height="69px" Visible="false"></asp:TextBox>

</td>
</tr>
<tr>
<td align="right" style="width:50%">
Property Photo
</td>
<td align="left" style="width:50%">
<asp:Image ID="imguser" runat="server" Height="150px" Width="200px" />
</td>
</tr>
<tr>
<td align="right" style="width:50%">
Property Features
</td>
<td align="left" style="width:50%">
<asp:Label ID="lblpfeatures" Text="" Font-Bold="true" runat="server" Width="230px" Font-Size="Small" ></asp:Label>
<asp:TextBox ID="txtfeatures" Font-Bold="true" runat="server" Width="230px" TextMode="MultiLine" Font-Size="Smaller" Height="69px" Visible="false"></asp:TextBox>

</td>
</tr>
<tr>
<td align="right" style="width:50%">
</td>
<td align="left" style="width:50%">
<asp:Button ID="btnupdate" runat="server" Text="Want To Update" Font-Bold="true" 
        onclick="btnupdate_Click" />
<asp:Label ID="lblinfo" runat="server" Text="" ForeColor="Red"></asp:Label>
</td>
</tr>
</table>
</ContentTemplate>
</asp:UpdatePanel>

</asp:Content>

