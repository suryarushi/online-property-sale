<%@ Page Language="C#" MasterPageFile="~/Common.master" AutoEventWireup="true" CodeFile="After_Registration.aspx.cs" Inherits="After_Registration" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div style="width:600px; color:Blue; font-family:Monotype Corsiva ; font-size:x-large">
Your Registration Has Been Successfully Created!<br />
You May Login After Some Time<br />
<asp:HyperLink ID="hlnklogin" runat="server" Text="Go To Login" NavigateUrl="~/User_Login.aspx"></asp:HyperLink>
</div>
</asp:Content>

