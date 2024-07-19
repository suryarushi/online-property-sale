﻿<%@ Page Language="C#" MasterPageFile="~/Admin_Master.master" AutoEventWireup="true" CodeFile="View_Users.aspx.cs" Inherits="View_Users" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table width="100%">
<tr>
<td colspan="2" align="center">
<asp:Label ID="lblheader" runat="server" Text="View Users From Here" Font-Bold="true" Font-Size="Medium" ForeColor="Blue" Font-Underline="true"></asp:Label>
</td>
</tr>
<tr>
<td align="center">
<asp:GridView ID="grvusers" runat="server" Width="100%" AllowPaging="True" 
        AllowSorting="True" AutoGenerateColumns="False" BackColor="White" 
        BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" 
        CellSpacing="1" DataKeyNames="username" 
        EmptyDataText="Currently No Data Available!" DataSourceID="SqlDataSource1" 
        GridLines="None" AutoGenerateDeleteButton="True">
    <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
    <Columns>
        <asp:BoundField DataField="username" HeaderText="username" ReadOnly="True" 
            SortExpression="username" />
        <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
        <asp:BoundField DataField="dob" HeaderText="dob" SortExpression="dob" Visible="false" />
        <asp:BoundField DataField="personaladdress" HeaderText="personaladdress" 
            SortExpression="personaladdress" />
        <asp:BoundField DataField="city" HeaderText="city" SortExpression="city" />
        <asp:BoundField DataField="contact" HeaderText="contact" 
            SortExpression="contact" />
        <asp:BoundField DataField="occupation" HeaderText="occupation" 
            SortExpression="occupation" />
    </Columns>
    <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
    <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
    <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
    <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
</asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT * FROM [tbl_personaldetails]" DeleteCommand="Delete from tbl_personaldetails where username=@username" ></asp:SqlDataSource>
</td>
</tr>
</table>
</asp:Content>
