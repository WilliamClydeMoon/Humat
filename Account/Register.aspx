<%@ Page Title="" Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Account_Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Head" Runat="Server">
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
                    <div class="ContentHead">Create a new account</div>
                    <br />
                    <p>
                        Use the form below to create a new account.
                    </p>
                    <p>
                        Passwords are required to be a minimum of <%= Membership.MinRequiredPasswordLength %> characters in length.
                    </p>

                    <span class="failureNotification">
                        <asp:Literal ID="ErrorMessage" runat="server"></asp:Literal>
                    </span>

                    <asp:ValidationSummary ID="RegisterUserValidationSummary" runat="server" CssClass="failureNotification" 
                         ValidationGroup="RegisterUserValidationGroup"/>
                    <div class="accountInfo">
                        <fieldset class="register">

                            <p>
                                <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName">User Name:</asp:Label>
                                <asp:TextBox ID="UserName" runat="server" CssClass="textEntry"></asp:TextBox>

                                <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName" 
                                     CssClass="failureNotification" ErrorMessage="User Name is required." ToolTip="User Name is required." 
                                     ValidationGroup="RegisterUserValidationGroup">*</asp:RequiredFieldValidator>
                            </p>
                            <p>
                                <asp:Label ID="EmailLabel" runat="server" AssociatedControlID="Email">E-mail:</asp:Label>
                                <asp:TextBox ID="Email" runat="server" CssClass="textEntry"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="EmailRequired" runat="server" ControlToValidate="Email" 
                                     CssClass="failureNotification" ErrorMessage="E-mail is required." ToolTip="E-mail is required." 
                                     ValidationGroup="RegisterUserValidationGroup">*</asp:RequiredFieldValidator>
                            </p>
                            <p>
                                <asp:Label ID="EmailConfirmLabel" runat="server" AssociatedControlID = "EmailConfirm" >Confirm E-mail:</asp:Label>
                                <asp:TextBox ID="EmailConfirm" runat="server" CssClass="textEntry"></asp:TextBox>

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
                                                                                            
                            </p>

                            <p>
                                <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password">Password:</asp:Label>
                                <asp:TextBox ID="Password" runat="server" CssClass="passwordEntry" TextMode="Password"></asp:TextBox>
                                
                                <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password" 
                                     CssClass="failureNotification" ErrorMessage="Password is required." ToolTip="Password is required." 
                                     ValidationGroup="RegisterUserValidationGroup">*</asp:RequiredFieldValidator>
                            </p>
                            <p>
                                <asp:Label ID="ConfirmPasswordLabel" runat="server" AssociatedControlID="ConfirmPassword">Confirm Password:</asp:Label>
                                <asp:TextBox ID="ConfirmPassword" runat="server" CssClass="passwordEntry" TextMode="Password"></asp:TextBox>

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
                            </p>
                        </fieldset>
                        <p class="submitButton">
<%--                            <asp:ImageButton ID="CreateUserButton" runat="server" CommandName="MoveNext"  ValidationGroup="RegisterUserValidationGroup" ImageUrl="~/Styles/Images/submit.gif" />--%>
                            <asp:ImageButton ID="CreateUserButton" runat="server" CommandName="MoveNext"  ValidationGroup="RegisterUserValidationGroup" ImageUrl="~/Styles/Images/submit.gif" />
                        </p>

                    </div>
                </ContentTemplate>

                <CustomNavigationTemplate>
                </CustomNavigationTemplate>

            </asp:CreateUserWizardStep>
         </WizardSteps>
                <MailDefinition 
                   IsBodyHtml="true" 
                   BodyFileName="~/Files/NewAccountTemplate.htm"
                   From="YourEmailAddress@YourDomain.com" 
                   Subject="Humat Registration E-mailConfirmation --- DO NOT REPLY" 
                   Priority="High">
                </MailDefinition>
    </asp:CreateUserWizard>
</asp:Content>

