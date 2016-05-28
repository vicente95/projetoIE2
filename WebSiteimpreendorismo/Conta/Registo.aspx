<%@ Page Title="Area do utilizador" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Registo.aspx.cs" Inherits="Account_Register" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <h2><span class="glyphicon glyphicon-list-alt"></span>&nbsp;Area do utilizador</h2>

    <ul class="nav navbar-nav bg-info">
    <li class="active"><asp:LinkButton ID="LinkButton3" runat="server" Text="Fazer Login" OnClick="LinkButton1_Click"> </asp:LinkButton></li>
    <li class="dropdown"> 
        <a href="#" class="dropdown-toggle" role="button" aria-expanded="false" data-toggle="dropdown">Recuperar palavra-passe<span class="caret"></span></a>
        <ul class="dropdown-menu" role="menu">
            <li><asp:LinkButton ID="LinkButton1" runat="server" Text="Questão de segurança         " OnClick="LinkButton2_Click"></asp:LinkButton></li>
            <li><asp:LinkButton ID="LinkButton2" runat="server" Text="Para o email   " OnClick="LinkButton3_Click"> </asp:LinkButton></li>
        </ul>
    </li>
    <li><asp:LinkButton ID="LinkButton4" runat="server" Text="Registo" OnClick="LinkButton4_Click"> </asp:LinkButton></li>
</ul><br /><br /><hr />
 <asp:Panel ID="Panel_registo" runat="server">
    <div class="form-horizontal">
        <h5><span style="color:grey; font-weight:900;"><em style="background-color: #E6F0F3">Esta no registo:</em></span> Criar nova conta:</h5>
         
        <hr />
    
    <p class="text-danger">
        <asp:Literal runat="server" ID="ErrorMessage0" Text='&lt;span class="glyphicon glyphicon-exclamation-sign"&gt;&lt;/span&gt; Campos que tem de ser prenchidos com asterisco' />
    </p>
          <asp:Panel ID="panel1" runat="server">
              <asp:ValidationSummary runat="server" CssClass="text-danger" ValidationGroup="CreateUserWizard1" />
        
        
        <asp:Label ID="Label3" runat="server" Text=""></asp:Label>
        <br />
        <h5><strong>Para faturação e possivel entrega de encomenda:</strong></h5>
    </div>
    <div class="form-group">
        <div class="form-inline">
            <h5>&nbsp;&nbsp;&nbsp;&nbsp; Morada:</h5>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="Morada" runat="server" CssClass="btn btn-default" Width="341px"></asp:TextBox>
            &nbsp;<asp:RequiredFieldValidator ID="ConfirmPasswordRequired0" runat="server" ControlToValidate="Morada" ErrorMessage="A morada é necessaria" ToolTip="A morada é necessaria" ValidationGroup="CreateUserWizard1" CssClass="text-danger"><span class="glyphicon glyphicon-exclamation-sign"></span></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="Val_Morada" runat="server" ControlToValidate="Morada" Display="Dynamic" ErrorMessage="&lt;span class=&quot;glyphicon glyphicon-warning-sign&quot;&gt;&lt;/span&gt; Insira uma Morada válida Ex: rua das cucuias n56 Almada" Text="&lt;span class=&quot;glyphicon glyphicon-warning-sign&quot;&gt;&lt;/span&gt;" ValidationExpression="^([A-Za-z0-9 ÀÈÌÒÙàèìòùÁÉÍÓÚáéíóúÂÊÎÔÛâêîôûÃÕãõçÇ ]{2,100}[^\s])$" ValidationGroup="CreateUserWizard1" />
                            </div>
        <div class="form-inline">
            <h5>&nbsp;&nbsp;&nbsp;&nbsp; Codigo-postal:</h5>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="cod1" runat="server" Width="95px" CssClass="btn btn-default list-inline"></asp:TextBox>
            &nbsp;<asp:TextBox ID="cod2" runat="server" Width="51px" CssClass="btn btn-default list-inline"></asp:TextBox>
            &nbsp;<asp:TextBox ID="cod3" runat="server" Width="187px" CssClass="btn btn-default list-inline"></asp:TextBox>
            <asp:RequiredFieldValidator ID="Codigopostal1" runat="server" ControlToValidate="cod1" ErrorMessage="O primeiro campo do codigo postal é necessario" ToolTip="O primeiro campo do codigo postal é necessario" ValidationGroup="CreateUserWizard1" CssClass="text-danger"><span class="glyphicon glyphicon-exclamation-sign"></span></asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="Codigopostal2" runat="server" ControlToValidate="cod2" ErrorMessage="O segundo campo do codigo postal é necessario" ToolTip="O segundo campo do codigo postal é necessario" ValidationGroup="CreateUserWizard1" CssClass="text-danger"><span class="glyphicon glyphicon-exclamation-sign"></span></asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="Codigopostal3" runat="server" ControlToValidate="cod3" ErrorMessage="O terceiro campo do codigo postal é necessario" ToolTip="O terceiro campo do codigo postal é necessario" ValidationGroup="CreateUserWizard1" CssClass="text-danger"><span class="glyphicon glyphicon-exclamation-sign"></span></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="Val_Cod_Post" runat="server" ErrorMessage="&lt;span class=&quot;glyphicon glyphicon-warning-sign&quot;&gt;&lt;/span&gt; Insira 4 digitos no primeiro campo do codigo postal" ControlToValidate="cod1" Display="Dynamic" Text="&lt;span class=&quot;glyphicon glyphicon-warning-sign&quot;&gt;&lt;/span&gt;" ValidationExpression="\d{4}" ValidationGroup="CreateUserWizard1" />
            <asp:RegularExpressionValidator ID="Val_Cod_Post_2" runat="server" ErrorMessage="&lt;span class=&quot;glyphicon glyphicon-warning-sign&quot;&gt;&lt;/span&gt; Insira 3 digitos no segundo campo do codigo postal" ControlToValidate="cod2" Display="Dynamic" Text="&lt;span class=&quot;glyphicon glyphicon-warning-sign&quot;&gt;&lt;/span&gt;" ValidationExpression="\d{3}" ValidationGroup="CreateUserWizard1" />
            <asp:RegularExpressionValidator ID="Val_Cod_Post_3" runat="server" ControlToValidate="cod3" Display="Dynamic" ErrorMessage="&lt;span class=&quot;glyphicon glyphicon-warning-sign&quot;&gt;&lt;/span&gt; Insira o 3 campo do codigo postal, local a que diz respeito, sem traços" Text="&lt;span class=&quot;glyphicon glyphicon-warning-sign&quot;&gt;&lt;/span&gt;" ValidationExpression="^([A-Za-z0-9 ÀÈÌÒÙàèìòùÁÉÍÓÚáéíóúÂÊÎÔÛâêîôûÃÕãõçÇ ]{2,100}[^\s])$" ValidationGroup="CreateUserWizard1" />
        </div>
        <div class="form-inline">
            <h5>&nbsp;&nbsp;&nbsp;&nbsp; Localidade:</h5>
            &nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="Loca" runat="server" Width="341px" CssClass="btn btn-default"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="localidade" runat="server" ControlToValidate="Loca" ErrorMessage="A Localidade é necessaria" ToolTip="A Localidade é necessaria" ValidationGroup="CreateUserWizard1" CssClass="text-danger"><span class="glyphicon glyphicon-exclamation-sign"></span></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="Val_localidade" runat="server" ControlToValidate="Loca" Display="Dynamic" ErrorMessage="&lt;span class=&quot;glyphicon glyphicon-warning-sign&quot;&gt;&lt;/span&gt; Insira uma Morada válida" Text="&lt;span class=&quot;glyphicon glyphicon-warning-sign&quot;&gt;&lt;/span&gt;" ValidationExpression="^([A-Za-z0-9 ÀÈÌÒÙàèìòùÁÉÍÓÚáéíóúÂÊÎÔÛâêîôûÃÕãõçÇ ]{2,100}[^\s])$" ValidationGroup="CreateUserWizard1" />
                            </div>
    </div> <br />   
    <h5> <strong>Dados relativos a conta:</strong></h5>
        
           </asp:Panel> 
        <asp:CreateUserWizard ID="CreateUserWizard1" runat="server" OnCreatedUser="CreateUserWizard1_CreatedUser" ContinueDestinationPageUrl="~/Conta/reencaminhar.aspx">
        <WizardSteps>
            <asp:CreateUserWizardStep ID="CreateUserWizardStep1" runat="server">
                <ContentTemplate>
                    <table>
                        <tr>
                            <td align="right">
                                <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName"><h5>Email/Username:</h5></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="UserName" runat="server" CssClass="form-control" Width="370px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName" ErrorMessage="O Email/username é necessario" ToolTip="User Name is required." ValidationGroup="CreateUserWizard1" CssClass="text-danger"><span class="glyphicon glyphicon-exclamation-sign"></span></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="EmailRequired2" runat="server" ControlToValidate="Username" Display="Dynamic" ErrorMessage="&lt;span class=&quot;glyphicon glyphicon-warning-sign&quot;&gt;&lt;/span&gt; Insira um Email Valído" Text="&lt;span class=&quot;glyphicon glyphicon-warning-sign&quot;&gt;&lt;/span&gt;" ValidationExpression="^([a-z0-9_\.-]+\@[\da-z\.-]+\.[a-z\.]{2,6})$" />
                            </td>
                        </tr>
                        <tr>
                            <td align="right">
                                <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password"><h5>Palavra-passe:</h5></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="Password" runat="server" TextMode="Password" CssClass="form-control" Width="370px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password" ErrorMessage="A palavra passe tem que ter mais de 8 caracteres." ToolTip="Password is required." ValidationGroup="CreateUserWizard1" CssClass="text-danger"><span class="glyphicon glyphicon-exclamation-sign"></span></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="Val_password" runat="server" ControlToValidate="Password" Display="Dynamic" ErrorMessage="&lt;span class=&quot;glyphicon glyphicon-warning-sign&quot;&gt;&lt;/span&gt; Insira uma palavra passe pelo menos com 8 caracteres" Text="&lt;span class=&quot;glyphicon glyphicon-warning-sign&quot;&gt;&lt;/span&gt;" ValidationExpression="^([A-Za-z0-9 ÀÈÌÒÙàèìòùÁÉÍÓÚáéíóúÂÊÎÔÛâêîôûÃÕãõçÇ ]{7,100}[^\s])$" ValidationGroup="CreateUserWizard1" />
                            </td>
                        </tr>
                        <tr>
                            <td align="right">
                                <asp:Label ID="ConfirmPasswordLabel" runat="server" AssociatedControlID="ConfirmPassword"><h5>Confirmar a palavra-passe:</h5></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="ConfirmPassword" runat="server" TextMode="Password" CssClass="form-control" Width="370px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="ConfirmPasswordRequired" runat="server" ControlToValidate="ConfirmPassword" ErrorMessage="Confirme a palavra-passe" ToolTip="Confirm Password is required." ValidationGroup="CreateUserWizard1" CssClass="text-danger"><span class="glyphicon glyphicon-exclamation-sign"></span></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="right">
                                <asp:Label ID="EmailLabel" runat="server" AssociatedControlID="Email"><h5>Nome:</h5></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="Email" runat="server" CssClass="form-control" Width="370px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="EmailRequired" runat="server" ControlToValidate="Email" ErrorMessage="O nome é necessario" ToolTip="O nome é necessario" ValidationGroup="CreateUserWizard1" CssClass="text-danger"><span class="glyphicon glyphicon-exclamation-sign"></span></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="Val_Nome" runat="server" ControlToValidate="Email" Display="Dynamic" ErrorMessage="&lt;span class=&quot;glyphicon glyphicon-warning-sign&quot;&gt;&lt;/span&gt; Insira um nome válido" Text="&lt;span class=&quot;glyphicon glyphicon-warning-sign&quot;&gt;&lt;/span&gt;" ValidationExpression="^([a-zA-ZçÇãÃâÂÎîÊêáàÁÀÌÍìí\s]{5,100})" ValidationGroup="CreateUserWizard1" />
                            </td>
                        </tr>
                        <tr>
                            <td align="right">
                                <asp:Label ID="Label2" runat="server" AssociatedControlID="Email"><h5>Telefone:</h5></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="Telefone" runat="server" CssClass="form-control" Width="370px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Telefone" ErrorMessage="O numero de telefone é necessario" ValidationGroup="CreateUserWizard1" CssClass="text-danger"><span class="glyphicon glyphicon-exclamation-sign"></span></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="Val_Tel" runat="server" ErrorMessage="&lt;span class=&quot;glyphicon glyphicon-warning-sign&quot;&gt;&lt;/span&gt; Insira um numero de telefone VALIDO" ControlToValidate="Telefone" Display="Dynamic" Text="&lt;span class=&quot;glyphicon glyphicon-warning-sign&quot;&gt;&lt;/span&gt;" ValidationExpression="^(\d{9})$" ValidationGroup="CreateUserWizard1" />
                            </td>
                        </tr>
                        <tr>
                            <td align="right">
                                <asp:Label ID="Label1" runat="server" AssociatedControlID="Email"><h5>Numero de contribuinte:</h5></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="n_contribuinte" runat="server" CssClass="form-control" Width="370px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="n_contribuinte" ErrorMessage="Numero de contribuinte é necessario" ToolTip="Numero de contribuinte é necessario" ValidationGroup="CreateUserWizard1" CssClass="text-danger"><span class="glyphicon glyphicon-exclamation-sign"></span></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="Val_Nif_2" runat="server" ControlToValidate="n_contribuinte" Display="Dynamic" ErrorMessage="&lt;span class=&quot;glyphicon glyphicon-warning-sign&quot;&gt;&lt;/span&gt; Insira um NIF valido com 9 digitos" Text="&lt;span class=&quot;glyphicon glyphicon-warning-sign&quot;&gt;&lt;/span&gt;" ValidationExpression="^(\d{9})$" ValidationGroup="CreateUserWizard1" />
                                <asp:CustomValidator ID="CustomValidator1" runat="server" ControlToValidate="n_contribuinte" Display="Dynamic" ErrorMessage="&lt;span class=&quot;glyphicon glyphicon-remove-sign&quot;&gt;&lt;/span&gt; Nif já registado" OnServerValidate="CustomValidator1_ServerValidate" Text="&lt;span class=&quot;glyphicon glyphicon-remove-sign&quot;&gt;&lt;/span&gt;" />
                            </td>
                        </tr>
                        <tr>
                            <td align="right">
                                <asp:Label ID="QuestionLabel" runat="server" AssociatedControlID="Question"><h5>Questão de segurança:</h5></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="Question" runat="server" CssClass="form-control" Width="370px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="QuestionRequired" runat="server" ControlToValidate="Question" ErrorMessage="A questão de segurança é necessaria." ToolTip="Security question is required." ValidationGroup="CreateUserWizard1" CssClass="text-danger"><span class="glyphicon glyphicon-exclamation-sign"></span></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="right">
                                <asp:Label ID="AnswerLabel" runat="server" AssociatedControlID="Answer"><h5>Resposta:</h5></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="Answer" runat="server" Width="370px" CssClass="form-control"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="AnswerRequired" runat="server" ControlToValidate="Answer" ErrorMessage="Responda a questão de segurança" ToolTip="Security answer is required." ValidationGroup="CreateUserWizard1" CssClass="text-danger"><span class="glyphicon glyphicon-exclamation-sign"></span></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="center" colspan="2">
                                <asp:CompareValidator ID="PasswordCompare" runat="server" ControlToCompare="Password" ControlToValidate="ConfirmPassword" Display="Dynamic" ErrorMessage="A palavra passe e a confirmação tem de ser iguais." ValidationGroup="CreateUserWizard1" CssClass="text-danger"></asp:CompareValidator>
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
    </asp:Panel>

    <asp:Panel ID="Panel_Recupera_questao" runat="server">
        <h5><span style="color:grey; font-weight: 900;"><em style="background-color: #E6F0F3">Esta na recuperação da palavra passe pela Questão de segurança</em></span> Responda aos seguintes campos:</h5>
        <hr />

        <asp:PasswordRecovery ID="PasswordRecovery1" runat="server" AnswerRequiredErrorMessage="Coloque a resposta a questão" BackColor="#F7F7DE" BorderColor="#CCCC99" BorderPadding="2" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="10pt" UserNameRequiredErrorMessage="Insira o Email/username">
            <TitleTextStyle BackColor="#6B696B" Font-Bold="True" ForeColor="#FFFFFF" />
            <UserNameTemplate>
                <table cellpadding="2" cellspacing="0" style="border-collapse:collapse;">
                    <tr>
                        <td>
                            <table cellpadding="0">
                                <tr>
                                    <td align="center" colspan="2" style="color:White;background-color:#6B696B;font-weight:bold;"><span style="color: rgb(255, 255, 255); font-family: Verdana; font-size: 13.3333px; font-style: normal; font-variant: normal; font-weight: bold; letter-spacing: normal; line-height: 19.0476px; orphans: auto; text-align: -webkit-center; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none; background-color: rgb(107, 105, 107);">Esqueceu-se da Palavra-passe?</span></td>
                                </tr>
                                <tr>
                                    <td align="center" colspan="2"><span style="color: rgb(51, 51, 51); font-family: Verdana; font-size: 13.3333px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 19.0476px; orphans: auto; text-align: -webkit-center; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none; background-color: rgb(247, 247, 222);">Introduza o Nome de Utilizador para receber a palavra-passe.</span></td>
                                </tr>
                                <tr>
                                    <td align="right">
                                        <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName">Email/username:</asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="UserName" runat="server"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName" ErrorMessage="Insira o Email/username" ToolTip="Insira o Email/username" ValidationGroup="PasswordRecovery1">*</asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center" colspan="2" style="color:Red;">
                                        <asp:Literal ID="FailureText" runat="server" EnableViewState="False"></asp:Literal>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" colspan="2">
                                        <asp:Button ID="SubmitButton" runat="server" CommandName="Submit" Text="Submit" ValidationGroup="PasswordRecovery1" />
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </UserNameTemplate>
        </asp:PasswordRecovery>


        <br />


    </asp:Panel>


    <asp:Panel ID="Panel_Recupera_email" runat="server">
        <h5><span style="color:grey; font-weight: 900;"><em style="background-color: #E6F0F3">Esta na recuperação da palavra passe para o seu Email</em></span> Responda aos seguintes campos:</h5>
        <hr />

    <asp:PasswordRecovery ID="PasswordRecovery2" runat="server" AnswerRequiredErrorMessage="Coloque a resposta a questão" BackColor="#F7F7DE" BorderColor="#CCCC99" BorderPadding="2" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="10pt" UserNameRequiredErrorMessage="Insira o Email/username">
            <TitleTextStyle BackColor="#6B696B" Font-Bold="True" ForeColor="#FFFFFF" />
            <UserNameTemplate>
                <table cellpadding="2" cellspacing="0" style="border-collapse:collapse;">
                    <tr>
                        <td>
                            <table cellpadding="0">
                                <tr>
                                    <td align="center" colspan="2" style="color:White;background-color:#6B696B;font-weight:bold;"><span style="color: rgb(255, 255, 255); font-family: Verdana; font-size: 13.3333px; font-style: normal; font-variant: normal; font-weight: bold; letter-spacing: normal; line-height: 19.0476px; orphans: auto; text-align: -webkit-center; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none; background-color: rgb(107, 105, 107);">Esqueceu-se da Palavra-passe?</span></td>
                                </tr>
                                <tr>
                                    <td align="center" colspan="2"><span style="color: rgb(51, 51, 51); font-family: Verdana; font-size: 13.3333px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 19.0476px; orphans: auto; text-align: -webkit-center; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none; background-color: rgb(247, 247, 222);">Introduza o Nome de Utilizador para receber a palavra-passe.</span></td>
                                </tr>
                                <tr>
                                    <td align="right">
                                        <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName">Email/username:</asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="UserName" runat="server"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName" ErrorMessage="Insira o Email/username" ToolTip="Insira o Email/username" ValidationGroup="PasswordRecovery2">*</asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center" colspan="2" style="color:Red;">
                                        <asp:Literal ID="FailureText" runat="server" EnableViewState="False"></asp:Literal>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" colspan="2">
                                        <asp:Button ID="SubmitButton" runat="server" CommandName="Submit" Text="Submit" ValidationGroup="PasswordRecovery2" />
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </UserNameTemplate>
        </asp:PasswordRecovery>


        <br />


    </asp:Panel>

    <asp:Panel ID="Panel_login" runat="server">
        <h5><span style="color:grey; font-weight: 900;"><em style="background-color: #E6F0F3">Esta no Login</em></span> Introduza os seus dados:</h5>
        <hr />
        <asp:LoginView ID="LoginView1" runat="server">
            <AnonymousTemplate>
                <asp:Login ID="Login1" runat="server" BackColor="#F7F7DE" BorderColor="#CCCC99" BorderStyle="Solid" BorderWidth="1px" CreateUserText="Não tem conta? Crie a sua conta aqui" CreateUserUrl="~/Conta/Registo.aspx" DestinationPageUrl="~/Conta/reencaminhar.aspx" Font-Names="Verdana" Font-Size="10pt">
                    <TitleTextStyle BackColor="#6B696B" Font-Bold="True" ForeColor="#FFFFFF" />
                </asp:Login>
            </AnonymousTemplate>
            <LoggedInTemplate>
                Bem vindo
                <asp:LoginName ID="LoginName2" runat="server" />
                &nbsp;<asp:LoginStatus ID="LoginStatus2" runat="server" />
            </LoggedInTemplate>
        </asp:LoginView>


        <br />


    </asp:Panel>



    <br />
</asp:Content>

