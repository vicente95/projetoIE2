<%@ Page Title="Registo" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Registo.aspx.cs" Inherits="Account_Register" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <h2>Area do utilizador</h2>
    <nav>
<ul id="navmenu">
	<li><a href="#">Fazer Login</a></li>
	<li><a href="#">Recuperar palavra-passe</a><span class="darrow">&#9660;</span>
		<ul class="sub1">
			<li><a href="#">Questão de segurança</a></li>
			<li><a href="#">Para o email</a></li>
		</ul>
	</li>
	<li><a href="#">Registo</a></li>
</ul>
</nav>
    <br />
    <hr />
    
    <div class="form-horizontal">
        <h4><span style="color:grey; font-weight: 700;"><em style="background-color: #E6F0F3">Esta no registo:</em></span> Criar nova conta:</h4>
        <hr />
        <asp:ValidationSummary runat="server" CssClass="text-danger" />
    
    <p class="text-danger">
        <asp:Literal runat="server" ID="ErrorMessage0" />
    </p>

    </div>
    <div class="form-group">
        <div class="form-inline">
            <h5>Morada:</h5>
            <asp:TextBox ID="Morada" runat="server" Width="318px"></asp:TextBox>&nbsp;<asp:RequiredFieldValidator ID="ConfirmPasswordRequired0" runat="server" ControlToValidate="Morada" ErrorMessage="A morada é necessaria" ToolTip="A morada é necessaria" ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                            </div>
        <div class="form-inline">
            <h5>Codigo-postal:</h5>
            <asp:TextBox ID="cod1" runat="server" Width="100px"></asp:TextBox>&nbsp;<asp:TextBox ID="cod2" runat="server" Width="46px"></asp:TextBox>&nbsp;<asp:TextBox ID="cod3" runat="server" Width="164px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="Codigopostal1" runat="server" ControlToValidate="cod1" ErrorMessage="O primeiro campo do codigo postal é necessario" ToolTip="O primeiro campo do codigo postal é necessario" ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                                <asp:RequiredFieldValidator ID="Codigopostal2" runat="server" ControlToValidate="cod2" ErrorMessage="O primeiro campo do codigo postal é necessario" ToolTip="O segundo campo do codigo postal é necessario" ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                                <asp:RequiredFieldValidator ID="Codigopostal3" runat="server" ControlToValidate="cod3" ErrorMessage="O primeiro campo do codigo postal é necessario" ToolTip="O terceiro campo do codigo postal é necessario" ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
        </div>
        <div class="form-inline">
            <h5>Localidade:</h5>
            <asp:TextBox ID="Loca" runat="server" Width="319px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="localidade" runat="server" ControlToValidate="Loca" ErrorMessage="A Localidade é necessaria" ToolTip="A Localidade é necessaria" ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                            </div>
        <div class="container">

</div>
    </div>    
        <asp:CreateUserWizard ID="CreateUserWizard1" runat="server" OnCreatedUser="CreateUserWizard1_CreatedUser">
        <WizardSteps>
            <asp:CreateUserWizardStep ID="CreateUserWizardStep1" runat="server">
                <ContentTemplate>
                    <table>
                        <tr>
                            <td align="right">
                                <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName"><h5>Nome de utilizador:</h5></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="UserName" runat="server" CssClass="form-control" Width="370px" ></asp:TextBox>
                                <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName" ErrorMessage="User Name is required." ToolTip="User Name is required." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="right">
                                <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password"><h5>Palavra-passe:</h5></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="Password" runat="server" TextMode="Password" CssClass="form-control" Width="370px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password" ErrorMessage="Password is required." ToolTip="Password is required." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="right">
                                <asp:Label ID="ConfirmPasswordLabel" runat="server" AssociatedControlID="ConfirmPassword"><h5>Confirmar a palavra-passe:</h5></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="ConfirmPassword" runat="server" TextMode="Password" CssClass="form-control" Width="370px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="ConfirmPasswordRequired" runat="server" ControlToValidate="ConfirmPassword" ErrorMessage="Confirm Password is required." ToolTip="Confirm Password is required." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="right">
                                <asp:Label ID="EmailLabel" runat="server" AssociatedControlID="Email"><h5>E-mail/username:</h5></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="Email" runat="server" CssClass="form-control" Width="370px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="EmailRequired" runat="server" ControlToValidate="Email" ErrorMessage="E-mail is required." ToolTip="E-mail is required." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="right">
                                <asp:Label ID="QuestionLabel" runat="server" AssociatedControlID="Question"><h5>Questão de segurança:</h5></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="Question" runat="server" CssClass="form-control" Width="370px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="QuestionRequired" runat="server" ControlToValidate="Question" ErrorMessage="Security question is required." ToolTip="Security question is required." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="right">
                                <asp:Label ID="AnswerLabel" runat="server" AssociatedControlID="Answer"><h5>Resposta:</h5></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="Answer" runat="server" Width="370px" CssClass="form-control"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="AnswerRequired" runat="server" ControlToValidate="Answer" ErrorMessage="Security answer is required." ToolTip="Security answer is required." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="center" colspan="2">
                                <asp:CompareValidator ID="PasswordCompare" runat="server" ControlToCompare="Password" ControlToValidate="ConfirmPassword" Display="Dynamic" ErrorMessage="A palavra passe e a confirmação tem de ser iguais." ValidationGroup="CreateUserWizard1"></asp:CompareValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="center" colspan="2" style="color:Red;">
                                <asp:Literal ID="ErrorMessage" runat="server" EnableViewState="False"></asp:Literal>
                            </td>
                        </tr>
                    </table>
                </ContentTemplate>
            </asp:CreateUserWizardStep>
            <asp:CompleteWizardStep ID="CompleteWizardStep1" runat="server">
            </asp:CompleteWizardStep>
        </WizardSteps>
    </asp:CreateUserWizard>
</asp:Content>

