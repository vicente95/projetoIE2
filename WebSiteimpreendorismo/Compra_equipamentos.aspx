<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Compra_equipamentos.aspx.cs" Inherits="About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Compra de equipamentos</h2>
    Preencha este formulario para que possmos conhecer o produto que pretende vender.<br /><br />
    <asp:Panel ID="InsertDados" runat="server">
        <div class="Form">
        <ul>
            <li style="width: 552px">
                    <label>Nome:</label>
                        <asp:RequiredFieldValidator ID="Val_Nome" runat="server" ErrorMessage="* Nome é obrigatório" ControlToValidate="T_Nome" Display="Dynamic" Text="*" ValidationGroup="Formulario"/>
                        <asp:RegularExpressionValidator ID="Val_Nome2" runat="server" ErrorMessage="** Insira um nome válido" ControlToValidate="T_Nome" Display="Dynamic" Text="**" ValidationExpression="^([a-zA-ZçÇãÃâÂÎîÊêáàÁÀÌÍìí\s]{5,100})" ValidationGroup="Formulario" />
                
                <asp:TextBox ID="T_Nome" runat="server" Width="479px" />
            </li>
        </ul>
            <ul>
                <li> <label>Telefone:</label>
                    <asp:RequiredFieldValidator ID="Val_Tel_1" runat="server" ControlToValidate="T_Tel" Display="Dynamic" ErrorMessage="* Insira um Numero de Telefone ou Telemovel" Text="*" ValidationGroup="Formulario" />
                    <asp:RegularExpressionValidator ID="Val_Tel_2" runat="server" ControlToValidate="T_Tel" Display="Dynamic" ErrorMessage="** Insira um numero VALIDO" Text="**" ValidationExpression="^(\d{9})$" ValidationGroup="Formulario" />
                    <asp:TextBox ID="T_Tel" runat="server" Width="196px" />
                    &nbsp;<label>E-mail:</label>
                    <asp:RequiredFieldValidator ID="EmailRequired1" runat="server" ControlToValidate="Email" Display="Dynamic" ErrorMessage="* Email Obrigatório" Text="*" ValidationGroup="Formulario"/>
                    <asp:RegularExpressionValidator ID="EmailRequired2" runat="server" ControlToValidate="Email" Display="Dynamic" ErrorMessage="** Insira um Email Valído" Text="**" ValidationExpression="^([a-z0-9_\.-]+\@[\da-z\.-]+\.[a-z\.]{2,6})$" ValidationGroup="Formulario"/>
                    <asp:TextBox ID="Email" runat="server" Width="196px" />
                </li>
            </ul>
            <ul>
                <li>
                    <label>
                    Produto:
                    <asp:RequiredFieldValidator ID="Val_Produto" runat="server" ControlToValidate="T_Produto" Display="Dynamic" ErrorMessage="* Insira uma Morada" Text="*" ValidationGroup="Formulario" />
                    <asp:RegularExpressionValidator ID="Val_Produto2" runat="server" ControlToValidate="T_Produto" Display="Dynamic" ErrorMessage="** Insira uma Morada válido" Text="**" ValidationExpression="^([A-Za-z ÀÈÌÒÙàèìòùÁÉÍÓÚáéíóúÂÊÎÔÛâêîôûÃÕãõçÇ]{2,100}[^\s])$" ValidationGroup="Formulario"/>
                    &nbsp;&nbsp;
                    </label>
                    <asp:TextBox ID="T_Produto" runat="server" Width="198px" />
                </li>
            </ul>
            <ul>
                <li>
                    <label>
                    Tipo de produto
                    <asp:RequiredFieldValidator ID="V_Prod" runat="server" ControlToValidate="Lista_Tipo_de_produtos" Display="Dynamic" ErrorMessage="* Selecione a Freguesia" InitialValue="" Text="*" ValidationGroup="Formulario" />
                    </label>
                    <asp:DropDownList ID="Lista_Tipo_de_produtos" runat="server" Height="28px" >
                        <asp:ListItem Value="1">Telemoveis/acessorios</asp:ListItem>
                        <asp:ListItem Value="2">Computadores/componentes</asp:ListItem>
                        <asp:ListItem Value="3">Perifericos</asp:ListItem>
                        <asp:ListItem Value="4">Cablagem</asp:ListItem>
                    </asp:DropDownList>
                    &nbsp;</li>
            </ul>
            <ul>
                <li>
                    <label>
                    Descrição:
                    <asp:RequiredFieldValidator ID="DescricaoReq" runat="server" ControlToValidate="T_descricao" Display="Dynamic" ErrorMessage="* Coloque uma descrição do produto. Estado do mesmo, condições gerais, algumas considerações que ache importantes"  ValidationGroup="Formulario">*</asp:RequiredFieldValidator>
                    </label>
                </li>
                
                    <asp:TextBox ID="T_descricao" runat="server" Height="85px" TextMode="MultiLine" Width="523px" />
                
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" CssClass="text-danger" ValidationGroup="Formulario"/>
            </ul>
            <p>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="B_submeter_produto" runat="server" OnClick="B_Create_User_Click" Text="Enviar formulario" ValidateRequestMode="Enabled" ValidationGroup="Formulario" />
            </p>
        </div>
    </asp:Panel>
</asp:Content>
