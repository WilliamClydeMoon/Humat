<%@ Page Title="" Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Account_Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MasterBody" Runat="Server">
    <asp:Login ID="LoginUser" runat="server" EnableViewState="false" RenderOuterTable="false" onloggedin="LoginUser_LoggedIn">
        <LayoutTemplate>
            <span class="failureNotification">
                <asp:Literal ID="FailureText" runat="server"></asp:Literal>
            </span>
            <asp:ValidationSummary 
                ID="LoginUserValidationSummary" 
                runat="server" 
                CssClass="failureNotification" 
                ValidationGroup="LoginUserValidationGroup"
            />
            <div class="accountInfo"><p>test</p>
                <table class="logOnGet">
                    <tr>
                        <td>
                            <%--UserNameLabelTextBox--%>
                            <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName">User Name:</asp:Label>
                            <asp:TextBox ID="UserName" runat="server" CssClass="textEntry"></asp:TextBox>
                        </td>
                    

                        <asp:RequiredFieldValidator 
                            ID="UserNameRequired" 
                            runat="server" 
                            ControlToValidate="UserName" 
                            CssClass="failureNotification" 
                            ErrorMessage="User Name is required." 
                            ToolTip="User Name is required." 
                            ValidationGroup="LoginUserValidationGroup">*
                         </asp:RequiredFieldValidator>

                    
                        <td>
                            <%--PasswordLabelTextBox--%>
                            <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password">Password:</asp:Label>
                            <asp:TextBox ID="Password" runat="server" CssClass="passwordEntry" TextMode="Password"></asp:TextBox>                
                        </td>
                    </tr>

                        <asp:RequiredFieldValidator 
                            ID="PasswordRequired" 
                            runat="server" 
                            ControlToValidate="Password" 
                            CssClass="failureNotification" 
                            ErrorMessage="Password is required." 
                            ToolTip="Password is required." 
                            ValidationGroup="LoginUserValidationGroup">*
                         </asp:RequiredFieldValidator>

                        <%--RemberMeCheckBoxLabel--%>
                        <asp:CheckBox ID="RememberMe" runat="server"/>
                        <asp:Label ID="RememberMeLabel" 
                            runat="server" 
                            AssociatedControlID="RememberMe" 
                            CssClass="inline">Keep me signed-in on this computer.</asp:Label>

                  <%--SubmitButton--%>                
                  <%--class="submitButton">
                    <asp:ImageButton 
                        ID="LoginButton" 
                        runat="server" 
                        CommandName="Login" 
                        ValidationGroup="LoginUserValidationGroup" 
                        ImageUrl="~/Styles/Images/sign_in_now.gif" 
                        />--%>
                
                  <%--Anchors--%>  
                  <a class = "LogOnButton" href="~/Account/PasswordReset.aspx" runat="server" title="">Forgot Password</a>
                  <a id="A1" class="LogOnButton" href="~/Account/Register.aspx" runat="server" title="">Register</a>

                </table>
            </div>
        </LayoutTemplate>
    </asp:Login>
    
</asp:Content>
