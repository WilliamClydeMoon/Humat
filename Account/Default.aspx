<%@ Page Title="" Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Account_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MasterBody" Runat="Server">
    <table class="tableBLOCK" >
        <tr>
            <td>
                <img src="../NewImages/MainPageFace.png" alt="" />
            </td>
        </tr>
     </table>--%>   
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="LogOnContent" Runat="Server">
     <table class="tableBLOCK">
        <tr>    
            <td>
                 <a id="A7" href="~/Account/Login.aspx" runat="server" class="SiteLinkBold">
                    <asp:LoginView ID="MenuLoginView" runat="server">
                    <AnonymousTemplate>
                        Sign In Default
                    </AnonymousTemplate>

                    <LoggedInTemplate>
                        Log Out
                    </LoggedInTemplate>
                    </asp:LoginView>
                </a>

            </td>
        </tr>
     </table>
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="MasterFooter" Runat="Server">
    <table>
        <tr class="TableTabs">    <%--navagationButtons--%>
            <td>
                <a id = "AboutUsActionButton" href="AboutUs.aspx" runat="server" title="">
                    <img id="Img1"  runat="server" src="~/NewImages/ButtonWhoWeAre.png" alt="" />
                </a>
            </td>
            <td>
                <a id = "BlogNews" href= "NewsCopy.aspx" runat="server" title="">
                    <img id="Img2"  runat="server" src="~/NewImages/ButtonNewsBlog.png" alt="" />
                </a>
            </td>                        
        </tr>

        <tr class="tableBLOCK">    <%--PanelInfo--%>
            <td>
                <img src="../NewImages/PanelAbout.png" alt=""  />
            </td>
            <td>
                <img src="../NewImages/PanelBlog.png" alt=""  />
            </td>                        
        </tr>
        <tr>
            <td>
                copyright @ 2012 humat,llc. allrights reserved.
            </td>
        </tr>
    </table>

</asp:Content>

