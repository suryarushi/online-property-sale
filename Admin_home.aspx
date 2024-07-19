<%@ Page Language="C#" MasterPageFile="~/Admin_Master.master" AutoEventWireup="true" CodeFile="Admin_home.aspx.cs" Inherits="Admin_home" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table width="100%" style="background-color:Aqua; ">
<tr >
<td align="center"  style="background-color:Gray; font-size:x-large; border:1px; border-color:Black; border-style:solid;">
Add City
</td>
<td align="center"  style="background-color:Gray; border:1px; border-color:Black; border-style:solid; font-size:x-large;">
Add Area
</td>
<td align="center"  style="background-color:Gray; border:1px; border-color:Black; border-style:solid; font-size:x-large;">
Add Category
</td>
</tr>
<tr>
<td align="center"  style="background-color:Gray; border:1px; border-color:Black; border-style:solid; font-size:x-large;">
View City
</td>
<td align="center"  style="background-color:Gray; border:1px; border-color:Black; border-style:solid; font-size:x-large;">
View Areas
</td>
<td align="center"  style="background-color:Gray; border:1px; border-color:Black; border-style:solid; font-size:x-large;">
View City & Area's 
</td>
</tr>
<tr >
<td align="center"  style="background-color:Gray; font-size:x-large; border:1px; border-color:Black; border-style:solid;">
View Users
</td>
<td align="center"  style="background-color:Gray; border:1px; border-color:Black; border-style:solid; font-size:x-large;">
View Properties
</td>
<td align="center"  style="background-color:Gray; border:1px; border-color:Black; border-style:solid; font-size:x-large;">
View Contact's
</td>
</tr>
<tr>
<td align="center" colspan="3" style="border:1px; border-color:Black; border-style:solid;">
<asp:Button ID="btnnext" runat="server" Text="Go For Pannel" Font-Bold="true" 
        Font-Size="Large" onclick="btnnext_Click" />
</td>
</tr>
</table>
</asp:Content>

