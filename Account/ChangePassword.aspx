<%@ Page Title="" Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true" CodeFile="ChangePassword.aspx.cs" Inherits="Account_ChangePassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Head" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MasterBody" Runat="Server">
    <h2>
        Change Password
    </h2>
    <p>
        Use the form below to change your password.
    </p>
    <p>
        New passwords are required to be a minimum of <%= Membership.MinRequiredPasswordLength %> characters in length.
    </p>
    <asp:ChangePassword ID="ChangeUserPassword" runat="server" CancelDestinationPageUrl="~/" EnableViewState="false" RenderOuterTable="false" 
         SuccessPageUrl="ChangePasswordSuccess.aspx">
        <ChangePasswordTemplate>
            <span class="failureNotification">
                <asp:Literal ID="FailureText" runat="server"></asp:Literal>
            </span>
            <asp:ValidationSummary ID="ChangeUserPasswordValidationSummary" runat="server" CssClass="failureNotification" 
                 ValidationGroup="ChangeUserPasswordValidationGroup"/>

                <fieldset class="changePassword">
                    <legend>Account Information</legend>

                    <table class="tableBLOCK">
                         <tr>
                             <td>
                        <asp:Label ID="CurrentPasswordLabel" runat="server" AssociatedControlID="CurrentPassword">Old Password:</asp:Label>     
                             </td>

                             <td>
                        <asp:TextBox ID="CurrentPassword" class="txtBox"  runat="server" CssClass="passwordEntry" TextMode="Password"></asp:TextBox>     
                             </td>
                         </tr>
                    </table>

                        <asp:RequiredFieldValidator 
                            ID="CurrentPasswordRequired" 
                            runat="server" 
                            ControlToValidate="CurrentPassword" 
                            CssClass="failureNotification" 
                            ErrorMessage="Password is required." 
                            ToolTip="Old Password is required." 
                            ValidationGroup="ChangeUserPasswordValidationGroup">*
                        </asp:RequiredFieldValidator>


                    <table class="tableBLOCK">
                         <tr>
                             <td>
                        <asp:Label ID="NewPasswordLabel" runat="server" AssociatedControlID="NewPassword">New Password:</asp:Label>                             
                             </td>

                             <td>
                        <asp:TextBox ID="NewPassword" class="txtBox" runat="server" CssClass="passwordEntry" TextMode="Password"></asp:TextBox>                             
                             </td>
                         </tr>
                    </table>
                        <asp:RequiredFieldValidator 
                            ID="NewPasswordRequired" 
                            runat="server" 
                            ControlToValidate="NewPassword" 
                            CssClass="failureNotification" 
                            ErrorMessage="New Password is required." 
                            ToolTip="New Password is required." 
                            ValidationGroup="ChangeUserPasswordValidationGroup">*
                        </asp:RequiredFieldValidator>


                    <table class="tableBLOCK">
                         <tr>
                             <td>
                                <asp:Label ID="ConfirmNewPasswordLabel" runat="server" AssociatedControlID="ConfirmNewPassword">Confirm New Password:</asp:Label>                             
                             </td>

                             <td>
                                <asp:TextBox ID="ConfirmNewPassword" class="txtBox" runat="server" CssClass="passwordEntry" TextMode="Password"></asp:TextBox>                             
                             </td>
                         </tr>
                    </table>
                        <asp:RequiredFieldValidator 
                            ID="ConfirmNewPasswordRequired" 
                            runat="server" 
                            ControlToValidate="ConfirmNewPassword" 
                            CssClass="failureNotification" 
                            Display="Dynamic" 
                            ErrorMessage="Confirm New Password is required."
                            ToolTip="Confirm New Password is required." 
                            ValidationGroup="ChangeUserPasswordValidationGroup">*
                        </asp:RequiredFieldValidator>
                        
                        <asp:CompareValidator 
                            ID="NewPasswordCompare" 
                            runat="server" 
                            ControlToCompare="NewPassword" 
                            ControlToValidate="ConfirmNewPassword" 
                            CssClass="failureNotification" 
                            Display="Dynamic" 
                            ErrorMessage="The Confirm New Password must match the New Password entry."
                            ValidationGroup="ChangeUserPasswordValidationGroup">*
                         </asp:CompareValidator>

                </fieldset>


                    <table class="tableBLOCK">
                         <tr>
                             <td>
                                <asp:Button ID="CancelPushButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel"/>                             
                             </td>

                             <td>
                                <asp:Button ID="ChangePasswordPushButton" runat="server" CommandName="ChangePassword" Text="Change Password" 
                                ValidationGroup="ChangeUserPasswordValidationGroup"/>
                             
                             </td>
                         </tr>
                    </table>

        </ChangePasswordTemplate>
    </asp:ChangePassword>
</asp:Content>

