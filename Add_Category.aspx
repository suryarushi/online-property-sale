<%@ Page Language="C#" MasterPageFile="~/Admin_Master.master" AutoEventWireup="true" CodeFile="Add_Category.aspx.cs" Inherits="Add_Category" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <table width="100%">
<tr>
<td colspan="2" align="center">
<asp:Label ID="lblheader" runat="server" Text="Add Category From Here" Font-Bold="true" Font-Size="Medium" ForeColor="Blue" Font-Underline="true"></asp:Label>
</td>
</tr>
<tr>
<td align="right" style="width:50%">
Category No
</td>
<td align="left" style="width:50%">
<asp:Label ID="lblcatno" runat="server" Font-Bold="true" Text=""></asp:Label>
</td>
</tr>

<tr>
<td align="right" style="width:50%">
Category Name
</td>
<td align="left" style="width:50%">
<asp:TextBox ID="txtcatname" runat="server"></asp:TextBox>
</td>
</tr>

<tr>
<td align="right" style="width:50%">
</td>
<td align="left" style="width:50%">
<asp:Button ID="btnadd" runat="server" Text="Add" Font-Bold="true" 
        onclick="btnadd_Click" />
<asp:Label ID="lblinfo" runat="server" Text="" ForeColor="Red"></asp:Label>
</td>
</tr>
</table>
</asp:Content>

