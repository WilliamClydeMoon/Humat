<%@ Page Title="" Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Account_Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Head" Runat="Server">
</asp:Content>
<%--<asp:Content ID="Content2" ContentPlaceHolderID="MasterHeader" Runat="Server">
</asp:Content>--%>
<asp:Content ID="Content5" ContentPlaceHolderID="LogOnContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MasterBody" Runat="Server">
    <asp:CreateUserWizard 
        ID="RegisterUser" 
        runat="server" 
        EnableViewState="false" 
        onsendingMail="RegisterUser_SendMail">
     

        <LayoutTemplate>
            <asp:PlaceHolder ID="wizardStepPlaceholder" runat="server"></asp:PlaceHolder>
            <asp:PlaceHolder ID="navigationPlaceholder" runat="server"></asp:PlaceHolder>
        </LayoutTemplate>

        <WizardSteps>

            <asp:CreateUserWizardStep 
                ID="RegisterUserWizardStep" 
                runat="server">
                <ContentTemplate>
                    <table class="tableBLOCK">
                        <tr>
                            <td>
                                <p>
                                Use the form below to create a new account.
                                </p>
                                <p>
                                Passwords are required to be a minimum of <%= Membership.MinRequiredPasswordLength %> characters in length.
                                </p>
                            </td>
                            <td>
                            </td>
                        </tr>
                    </table>


                        <%--<fieldset class="register">--%>
                        <table class="tableBLOCK">
                            <tr>
                                <td>
                                <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName">User Name:</asp:Label>
                                </td>
                                <td>
                                <asp:TextBox ID="UserName" runat="server" CssClass="textEntry"></asp:TextBox>
                                </td>
                            </tr>
                        </table>
                        <asp:RequiredFieldValidator 
                            ID="UserNameRequired" 
                            runat="server" 
                            ControlToValidate="UserName" 
                            CssClass="failureNotification" 
                            ErrorMessage="User Name is required." 
                            ToolTip="User Name is required." 
                            ValidationGroup="RegisterUserValidationGroup">*
                         </asp:RequiredFieldValidator>
                            <table class="tableBLOCK">
                                <tr>
                                    <td>
                                    <asp:Label ID="EmailLabel" runat="server" AssociatedControlID="Email">E-mail:</asp:Label>
                                    </td>
                                    <td>
                                    <asp:TextBox ID="Email" class="txtBox" runat="server" CssClass="textEntry"></asp:TextBox>
                                    </td>
                                </tr>
                            </table>
                            <asp:RequiredFieldValidator 
                                ID="EmailRequired" 
                                runat="server" 
                                ControlToValidate="Email" 
                                CssClass="failureNotification" 
                                ErrorMessage="E-mail is required." 
                                ToolTip="E-mail is required." 
                                ValidationGroup="RegisterUserValidationGroup">*
                            </asp:RequiredFieldValidator>

                            <table class="tableBLOCK">
                                <tr>
                                    <td>
                                    <asp:Label ID="EmailConfirmLabel" runat="server" AssociatedControlID = "EmailConfirm" >Confirm E-mail:</asp:Label> 
                                    </td>

                                    <td>
                                    <asp:TextBox ID="EmailConfirm" class="txtBox" runat="server" CssClass="textEntry"></asp:TextBox>
                                    </td>
                                </tr>
                            </table>
                            <asp:RequiredFieldValidator 
                               ID="ConfirmEmailRequired"
                               ControlToValidate="EmailConfirm" 
                               runat="server"
                               CssClass="failureNotification" 
                               Display="Dynamic" 
                               ErrorMessage="Confirm Email is required." 
                               ToolTip="Confirm Email is required." 
                               ValidationGroup="RegisterUserValidationGroup">*
                            </asp:RequiredFieldValidator>                                 

                            <asp:CompareValidator 
                               ID="EmailCompare" 
                               runat="server" 
                               ControlToCompare="Email" 
                               ControlToValidate="EmailConfirm" 
                               CssClass="failureNotification" 
                               Display="Dynamic" 
                               ErrorMessage="The Email and Confirmation email must match."
                               ValidationGroup="RegisterUserValidationGroup">*
                             </asp:CompareValidator>
                                                                                            

                            <table class="tableBLOCK">
                                <tr>
                                    <td>
                                    <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password">Password:</asp:Label>                            
                                    </td>

                                    <td>
                                    <asp:TextBox ID="Password" class="txtBox" runat="server" CssClass="passwordEntry" TextMode="Password"></asp:TextBox>                            
                                    </td>
                                </tr>
                            </table>
                            <asp:RequiredFieldValidator 
                                ID="PasswordRequired" 
                                runat="server" 
                                ControlToValidate="Password" 
                                CssClass="failureNotification" 
                                ErrorMessage="Password is required." 
                                ToolTip="Password is required." 
                                ValidationGroup="RegisterUserValidationGroup">*
                             </asp:RequiredFieldValidator>

                            <table class="tableBLOCK">
                                <tr>
                                    <td>
                                    <asp:Label ID="ConfirmPasswordLabel" runat="server" AssociatedControlID="ConfirmPassword">Confirm Password:</asp:Label>                            
                                    </td>

                                    <td>
                                    <asp:TextBox ID="ConfirmPassword" class="txtBox" runat="server" CssClass="passwordEntry" TextMode="Password"></asp:TextBox>                            
                                    </td>
                                </tr>
                            </table>
                            <asp:RequiredFieldValidator 
                                ControlToValidate="ConfirmPassword" 
                                CssClass="failureNotification" 
                                Display="Dynamic" 
                                ErrorMessage="Confirm Password is required." 
                                ID="ConfirmPasswordRequired" 
                                runat="server" 
                                ToolTip="Confirm Password is required." 
                                ValidationGroup="RegisterUserValidationGroup">*
                                </asp:RequiredFieldValidator>

                            <asp:CompareValidator 
                                ID="PasswordCompare" 
                                runat="server" 
                                ControlToCompare="Password" 
                                ControlToValidate="ConfirmPassword" 
                                CssClass="failureNotification" 
                                Display="Dynamic" 
                                ErrorMessage="The Password and Confirmation Password must match."
                                ValidationGroup="RegisterUserValidationGroup">*
                            </asp:CompareValidator>
                        <%--</fieldset>--%>

                        <span class="failureNotification">
                            <table class="tableBLOCK">
                                <tr>
                                    <td>
                                        <p>
                                         <asp:Literal ID="ErrorMessage" runat="server"></asp:Literal>
                                        </p>
                                    </td>
                                </tr>
                            </table>
                        </span>

                        <asp:ValidationSummary 
                            ID="RegisterUserValidationSummary" 
                            runat="server" 
                            CssClass="failureNotification" 
                            ValidationGroup="RegisterUserValidationGroup"
                        />


                            <table class="tableBLOCK">
                                <tr>
                                    <td>
                                    <asp:ImageButton 
                                        ID="CreateUserButton" 
                                        runat="server" 
                                        CommandName="MoveNext"  
                                        ValidationGroup="RegisterUserValidationGroup" 
                                        ImageUrl="~/Styles/Images/submit.gif" />                            
                                    </td>
                                </tr>
                            </table>
                </ContentTemplate>

                <CustomNavigationTemplate>
                </CustomNavigationTemplate>

            </asp:CreateUserWizardStep>
         </WizardSteps>
         <MailDefinition 
            IsBodyHtml="true" 
            BodyFileName="~/Files/RegisterEmailTemplate.htm"
            From="YourEmailAddress@YourDomain.com" 
            Subject="Humat Registration E-mailConfirmation --- DO NOT REPLY" 
            Priority="High">
         </MailDefinition>
    </asp:CreateUserWizard>
</asp:Content>


<%--<asp:Content ID="Content4" ContentPlaceHolderID="MasterFooter" Runat="Server">
 </asp:Content>--%>

