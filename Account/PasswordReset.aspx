<%@ Page Title="" Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true" CodeFile="PasswordReset.aspx.cs" Inherits="Account_PasswordReset" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Head" Runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="LogOnContent" Runat="Server">
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="MasterBody" Runat="Server">
    <asp:PasswordRecovery
      runat="server" 
      ID="PWRecovery"
      OnVerifyingUser="validateUserEmail" 
      SuccessText="Your password was successfully reset and emailed to you."
      UserNameFailureText="Username not found.">

        <MailDefinition 
            IsBodyHtml="true" 
            BodyFileName="~/Files/PasswordReset.htm"
            From="YourEmailAddress@YourDomain.com" 
            Subject="Password Reset" 
            Priority="High">
        </MailDefinition>

        <UserNameTemplate>
            <table class="tableBLOCK">
                <tr >
                    <td>
                        <p>The steps below will allow you to have <br />
                        a new password sent to the registered email address.</p>
                    </td>
                </tr>
            <%--</table>--%>
            <table class="tableBLOCK">                        
                <tr>
                    <td>
                        <img class="ImageLabel" src="../NewImages/LabelUserName.png" alt="username"/>
                    </td>
                    <td>
                        <asp:TextBox  runat="server" class="txtBox" Id="UserName" CssClass="textEntry"></asp:TextBox>
                    </td>


                    <td>
                        Email Address:
                        <asp:TextBox 
                            ValidationGroup="PWRecovery" 
                            runat="server" 
                            ID="EmailAddressTB">
                        </asp:TextBox>
                    </td>

                </tr>
            </table>
            <%--<table class="tableBLOCK">--%>
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
                            ValidationGroup="PWRecovery">     <%--"PasswordResetUserValidationGroup">*--%>
                        </asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:RequiredFieldValidator 
                            ID="EmailRequired" 
                            runat="server"
                            Display="None" 
                            ControlToValidate="EmailAddressTB" 
                            CssClass="failureNotification" 
                            ErrorMessage="Email is required." 
                            ToolTip="Email is required." 
                            ValidationGroup="PWRecovery">     <%--"PasswordResetUserValidationGroup">*--%>
                        </asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr >
                    <td>

                    <span class="failureNotification">
                        <p >
                        <asp:Literal ID="ErrorLiteral" runat="server"></asp:Literal>
                        </p>
                    </span>

                    <asp:ValidationSummary 
                        ID="PasswordResetUserValidationSummary" 
                        Displaymode="List"
                        runat="server" 
                        CssClass="failureNotification" 
                        ValidationGroup="PWRecovery">   
                    </asp:ValidationSummary>

                    </td>
                </tr>
            <%--</table>
            <table class="tableBLOCK">--%>    
                <tr>
                    <td>
                       <asp:Button ID="submit" 
                       CausesValidation="true" 
                       ValidationGroup="PWRecovery" 
                       runat="server"
                       CommandName="Submit" 
                       Text="Submit" />
                    </td>
                </tr>
            </table>
        </UserNameTemplate>

    </asp:PasswordRecovery>
</asp:Content>

<%--<asp:Content ID="Content2" ContentPlaceHolderID="MasterFooter" Runat="Server">
</asp:Content>--%>