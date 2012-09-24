<%@ Page Title="" Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true" CodeFile="NewsCopy.aspx.cs" Inherits="NewsCopy" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Head" Runat="Server">
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
                                    ImageUrl="~/NewImages/Humat News copy.jpg" />
                    </div>
                </div> 
            </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="LogOnContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="MasterBody" Runat="Server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="MasterFooter" Runat="Server">
</asp:Content>

