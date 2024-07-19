<%@ Page Language="C#" MasterPageFile="~/Common.master" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Registration" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table width="100%">
<tr>
<td align="center" colspan="2" style="background-color:Teal;">
<h3 style="color:Blue;">Personal Details</h3>
</td>
</tr>
<tr>
<td align="right">
Username
</td>
<td align="left">
<asp:TextBox ID="txtusername" runat="server"></asp:TextBox>
<asp:RequiredFieldValidator ID="rfvusername" runat="server" ErrorMessage="*" 
        ControlToValidate="txtusername"></asp:RequiredFieldValidator>
</td>
</tr>
<tr>
<td align="right">
Password
</td>
<td align="left">
<asp:TextBox ID="txtpassword" runat="server" TextMode="Password"></asp:TextBox>
<asp:RequiredFieldValidator ID="rfvpass" runat="server" ErrorMessage="*" 
        ControlToValidate="txtpassword"></asp:RequiredFieldValidator>
</td>
</tr>
<tr>
<td align="right">
Confirm Password
</td>
<td align="left">
<asp:TextBox ID="txtconfirmpass" runat="server" TextMode="Password"></asp:TextBox>
<asp:CompareValidator ID="reqcpass" runat="server" ControlToCompare="txtpassword" 
        ControlToValidate="txtconfirmpass" 
        ErrorMessage="Does Not Match With Password"></asp:CompareValidator>
</td>
</tr>
<tr>
<td align="right">
Name
</td>
<td align="left">
<asp:TextBox ID="txtname" runat="server"></asp:TextBox>
<asp:RequiredFieldValidator ID="rfv3" runat="server" ErrorMessage="*" 
        ControlToValidate="txtname"></asp:RequiredFieldValidator>
</td>
</tr>
<tr>
<td align="right">
Date of Birth(mm/dd/yyyy)
</td>
<td align="left">
<asp:TextBox ID="txtdob" runat="server"></asp:TextBox>
<asp:RequiredFieldValidator ID="rfv5" runat="server" ErrorMessage="*" 
        ControlToValidate="txtdob"></asp:RequiredFieldValidator>
</td>
</tr>
<tr>
<td align="right">
Personal Address
</td>
<td align="left">
<asp:TextBox ID="txtaddress" TextMode="MultiLine" Width="270px" Height="69px" runat="server"></asp:TextBox>
</td>
</tr>
<tr>
<td align="right">
City
</td>
<td align="left">
<asp:TextBox ID="txtcity" runat="server"></asp:TextBox>
</td>
</tr>
<tr>
<td align="right">
Contact
</td>
<td align="left">
<asp:TextBox ID="txtcontact" runat="server"></asp:TextBox>
</td>
</tr>
<tr>
<td align="right">
Occupation
</td>
<td align="left">
<asp:TextBox ID="txtoccupation" runat="server"></asp:TextBox>
</td>
</tr>
<tr>
<td align="center" colspan="2" style="background-color:Teal;">
<h3 style="color:Blue">Property Details</h3>
</td>
</tr>
<tr>
<td align="right">
Select Category
</td>
<td align="left">
<asp:DropDownList ID="ddlcategory" runat="server" Width="179px" 
        DataSourceID="SqlDataSource2" DataTextField="catname" DataValueField="catid"></asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT * FROM [tbl_category]"></asp:SqlDataSource>
</td>
</tr>
<asp:ScriptManager ID="sm1" runat="server"></asp:ScriptManager>
<tr>
<td align="right">
Property In City
</td>
<td align="left">
<asp:UpdatePanel ID="up1" runat="server">
<ContentTemplate>
<asp:DropDownList ID="ddlpcity" runat="server" Width="179px" AutoPostBack="True" 
        DataSourceID="SqlDataSource1" DataTextField="cname" DataValueField="cid" 
        onselectedindexchanged="ddlpcity_SelectedIndexChanged"></asp:DropDownList>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT * FROM [tbl_city]"></asp:SqlDataSource>

</ContentTemplate>
</asp:UpdatePanel>
</td>
</tr>
<tr>
<td align="right">
Property Area
</td>
<td align="left">
<asp:UpdatePanel ID="up2" runat="server">
<ContentTemplate>
<asp:DropDownList ID="ddlarea" runat="server" Width="179px" 
        DataSourceID="SqlDataSource3" DataTextField="AreaName" 
        DataValueField="AreaName"></asp:DropDownList>

    <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        onselecting="SqlDataSource3_Selecting" 
        SelectCommand="SELECT [AreaName] FROM [area]"></asp:SqlDataSource>

</ContentTemplate>
</asp:UpdatePanel>
</td>
</tr>
<tr>
<td align="right">
Property Address
</td>
<td align="left">
<asp:TextBox ID="txtpaddress" TextMode="MultiLine" Width="270px" Height="69px" runat="server"></asp:TextBox>
</td>
</tr>
<tr>
<td align="right">
Property Landmark
</td>
<td align="left">
<asp:TextBox ID="txtlandmark" TextMode="MultiLine" runat="server"></asp:TextBox>
</td>
</tr>
<tr>
<td align="right">
Property Size(In Sqft)
</td>
<td align="left">
<asp:TextBox ID="txtpsize" runat="server" MaxLength="5"></asp:TextBox>
</td>
</tr>
<tr>
<td align="right">
Demand Price
</td>
<td align="left">
<asp:TextBox ID="txtdemandprice" runat="server"></asp:TextBox>
</td>
</tr>
<tr>
<td align="right">
Property Image(if any do You have)
</td>
<td align="left">
<asp:FileUpload ID="FileUpload1" runat="server" />
<asp:RequiredFieldValidator ID="rfv2" runat="server" ErrorMessage="*" 
        ControlToValidate="FileUpload1"></asp:RequiredFieldValidator>
</td>
</tr>
<tr>
<td align="right">
Property Features(i.e posh location,near station etc.)
</td>
<td align="left">
<asp:TextBox ID="txtfeatures" Width="270px" Height="69px" TextMode="MultiLine" runat="server"></asp:TextBox>
</td>
</tr>
<tr>
<td align="right">
</td>
<td align="left">
<asp:Button ID="btnsubmit" runat="server" Text="Submit" Font-Bold="true" 
        onclick="btnsubmit_Click" />
<asp:Label ID="lbldisplay" runat="server" Text=""></asp:Label>
</td>
</tr>
</table>
</asp:Content>

