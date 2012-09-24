<%@ Page Title="" Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true" CodeFile="AboutUs.aspx.cs" Inherits="AboutUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MasterHeader" Runat="Server">
            <div class="topcontent">
                <div Class = "CommonPageFrame">
                    <div>
                                <%--<asp:Image runat="server" class = "masterImage" id = "Image3" 
                                ImageUrl="~/NewImages/MainPageFace.png" />--%>
                                    <asp:Image 
                                    runat="server" 
                                    class = "masterImage" 
                                    id = "Image1" 
                                    ImageUrl="~/Images/AboutUs.jpg" />
                    </div>
                </div> 
            </div>
 
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MasterBody" Runat="Server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="LogOnContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="MasterFooter" Runat="Server">
</asp:Content>

