<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="inicio_utilizador.aspx.cs" Inherits="Administrador_inicio_utilizador" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <h2><span class="glyphicon glyphicon-folder-open"></span>&nbsp;Informação utilizador</h2>
    <h5>Ola utilizador aqui pode ver e editar a sua informação:<br /><br /></h5>
       
  <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" Width="770px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" autogeneratecolumns="False">
        <Columns>
        <asp:CommandField ShowSelectButton="true" SelectText="Editar informação"/>
        <asp:BoundField DataField="Email_NomeUtil" HeaderText="Nome de utilizador" SortExpression="DateField" />
        <asp:BoundField DataField="Nome" HeaderText="Nome" SortExpression="DateField" />
        <asp:BoundField DataField="N_contribuinte" HeaderText="Numero de contribuinte" SortExpression="DateField" />
        <asp:BoundField DataField="Telefone" HeaderText="Telefone" SortExpression="DateField" />
        </Columns>
        <FooterStyle BackColor="White" ForeColor="#000066" />
        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
        <RowStyle ForeColor="#000066" />
        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#007DBB" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#00547E" />
    </asp:GridView>

     <br />
    <h5>A sua morada:<br /></h5>
       
  <asp:GridView ID="GridView2" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" Width="770px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" AutoGenerateColumns="false">
        <Columns>
        <asp:BoundField DataField="Morada" ItemStyle-Width="225px" HeaderText="Morada" SortExpression="DateField" />
        <asp:BoundField DataField="Codigo_postal1" ItemStyle-Width="110px" HeaderText="Codigo postal" SortExpression="DateField" />
        <asp:BoundField DataField="Codigo_postal2" ItemStyle-Width="50px" HeaderText="" SortExpression="DateField" />
        <asp:BoundField DataField="Codigo_postal3" ItemStyle-Width="210px" HeaderText="" SortExpression="DateField" />
        <asp:BoundField DataField="Localidade" HeaderText="Localidade" SortExpression="DateField" />
        </Columns>
        <FooterStyle BackColor="White" ForeColor="#000066" />
        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
        <RowStyle ForeColor="#000066" />
        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#007DBB" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#00547E" />
    </asp:GridView>

     <br />
            <asp:Label ID="Label2" runat="server" Text="" style="font-weight: 700; font-size: large;"></asp:Label>

     <asp:Panel ID="Panel1" runat="server">
            <hr />
         <p class="text-danger">
                    <asp:Literal ID="ErrorMessage0" runat="server" Text="&lt;span class=&quot;glyphicon glyphicon-ban-circle&quot;&gt;&lt;/span&gt; Campos que não podem ser alterados" />
         </p>
        <div class="form-group">
            <div class="form-inline">
                <asp:Label runat="server" CssClass="col-md-2 control-label" Text="Nome: " Font-Size="14"></asp:Label>
                 <br /> <br />
                 &nbsp;&nbsp;&nbsp;<asp:TextBox ID="Textnome" runat="server" Width="333px" Enabled="False" CssClass="btn btn-default"></asp:TextBox>
                 &nbsp; <span class="glyphicon glyphicon-ban-circle"></span>&nbsp;</div>
            <div class="form-inline">
            <br />
                <asp:Label runat="server" CssClass="col-md-2 control-label" Font-Size="14" Text="Email/username: "></asp:Label>
                <br /><br />
                &nbsp;&nbsp;&nbsp;<asp:TextBox ID="Textemail" runat="server" Width="336px" Enabled="False" CssClass="btn btn-default"></asp:TextBox>
                &nbsp;<span class="glyphicon glyphicon-ban-circle"></span><br />
            </div>
            
            <div class="form-inline">
                <br />
                <asp:Label runat="server" CssClass="col-md-4 control-label" Font-Size="14" Text="Nº Contribuinte: "></asp:Label>
                <br /><br />
                &nbsp;&nbsp;&nbsp;<asp:TextBox ID="Textcontribuinte" runat="server" CssClass="btn btn-default" Width="336px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" Display="Dynamic" runat="server" ControlToValidate="Textcontribuinte" CssClass="text-danger" ErrorMessage="&lt;span class=&quot;glyphicon glyphicon-exclamation-sign&quot;&gt;&lt;/span&gt; O numero de contribuinte é necessario." ValidationGroup="renovarcampos"><span class="glyphicon glyphicon-exclamation-sign"></span></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="N_contri" Display="Dynamic" runat="server" ControlToValidate="Textcontribuinte" ErrorMessage="&lt;span class=&quot;glyphicon glyphicon-wrench&quot;&gt;&lt;/span&gt;O numero de contribuinte têm 9 digitos" ValidationExpression="\d{9}" ValidationGroup="renovarcampos"><span class="glyphicon glyphicon-wrench"></span></asp:RegularExpressionValidator>
            </div>   
                
            <div class="form-inline">
                 <br />
                <asp:Label ID="Label1" runat="server" CssClass="col-md-4 control-label" Font-Size="14" Text="Telefone: "></asp:Label>
                <br /><br />
                &nbsp;&nbsp;&nbsp;<asp:TextBox ID="Texttelefone" runat="server" CssClass="btn btn-default" Width="336px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="Texttelefone" Display="Dynamic" CssClass="text-danger" ErrorMessage="&lt;span class=&quot;glyphicon glyphicon-exclamation-sign&quot;&gt;&lt;/span&gt; O telefone é necessario." ValidationGroup="renovarcampos" ><span class="glyphicon glyphicon-exclamation-sign"></span></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="N_contri0" runat="server" ControlToValidate="Texttelefone" Display="Dynamic" ErrorMessage="&lt;span class=&quot;glyphicon glyphicon-wrench&quot;&gt;&lt;/span&gt; Um numero de telefone têm 9 digitos" ValidationExpression="\d{9}" ValidationGroup="renovarcampos"><span class="glyphicon glyphicon-wrench"></span></asp:RegularExpressionValidator>
           </div>
            <br />
            <br />
            <div class="form-group">
                <div class="form-inline">
                    <h4>&nbsp;&nbsp; Morada:</h4>
                    &nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="Morada" runat="server" CssClass="btn btn-default" Width="341px"></asp:TextBox>
                    &nbsp;<asp:RequiredFieldValidator ID="ConfirmPasswordRequired0" runat="server" ControlToValidate="Morada" CssClass="text-danger" ErrorMessage="&lt;span class=&quot;glyphicon glyphicon-exclamation-sign&quot;&gt;&lt;/span&gt; A morada é necessaria" ToolTip="A morada é necessaria" ValidationGroup="renovarcampos"><span class="glyphicon glyphicon-exclamation-sign"></span></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="Val_Morada" runat="server" ControlToValidate="Morada" Display="Dynamic" ErrorMessage="&lt;span class=&quot;glyphicon glyphicon-wrench&quot;&gt;&lt;/span&gt; Insira uma Morada válida Ex: rua das cucuias n56 Almada" Text="&lt;span class=&quot;glyphicon glyphicon-wrench&quot;&gt;&lt;/span&gt;" ValidationExpression="^([A-Za-z0-9 ÀÈÌÒÙàèìòùÁÉÍÓÚáéíóúÂÊÎÔÛâêîôûÃÕãõçÇ ]{2,100}[^\s])$" ValidationGroup="renovarcampos" />
                </div>
                <div class="form-inline">
                    <h4>&nbsp;&nbsp; Codigo-postal:</h4>
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="cod1" runat="server" CssClass="btn btn-default list-inline" Width="95px"></asp:TextBox>
                    &nbsp;<asp:TextBox ID="cod2" runat="server" CssClass="btn btn-default list-inline" Width="56px"></asp:TextBox>
                    &nbsp;<asp:TextBox ID="cod3" runat="server" CssClass="btn btn-default list-inline" Width="181px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="Codigopostal1" runat="server" ControlToValidate="cod1" CssClass="text-danger" ErrorMessage="&lt;span class=&quot;glyphicon glyphicon-exclamation-sign&quot;&gt;&lt;/span&gt; O primeiro campo do codigo postal é necessario" ToolTip="O primeiro campo do codigo postal é necessario" ValidationGroup="renovarcampos"><span class="glyphicon glyphicon-exclamation-sign"></span></asp:RequiredFieldValidator>
                    <asp:RequiredFieldValidator ID="Codigopostal2" runat="server" ControlToValidate="cod2" CssClass="text-danger" ErrorMessage="&lt;span class=&quot;glyphicon glyphicon-exclamation-sign&quot;&gt;&lt;/span&gt; O segundo campo do codigo postal é necessario" ToolTip="O segundo campo do codigo postal é necessario" ValidationGroup="renovarcampos"><span class="glyphicon glyphicon-exclamation-sign"></span></asp:RequiredFieldValidator>
                    <asp:RequiredFieldValidator ID="Codigopostal3" runat="server" ControlToValidate="cod3" CssClass="text-danger" ErrorMessage="&lt;span class=&quot;glyphicon glyphicon-exclamation-sign&quot;&gt;&lt;/span&gt; O terceiro campo do codigo postal é necessario" ToolTip="O terceiro campo do codigo postal é necessario" ValidationGroup="renovarcampos"><span class="glyphicon glyphicon-exclamation-sign"></span></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="Val_Cod_Post" runat="server" ControlToValidate="cod1" Display="Dynamic" ErrorMessage="&lt;span class=&quot;glyphicon glyphicon-wrench&quot;&gt;&lt;/span&gt; Insira 4 digitos no primeiro campo do codigo postal" Text="&lt;span class=&quot;glyphicon glyphicon-wrench&quot;&gt;&lt;/span&gt;" ValidationExpression="\d{4}" ValidationGroup="renovarcampos" />
                    <asp:RegularExpressionValidator ID="Val_Cod_Post_2" runat="server" ControlToValidate="cod2" Display="Dynamic" ErrorMessage="&lt;span class=&quot;glyphicon glyphicon-wrench&quot;&gt;&lt;/span&gt; Insira 3 digitos no segundo campo do codigo postal" Text="&lt;span class=&quot;glyphicon glyphicon-wrench&quot;&gt;&lt;/span&gt;" ValidationExpression="\d{3}" ValidationGroup="renovarcampos" />
                    <asp:RegularExpressionValidator ID="Val_Cod_Post_3" runat="server" ControlToValidate="cod3" Display="Dynamic" ErrorMessage="&lt;span class=&quot;glyphicon glyphicon-wrench&quot;&gt;&lt;/span&gt; Insira o 3 campo do codigo postal, local a que diz respeito, sem traços" Text="&lt;span class=&quot;glyphicon glyphicon-wrench&quot;&gt;&lt;/span&gt;" ValidationExpression="^([A-Za-z0-9 ÀÈÌÒÙàèìòùÁÉÍÓÚáéíóúÂÊÎÔÛâêîôûÃÕãõçÇ\s]{2,100})$" ValidationGroup="renovarcampos" />
                </div>
                <div class="form-inline">
                    <h4>&nbsp;&nbsp; Localidade:</h4>
                    &nbsp;&nbsp;&nbsp; <asp:TextBox ID="Loca" runat="server" CssClass="btn btn-default" Width="341px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="localidade" runat="server" ControlToValidate="Loca" Display="Dynamic" CssClass="text-danger" ErrorMessage="&lt;span class=&quot;glyphicon glyphicon-exclamation-sign&quot;&gt;&lt;/span&gt; A Localidade é necessaria" ToolTip="A Localidade é necessaria" ValidationGroup="renovarcampos"><span class="glyphicon glyphicon-exclamation-sign"></span></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="Val_localidade" runat="server" ControlToValidate="Loca" Display="Dynamic" ErrorMessage="&lt;span class=&quot;glyphicon glyphicon-wrench&quot;&gt;&lt;/span&gt; Insira uma Localidade válida" Text="&lt;span class=&quot;glyphicon glyphicon-wrench&quot;&gt;&lt;/span&gt;" ValidationExpression="^([A-Za-z0-9 ÀÈÌÒÙàèìòùÁÉÍÓÚáéíóúÂÊÎÔÛâêîôûÃÕãõçÇ\s]{2,100})$" ValidationGroup="renovarcampos" />
                </div>
            </div>
            <br />
                
                
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" CssClass="text-danger" ValidationGroup="renovarcampos" />
                <br />
                
           
       
            <asp:Label runat="server" CssClass="col-md-2 control-label" Font-Underline="true" Font-Size="13"></asp:Label>
                    <asp:Button ID="voltar" runat="server" OnClick="voltar_Click" CssClass="btn btn-default" Text="voltar" Width="109px" />
                    <asp:Button ID="Button1" runat="server" Text="Modificar" Width="109px" CssClass="btn btn-default" OnClick="Button1_Click" ValidateRequestMode="Enabled" ValidationGroup="renovarcampos" />
                </div>

        </asp:Panel>
</asp:Content>

