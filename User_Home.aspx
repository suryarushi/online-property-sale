<%@ Page Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="User_Home.aspx.cs" Inherits="User_Home" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="content1" Runat="Server">
<table width="100%" style="background-color:Aqua;">
<tr>
<td align="center" colspan="2">
<asp:Button ID="btnprofile" runat="server" Text="Go For Profile" Font-Size="Medium" 
        Font-Bold="true"  />
</td>
</tr>
<tr>
<td align="center" colspan="2">
<asp:Button ID="btnuploadPhoto" runat="server" Text="Propert Profile" 
        Font-Size="Medium" Font-Bold="true" />
</td>
</tr>
<tr>
<td align="center" colspan="2">
<asp:Button ID="Button1" runat="server" Text="Change Password" 
        Font-Size="Medium" Font-Bold="true" />
</td>
</tr>
</table>
</asp:Content>

