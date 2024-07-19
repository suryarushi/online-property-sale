<%@ Page Language="C#" MasterPageFile="~/Common.master" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Contact" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table width="100%">
<tr>
<td align="right">
Email
</td>
<td align="left">
<asp:TextBox ID="txtemail" runat="server" Width="329px"></asp:TextBox>

</td>
</tr>
<tr>
<td align="right">
Subject
</td>
<td align="left">
<asp:TextBox ID="txtsubject" runat="server" Width="329px"></asp:TextBox>
</td>
</tr>
<tr>
<td align="right">
Query
</td>
<td align="left">
    <asp:TextBox ID="txtquery" runat="server" TextMode="MultiLine" Height="139px" Width="329px"></asp:TextBox>
</td>
</tr>
<tr>
<td align="right">
</td>
<td align="left">
<asp:Button ID="btnsubmit" runat="server" Text="Submit" Font-Bold="true" 
        onclick="btnsubmit_Click"  />
<asp:Label ID="lbldisplay" runat="server" Text=""></asp:Label>
</td>
</tr>
</table>
</asp:Content>

