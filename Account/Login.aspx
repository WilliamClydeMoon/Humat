<%@ Page Title="" Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Account_Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="LogOnContent" Runat="Server">
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="MasterBody" Runat="Server">
    <asp:Login ID="LoginUser" runat="server" EnableViewState="false" RenderOuterTable="false" onloggedin="LoginUser_LoggedIn">
        <LayoutTemplate>

                <table class="tableBLOCK">
                    <tr>
                        <td>
                            <img class="ImageLabel" src="../NewImages/LabelUserName.png" alt="username"/>
                            <asp:TextBox  runat="server" class="txtBox" Id="UserName" CssClass="textEntry"></asp:TextBox>
                        </td>

                        <td>
                            <td><img class="ImageLabel" src="../NewImages/LabelPassword.png"/>
                            <asp:TextBox ID="Password" runat="server"  class="txtBox" CssClass="passwordEntry" TextMode="Password"></asp:TextBox>                
                        </td>
                    </tr>

                </table>
                <table Class="tableBLOCK">
                    <tr> 
                        <td>
                            <%--RemberMeCheckBoxLabel--%>
                            <asp:CheckBox ID="RememberMe" runat="server"/>
                            <asp:Label ID="RememberMeLabel" 
                            runat="server" 
                            AssociatedControlID="RememberMe" 
                            CssClass="inline">Keep me Logged in -- </asp:Label>
                        </td>
                        <td>
                            <a id="A1" class = "LogOnButton" href="~/Account/PasswordReset.aspx" runat="server" title="">Forgot My Password -- </a>
                        </td>
                        <td>
                            <a id="A2" class="LogOnButton" href="~/Account/Register.aspx" runat="server" title="">Register</a>
                        </td>
                    </tr>
                    </table>


                    <table class="tableBLOCK">
                    <tr>
                        <td>
                        <asp:RequiredFieldValidator 
                            ID="UserNameRequired" 
                            runat="server" 
                            Display="None"
                            ControlToValidate="UserName" 
                            CssClass="failureNotification" 
                            ErrorMessage="User Name is required." 
                            ToolTip="User Name is required." 
                            ValidationGroup="LoginUserValidationGroup">
                         </asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                        <asp:RequiredFieldValidator 
                            ID="PasswordRequired" 
                            runat="server" 
                            Display="None"
                            ControlToValidate="Password" 
                            CssClass="failureNotification" 
                            ErrorMessage="Password is required." 
                            ToolTip="Password is required." 
                            ValidationGroup="LoginUserValidationGroup">
                         </asp:RequiredFieldValidator> 
                        </td>
                    </tr>

                    <asp:ValidationSummary 
                        ID="LoginUserValidationSummary" 
                        DisplayMode="List"
                        runat="server" 
                        CssClass="failureNotification" 
                        ValidationGroup="LoginUserValidationGroup"
                    />

                    <tr>
                        <td>
                        <span class="failureNotification">
                            <asp:Literal ID="FailureText" runat="server"></asp:Literal>
                        </span>
                        </td>
                    </tr>
                    </table>

                    <table class="tableBLOCK">
                    <tr>
                        <td>
                        <%--SubmitButton--%>                
                        
                        <asp:ImageButton 
                            ID="LoginButton" 
                            runat="server" 
                            CommandName="Login" 
                            ValidationGroup="LoginUserValidationGroup" 
                            ImageUrl="~/Styles/Images/sign_in_now.gif" 
                            />
                        </td>
                    </tr>
                </table>
        </LayoutTemplate>
    </asp:Login>
    
</asp:Content>
