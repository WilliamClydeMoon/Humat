<%@ Page Title="" Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true" CodeFile="UserDetails.aspx.cs" Inherits="Account_UserDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Head" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MasterBody" Runat="Server">

    <asp:Panel runat="Server" ID="AnonymousMessagePanel">
        <asp:HyperLink runat="server" ID="lnkLogin" Text="Log In" NavigateUrl="~/Default.aspx"></asp:HyperLink>
    </asp:Panel>

<asp:Panel runat="server" class = "userDetails" Id = "UserDetailsEdit" >

        <p>
        <asp:Label Id= lblFirstName runat="server" Text="First Name"></asp:Label>
        <asp:TextBox Id= txbFirstName runat="server">        </asp:TextBox>
        </p>

        <p>
        <asp:Label Id= lblLastName runat="server" Text="Last Name"></asp:Label>
        <asp:TextBox Id=txbLastName runat="server">        </asp:TextBox>
        </p>

        <p>        
        <asp:Label Id = lblStreetAddress runat="server" Text="Street Address"></asp:Label>
        <asp:TextBox Id = txbStreetAddress runat="server">        </asp:TextBox>
        </p>

        <p>
        <asp:Label Id= lblCity runat="server" Text="City"></asp:Label>
        <asp:TextBox id= txbCity runat="server">        </asp:TextBox>
        </p>

        <p>
        <asp:Label Id= lblState runat="server" Text="State"></asp:Label>
        <asp:TextBox Id = txbState runat="server">        </asp:TextBox>
        </p>

        <p>
        <asp:Label Id = lblZip runat="server" Text="Zip"></asp:Label>
        <asp:TextBox Id = txbZip runat="server">        </asp:TextBox>
        </p>

        <p>
        <asp:Label Id = lblCountry runat="server" Text="Country"></asp:Label>
        <asp:TextBox Id = txbCountry runat="server">        </asp:TextBox>
        </p>

        <p>
        <asp:Label Id = lblPhone runat="server" Text="Phone"></asp:Label>
        <asp:TextBox Id = txbPhone runat="server">        </asp:TextBox>
        </p> 

        <p>
        <asp:Label Id = lblSurname runat="server" Text="Sur Name"></asp:Label>
        <asp:TextBox Id = txbSurname runat="server">        </asp:TextBox>
        </p> 



    <asp:Button ID="UserDetailsSubmit" runat="server" Text="Submit" 
            onclick="UserDetailsSubmit_Click" />

</asp:Panel>        

</asp:Content>

