<%@ Page Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="User_PersonalProfile.aspx.cs" Inherits="User_PersonalProfile" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="content1" Runat="Server">
    <asp:ScriptManager ID="sm1" runat="server"></asp:ScriptManager>
<asp:UpdatePanel ID="up1" runat="server">
<ContentTemplate>
    <table width="100%" style="background-color:Aqua;">
<tr>
<td align="center" colspan="2">
<asp:Label ID="lblheader" runat="server" Text="My Profile" Font-Underline="true" Font-Size="Large" Font-Bold="true" ForeColor="Violet"></asp:Label>
</td>
</tr>
<tr>
<td align="right" style="width:50%">
Name
</td>
<td align="left" style="width:50%">
<asp:Label ID="lblname" Text="" runat="server" Width="230px" Font-Bold="true" Font-Size="Medium" ></asp:Label>
<asp:TextBox ID="txtname" runat="server" Visible="false"></asp:TextBox>

</td>
</tr>

<tr>
<td align="right" style="width:50%">
Address
</td>
<td align="left" style="width:50%">
<asp:Label ID="lbladdress" Text="Nehu nagar ,police line" runat="server" Width="230px" Font-Bold="true" Font-Size="Smaller" ></asp:Label>
<asp:TextBox ID="txtaddress" runat="server" Visible="false" ></asp:TextBox>
</td>
</tr>
<tr>
<td align="right" style="width:50%">
City
</td>
<td align="left" style="width:50%">
<asp:Label ID="lblcity" Text="" runat="server" Font-Bold="true" Width="230px" Font-Size="Medium" ></asp:Label>
<asp:TextBox ID="txtcity" runat="server" Visible="false"></asp:TextBox>

</td>
</tr>
<tr>
<td align="right" style="width:50%">
contact
</td>
<td align="left" style="width:50%">
<asp:Label ID="lblcontact" Text="" runat="server" Width="230px" Font-Bold="true" Font-Size="Medium" ></asp:Label>
<asp:TextBox ID="txtcontact" runat="server" Visible="false"></asp:TextBox>

</td>
</tr>
<tr>
<td align="right" style="width:50%">
Occupation
</td>
<td align="left" style="width:50%">
<asp:Label ID="lbloccupation" Text="" runat="server" Width="230px" Font-Bold="true" Font-Size="Medium" ></asp:Label>
<asp:TextBox ID="txtoccupation" runat="server" Visible="false"></asp:TextBox>

</td>
</tr>
<tr>
<td align="right" style="width:50%">
</td>
<td align="left" style="width:50%">
<asp:Button ID="btnupdate" runat="server" Text="Want To Update" OnClick="btnupdate_Click" Font-Bold="true" />
<asp:Label ID="lblinfo" runat="server" Text="" ForeColor="Red"></asp:Label>
</td>
</tr>
</table>
</ContentTemplate>
</asp:UpdatePanel>

</asp:Content>

