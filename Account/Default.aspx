<%@ Page Title="" Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Account_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MasterBody" Runat="Server">
    <%--<table class="tableBLOCK" >
        <tr>    <%--masterimage--%>
            <td>
                <img src="../NewImages/MainPageFace.png" />
            </td>
        </tr>
     </table>--%>   
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="LogOnContent" Runat="Server">
     <%--<table class="tableBLOCK">
        <tr>    <%--masterActionArea--%>
            <td>

                 <a id="A7" href="~/Account/Login.aspx" runat="server" class="SiteLinkBold">
                    <asp:LoginView ID="MenuLoginView" runat="server">
                    <%--SIGN IN--%>
                    <AnonymousTemplate>
                        Sign In
                        <%--<div>
                            <p class="ActionButton"><img id="Img5"  runat="server" src="~/NewImages/ButtonRegister.png"/></p>
                        </div>--%>
                    </AnonymousTemplate>
                    <%--SIGN OUT--%>
                    <LoggedInTemplate>
                        <%--EXPLORE BUTTON  TODO Add padding around button via CSS--%>
                        <div>
                            <asp:Image runat="server" class = "masterImage" id = "Image4" 
                            ImageUrl="~/NewImages/ButtonExplore.png" />
                        </div>
                        Log Out

                    </LoggedInTemplate>
                    </asp:LoginView>
                </a>

            </td>
        </tr>
     </table>--%>
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="MasterFooter" Runat="Server">
    <%--<table>
        <tr class="TableTabs">    <%--navagationButtons--%>
            <td>
                <a id = "AboutUsActionButton" href="AboutUs.aspx" runat="server" title="">
                    <img id="Img1"  runat="server" src="~/NewImages/ButtonWhoWeAre.png" />
                </a>
            </td>
            <td>
                <a id = "BlogNews" href= "NewsCopy.aspx" runat="server" title="">
                    <img id="Img2"  runat="server" src="~/NewImages/ButtonNewsBlog.png" />
                </a>
            </td>                        
        </tr>

        <tr class="tableBLOCK">    <%--PanelInfo--%>
            <td>
                <img src="../NewImages/PanelAbout.png" />
            </td>
            <td>
                <img src="../NewImages/PanelBlog.png" />
            </td>                        
        </tr>
        <tr>
            <td>
                copyright @ 2012 humat,llc. allrights reserved.
            </td>
        </tr>
    </table>--%>

</asp:Content>

