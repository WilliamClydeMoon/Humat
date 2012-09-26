<%@ Page Title="" Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true" CodeFile="Media.aspx.cs" Inherits="Media" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MasterBody" Runat="Server">
<li class="construction"><b>Soon to come! </b><br /> This page is in construction.</li>
<table >
    <tr>
        <td><b>Your Email:</b></td>
        <td><asp:TextBox runat="server" ID="UsersEmail" Columns="30"></asp:TextBox></td>
    </tr>
    <tr>
        <td><b>Subject:</b></td>
        <td><asp:TextBox runat="server" ID="Subject" Columns="30"></asp:TextBox></td>
    </tr>
    <tr>
        <td colspan="2">
            <b>Body:</b><br />
            <asp:TextBox runat="server" ID="Body" TextMode="MultiLine" Columns="55" Rows="10"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td colspan="2" align="center">
            <asp:Button runat="server" ID="SendEmail" Text="Send Feedback" 
                onclick="SendEmail_Click" />
        </td>
    </tr>
</table>
</asp:Content>

