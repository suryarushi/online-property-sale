<%@ Page Language="C#" MasterPageFile="~/Common.master" AutoEventWireup="true" CodeFile="User_Login.aspx.cs" Inherits="User_Login" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div style="background-color: Aqua; width: 100%;">
  <table width="500" style="margin-left:50px">
  <tr>
  <td align="center" colspan="2" rowspan="3" style="height: 21px">
  <asp:Login ID="Login1" runat="Server" BackColor="#FFFBD6" BorderColor="#FFDFAD" 
          BorderPadding="4" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" 
          Font-Size="0.8em" ForeColor="#333333" Height="164px" TitleText="User Login" 
          Width="304px" TextLayout="TextOnTop" onauthenticate="userlogin_Authenticate" >
      <TitleTextStyle BackColor="#990000" Font-Bold="True" Font-Size="0.9em" ForeColor="White" />
      <InstructionTextStyle Font-Italic="True" ForeColor="Black" />
      <TextBoxStyle Font-Size="0.8em" />
      <LoginButtonStyle BackColor="White" BorderColor="#CC9966" BorderStyle="Solid" BorderWidth="1px"
          Font-Names="Verdana" Font-Size="0.8em" ForeColor="#990000" />
  </asp:Login>
  </td>
  </tr>
  
  </table>
  </div>
</asp:Content>

