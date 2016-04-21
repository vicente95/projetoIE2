<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Compra_equipamentos.aspx.cs" Inherits="About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Compra de equipamentos</h2>
    Preencha este formulario para que possmos conhecer o produto que pretende vender.<br /><br />
    <asp:Panel ID="InsertDados" runat="server">
        <div class="Form">
        <ul>
            <li>
                    Nome
                        <asp:RequiredFieldValidator ID="Val_Nome" runat="server" ErrorMessage="* Nome é obrigatório" ControlToValidate="T_Nome" Display="Dynamic" Text="*" />
                        <asp:RegularExpressionValidator ID="Val_Nome2" runat="server" ErrorMessage="** Insira um nome válido" ControlToValidate="T_Nome" Display="Dynamic" Text="**" ValidationExpression="^([a-zA-ZçÇãÃâÂÎîÊêáàÁÀÌÍìí\s]{5,100})" />
                
                <asp:TextBox ID="T_Nome" runat="server" />
            </li>
            <li>
                    Número de Contribuinte
                        <asp:RequiredFieldValidator ID="Val_Nif_1" runat="server" ErrorMessage="* Insira um Numero de Identificação Fiscal" ControlToValidate="T_Nif" Display="Dynamic" Text="*" />
                        <asp:RegularExpressionValidator ID="Val_Nif_2" runat="server" ErrorMessage="** Insira um NIF valido com 9 digitos" ControlToValidate="T_Nif" Display="Dynamic" Text="**" ValidationExpression="^(\d{9})$" />
                        <asp:CustomValidator ID="CustomValidator1" runat="server" ErrorMessage="*** Nif já registado" ControlToValidate="T_Nif" OnServerValidate="CustomValidator1_ServerValidate" Text="***" Display="Dynamic" />
                    
                
                <asp:TextBox ID="T_Nif" runat="server" />
            </li>
            <li></li>
            <li >
                    Telefone
                        <asp:RequiredFieldValidator ID="Val_Tel_1" runat="server" ErrorMessage="* Insira um Numero de Telefone ou Telemovel" ControlToValidate="T_Tel" Display="Dynamic" Text="*" />
                        <asp:RegularExpressionValidator ID="Val_Tel_2" runat="server" ErrorMessage="** Insira um numero VALIDO" ControlToValidate="T_Tel" Display="Dynamic" Text="**" ValidationExpression="^(\d{9})$" />
                    
                <asp:TextBox ID="T_Tel" runat="server" />
            </li>
            <li>
                E-mail:
                    <asp:RequiredFieldValidator ID="EmailRequired" runat="server" ErrorMessage="* Email Obrigatório" ControlToValidate="Email" Display="Dynamic" Text="*" />
                    <asp:RegularExpressionValidator ID="EmailRequired2" runat="server" ErrorMessage="** Insira um Email Valído" ControlToValidate="Email" Display="Dynamic" Text="**" ValidationExpression="^([a-z0-9_\.-]+\@[\da-z\.-]+\.[a-z\.]{2,6})$" />
               
                <asp:TextBox runat="server" ID="Email" />
            </li>
            <li>
                <label>
                    Localidade
                        <asp:RequiredFieldValidator ID="V_Freg" runat="server" ErrorMessage="* Selecione a Freguesia" ControlToValidate="Lista_Freguesias" InitialValue="" Display="Dynamic" Text="*" />
                    
                </label>
                <asp:DropDownList ID="Lista_Freguesias" runat="server" />
            </li>
            <li></li>
            <li>
                <label>
                    Morada
                        <asp:RequiredFieldValidator ID="Val_Morada" runat="server" ValidationGroup="CreateUserWizard1" ErrorMessage="* Insira uma Morada" ControlToValidate="T_Nome" Display="Dynamic" Text="*" />
                        <asp:RegularExpressionValidator ID="Val_Morada2" runat="server" ErrorMessage="** Insira uma Morada válido" ControlToValidate="T_Nome" Display="Dynamic" Text="**" ValidationExpression="^([A-Za-z ÀÈÌÒÙàèìòùÁÉÍÓÚáéíóúÂÊÎÔÛâêîôûÃÕãõçÇ]{2,100}[^\s])$" />
                    
                </label>
                <asp:TextBox ID="T_Morada" runat="server" />
            </li>
            <li></li>
            <li>
                <label>
                    Código-postal
                        <asp:RequiredFieldValidator ID="Val_Cod_Post_1" runat="server" ErrorMessage="* Insira um Codigo de Postal" ControlToValidate="T_Cod_Post" Display="Dynamic" Text="*" />
                        <asp:RegularExpressionValidator ID="Val_Cod_Post_2" runat="server" ErrorMessage="** Insira um Codigo de Postal VALIDO" ControlToValidate="T_Cod_Post" Display="Dynamic" Text="**" ValidationExpression="\d{4}([\-]\d{3})?" />
      
                </label>
                <asp:TextBox ID="T_Cod_Post" runat="server" />
            </li>
            <li></li>
            <li>
                <label>
                    Nome de Utilizador
                        <asp:RequiredFieldValidator ID="User1" runat="server" ControlToValidate="UserName" ErrorMessage="* Nome de Utilizador é obrigatorio" Display="Dynamic" Text="*" />
                        <asp:RegularExpressionValidator ID="User2" runat="server" ErrorMessage="** Insira um usermame valido sem carateres especiais e com mais de 3 carateres" ControlToValidate="UserName" Display="Dynamic" Text="**" ValidationExpression="[a-zA-Z0-9_-]{3,30}" />
                        <asp:CustomValidator ID="User3" runat="server" ErrorMessage="** Utilizador ja se encontra atribuido" ControlToValidate="UserName" OnServerValidate="ValUser_ServerValidate" Text="**" Display="Dynamic" />
                    
                </label>
                <asp:TextBox runat="server" ID="UserName" />
            </li>
            <li>
                <label>Password:
                    <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password" ErrorMessage="Password é obrigatoria" ToolTip="Password is required." Display="Dynamic">*</asp:RequiredFieldValidator>
                </label>
                <asp:TextBox runat="server" ID="Password" TextMode="Password" />
            </li>
            <li>
                <label>Confirmar Password:
                    <asp:RequiredFieldValidator ID="ConfirmPasswordRequired" runat="server" ControlToValidate="ConfirmPassword" ErrorMessage="Tem de confirmar as Passwords" Display="Dynamic">*</asp:RequiredFieldValidator>
                </label>
                <asp:TextBox runat="server" TextMode="Password" ID="ConfirmPassword"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="Password" ErrorMessage="As Passwords não sao iguais" ControlToValidate="ConfirmPassword" Display="None" />
            </li>
            <li>
                <br />
                <asp:Button ID="B_Create_User" runat="server" Text="Criar Utilizador" CausesValidation="false" OnClick="B_Create_User_Click" />
            </li>
        </ul>
        </div>
    </asp:Panel>
</asp:Content>
