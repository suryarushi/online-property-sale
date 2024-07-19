<%@ Page Language="C#" MasterPageFile="~/Admin_Master.master" AutoEventWireup="true" CodeFile="View_AreaWithCity.aspx.cs" Inherits="View_Area" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table width="100%">
<tr>
<td colspan="2" align="center">
<asp:Label ID="lblheader" runat="server" Text="View Area From Here" 
        Font-Bold="True" Font-Size="Medium" ForeColor="Blue" Font-Underline="True"></asp:Label>
</td>
</tr>
<tr>
<td align="center">
<asp:GridView ID="grvarea" runat="server" Width="100%" AutoGenerateColumns="False" 
        BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" 
        CellPadding="2" ForeColor="Black" GridLines="None" AllowSorting="true" 
        EmptyDataText="Currently No Data Available!" >
    <FooterStyle BackColor="Tan" />
    <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" 
        HorizontalAlign="Center" />
    <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
    <HeaderStyle BackColor="Tan" Font-Bold="True" />
    <AlternatingRowStyle BackColor="PaleGoldenrod" />
    <Columns>
    <asp:BoundField DataField="AreaName" HeaderText="Area" />
    <asp:BoundField DataField="cname" HeaderText="City" />
    <asp:TemplateField>
    <ItemTemplate>
    </ItemTemplate>
    </asp:TemplateField>
    </Columns>
</asp:GridView>
</td>
</tr>
</table>
</asp:Content>

