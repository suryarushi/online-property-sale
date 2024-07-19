<%@ Page Language="C#" MasterPageFile="~/Common.master" AutoEventWireup="true" CodeFile="Home.aspx.cs"
    Inherits="Home" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:ScriptManager ID="sm1" runat="server"></asp:ScriptManager>
<asp:UpdatePanel ID="up1" runat="server">
<ContentTemplate>
<table width="100%">
<tr>
                <td style="width:30%" align="right">
                Select City
                 </td>
                <td style="width:70%" align="left">
                <asp:DropDownList ID="ddlcity" runat="Server" Width="150px" AutoPostBack="True" 
                        DataSourceID="SqlDataSource1" DataTextField="cname" DataValueField="cid" 
                        onselectedindexchanged="ddlcity_SelectedIndexChanged"></asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT * FROM [tbl_city]"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td style="width:30%" align="right">
                Select Area
                 </td>
                <td style="width:70%" align="left">
                <asp:DropDownList ID="ddlarea" runat="Server" Width="150px" Enabled="False"></asp:DropDownList>
          
                </td>
            </tr>
            <tr>
                <td style="width:30%" align="right">
                Select Category
                 </td>
                <td style="width:70%" align="left">
                    <asp:DropDownList ID="ddlcategry" runat="server" Width="150px" 
                        DataSourceID="SqlDataSource2" DataTextField="catname" DataValueField="catid"></asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT * FROM [tbl_category]"></asp:SqlDataSource>
                </td>
            </tr>
           
            <tr>
                <td style="width:30%" align="right">
                 </td>
                <td style="width:70%" align="left">
                <asp:Button ID="btnsearch" runat="Server" Text="Search" 
                        onclick="btnsearch_Click1" />
                    
                </td>
            </tr>
            <tr>
            <td colspan="2" align="center">
            <asp:GridView ID="grvproperties" runat="server" DataKeyNames="username" 
                    Width="100%" CellPadding="4" AutoGenerateColumns="False"
                    ForeColor="#333333" GridLines="None" 
                    EmptyDataText="Currently No Data Available!" 
                    onrowcommand="grvproperties_RowCommand" Font-Size="Small">
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <EditRowStyle BackColor="#2461BF" />
                <AlternatingRowStyle BackColor="PaleGoldenrod" />
                <RowStyle BackColor="#EFF3FB" />
                <Columns>
                 <asp:BoundField DataField="username" HeaderText="" Visible="false" />
                <asp:BoundField DataField="catname" HeaderText="Category" />
                 <asp:BoundField DataField="cname" HeaderText="City" />
                  <asp:BoundField DataField="AreaName" HeaderText="Area(Location)" />
                   <asp:BoundField DataField="psize" HeaderText="Size(in sqft)" />
                   <asp:BoundField DataField="pdemandprice" HeaderText="Demand Price" />
                   
                   <asp:TemplateField>
                   <ItemTemplate>
                   <asp:LinkButton ID="lnkmore" runat="server" CommandName="View More" CommandArgument='<%# Eval("username") %>'  Text="View More" Font-Bold="true"></asp:LinkButton>
                   </ItemTemplate>
                   </asp:TemplateField>
                </Columns>
            </asp:GridView>
            <asp:HiddenField ID="hdnusername" runat="server" />
            </td>
            </tr>
            
        </table>
</ContentTemplate>
</asp:UpdatePanel>
        
</asp:Content>
