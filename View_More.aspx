<%@ Page Language="C#" MasterPageFile="~/Common.master" AutoEventWireup="true" CodeFile="View_More.aspx.cs" Inherits="View_More" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table width="100%">
<tr>
<td align="right" style="width:30%">
Features
</td>
<td align="left" style="width:70%">
<asp:Label ID="lblfeatures" runat="server" Text="" ForeColor="Red"></asp:Label>
</td>
</tr>
<tr>
<td align="right" style="width:30%">
Land mark
</td>
<td align="left" style="width:70%">
<asp:Label ID="landmark" runat="server" Text="" ForeColor="Red"></asp:Label>
</td>
</tr>
<tr>
<td align="right" style="width:30%">
Photo
</td>
<td align="left" style="width:70%">
<asp:Image ID="imgproperty" runat="server" Width="300px" Height="300px" />
</td>
</tr>
<tr>
<td align="center" colspan="2" style="color:Maroon; font-size:larger">
If you want to purchase this property then please contact <h5 style="font-family:Monotype Corsiva ; font-size:xx-large">9424485865</h5>Thanks........
</td>

</tr>
</table>
</asp:Content>

