<%@ Page Language="C#" MasterPageFile="~/Admin_Master.master" AutoEventWireup="true" CodeFile="View_Property.aspx.cs" Inherits="View_Property" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table width="100%">
<tr>
<td colspan="2" align="center">
<asp:Label ID="lblheader" runat="server" Text="Add Area From Here" Font-Bold="true" Font-Size="Medium" ForeColor="Blue" Font-Underline="true"></asp:Label>
</td>
</tr>
<tr>
<td align="center">
<asp:GridView ID="grvproperty" runat="server" Width="100%" BackColor="White" 
        BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
        GridLines="Horizontal" DataKeyNames="username" AutoGenerateColumns="False" AllowPaging="false" 
        PageSize="8" ForeColor="Black" onrowcommand="grvproperty_RowCommand" 
        EmptyDataText="Currently No Data Available!">
    <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
    <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
    <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
    <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
    <Columns>
    <asp:BoundField DataField="catname" HeaderText="Cagegory" />
    <asp:BoundField DataField="username" HeaderText="" Visible="false" />
    <asp:BoundField DataField="cname" HeaderText="City" />
    <asp:BoundField DataField="AreaName" HeaderText="Area" />
    <asp:BoundField DataField="paddress" HeaderText="Address" />
    <asp:BoundField DataField="plandmark" HeaderText="Landmark" />
    <asp:BoundField DataField="psize" HeaderText="Size(in sqft)" />
    <asp:BoundField DataField="pdemandprice" HeaderText=" Demand Price" />
    <asp:BoundField DataField="pfeatures" HeaderText="Features" />
    <asp:TemplateField>
    <ItemTemplate>
    <asp:Image ID="imgproperty" runat="server" ImageUrl='<%#Eval("pimage") %>' Height="100px" Width="100px" />
    </ItemTemplate>
    </asp:TemplateField>
    <asp:TemplateField>
    <ItemTemplate>
    <asp:Button ID="btndelete" runat="server" CommandArgument='<%# Eval("username") %>' CommandName="Delete" Text="Delete" Font-Bold="true" ForeColor="Blue" Font-Size="Smaller" />
    </ItemTemplate>
    </asp:TemplateField>
    </Columns>
    </asp:GridView>
    <asp:HiddenField ID="hdnusername" runat="server" />
</td>
</tr>
</table>
</asp:Content>

