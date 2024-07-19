<%@ Page Language="C#" MasterPageFile="~/Admin_Master.master" AutoEventWireup="true" CodeFile="Admin_ChangePassword.aspx.cs" Inherits="Admin_ChangePassword" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table width="100%" style="background-color:Aqua;">
<tr>
<td align="center" colspan="2">
<asp:Label ID="lblheader" runat="server" Text="Change Password" Font-Underline="true" Font-Size="Large" Font-Bold="true" ForeColor="Violet"></asp:Label>
</td>
</tr>
<tr>
<td align="right" style="width:50%">
User Name
</td>
<td align="left" style="width:50%">
<asp:TextBox ID="txtusername" runat="server" Enabled="False" ReadOnly="True"></asp:TextBox>
</td>
</tr>
<tr>
<td align="right" style="width:50%">
Old Password
</td>
<td align="left" style="width:50%">
<asp:TextBox ID="txtoldpass" runat="server" TextMode="Password"></asp:TextBox>
</td>
</tr>
<tr>
<td align="right" style="width:50%">
New Password 
</td>
<td align="left" style="width:50%">
<asp:TextBox ID="txtnewpass" runat="server" TextMode="Password"></asp:TextBox>
</td>
</tr>
<tr>
<td align="right" style="width:50%">
Confirm Password
</td>
<td align="left" style="width:50%">
<asp:TextBox ID="txtconfirmpass" runat="server" TextMode="Password"></asp:TextBox>
</td>
</tr>
<tr>
<td align="right" style="width:50%">
</td>
<td align="left" style="width:50%">
<asp:Button ID="btnchangepass" runat="server" Text="Change Password" 
        ForeColor="Blue" Font-Bold="true" onclick="btnchangepass_Click" />
<asp:Label ID="lbldisplay" runat="server" Text="" ForeColor="Red"></asp:Label>
</td>
</tr>
</table>
</asp:Content>

