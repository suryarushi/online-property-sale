<%@ Page Language="C#" MasterPageFile="~/Common.master" AutoEventWireup="true" CodeFile="Admin_Login.aspx.cs" Inherits="Admin_Login" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  <div style="background-color: Aqua; width: 100%;">
  <table width="500" style="margin-left:50px">
  <tr>
  <td align="center" colspan="2" rowspan="3" style="height: 21px">
  <asp:Image ID="imgadmin" runat="server" Height="103px" ImageUrl="~/images/images41.jpg" Width="303px" />
  <asp:Login ID="adminlogin" runat="Server" BackColor="#EFF3FB" BorderColor="#B5C7DE" BorderPadding="4" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#333333" Height="164px" TitleText="Admin Login" Width="304px" OnAuthenticate="adminlogin_Authenticate" >
      <TitleTextStyle BackColor="#507CD1" Font-Bold="True" Font-Size="0.9em" ForeColor="White" />
      <InstructionTextStyle Font-Italic="True" ForeColor="Black" />
      <TextBoxStyle Font-Size="0.8em" />
      <LoginButtonStyle BackColor="White" BorderColor="#507CD1" BorderStyle="Solid" BorderWidth="1px"
          Font-Names="Verdana" Font-Size="1em" ForeColor="#000040" />
  </asp:Login>
  </td>
  </tr>
  
  </table>
  </div>
</asp:Content>

