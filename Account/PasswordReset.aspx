<%@ Page Title="" Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true" CodeFile="PasswordReset.aspx.cs" Inherits="Account_PasswordReset" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Head" Runat="Server">
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="MasterBody" Runat="Server">

<asp:PasswordRecovery OnVerifyingUser="validateUserEmail" 
      SuccessText="Your password was successfully reset and emailed to you."
      QuestionFailureText="Incorrect answer. Please try again." 
      runat="server" ID="PWRecovery" 
      UserNameFailureText="Username not found.">
    <MailDefinition IsBodyHtml="true" BodyFileName="~/Account/email.txt"
           From="YourEmailAddress@YourDomain.com" 
           Subject="Password Reset" 
           Priority="High">
    </MailDefinition>
    <UserNameTemplate>
        <p>The steps below will allow you to have 
           a new password sent to the registered email address.</p>
        <dl>
            <dt>Username</dt>
            <dd>
                <asp:TextBox ID="Username" runat="server" />
            </dd>
            <dt>Email</dt>
            <dd>
                <asp:TextBox ValidationGroup="PWRecovery" 
                   runat="server" ID="EmailAddressTB">
                </asp:TextBox>
            </dd>
            <dt></dt>
            <dd>
                <asp:Button ID="submit" 
                   CausesValidation="true" 
                   ValidationGroup="PWRecovery" 
                   runat="server"
                   CommandName="Submit" 
                   Text="Submit" />
            </dd>
            <dt></dt>
            <dd>
                <p class="Error"><asp:Literal ID="ErrorLiteral" 
                         runat="server"></asp:Literal>
                </p>
            </dd>
        </dl>
    </UserNameTemplate>
    <QuestionTemplate>
        Hello
        <asp:Literal runat="server" ID="personname" />,
        <p>
            You must answer your recovery question 
            in order to have a new email sent to you.
        </p>
        <dl>
            <dt>Question:</dt>
            <dd>
                <asp:Literal runat="server" ID="Question" />
            </dd>
            <dt></dt>
            <dt>Answer:</dt>
            <dd>
                <asp:TextBox runat="server" ID="Answer" />
            </dd>
            <dt></dt>
            <dd>
                <asp:Button runat="server" ID="submit" 
                  Text="Submit" CommandName="submit" />
            </dd>
            <dt></dt>
            <dd>
                <p class="Error">
                    <asp:Literal ID="FailureText" runat="server">
    </asp:Literal>
    </p>
            </dd>
        </dl>
    </QuestionTemplate>

</asp:PasswordRecovery>
</asp:Content>

