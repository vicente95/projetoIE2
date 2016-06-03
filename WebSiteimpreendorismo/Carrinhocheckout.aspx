<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Carrinhocheckout.aspx.cs" Inherits="Carrinhocheckout" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <h2><span class="glyphicon glyphicon-send"></span> Finalização da Compra</h2>
    <asp:LoginView ID="LoginView1" runat="server">
        <AnonymousTemplate>
            Por favor proceda ao login
        </AnonymousTemplate>
        <LoggedInTemplate>
            <h3 style="padding-left: 33px">Produtos:</h3>
            <asp:GridView ID="Produtos" runat="server" AutoGenerateColumns="False" BorderColor="#efeeef" BorderWidth="33" CellPadding="10" GridLines="Both" Width="500">
                <Columns>
                    <asp:BoundField DataField="ProductId" HeaderText="Id do produto">
                    <HeaderStyle CssClass="hidden" />
                    <ItemStyle CssClass="hidden" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Produtos.ProductName" HeaderText="Nome do produto" />
                    <asp:BoundField DataField="Produtos.UnitPrice" DataFormatString="{0:c}" HeaderText="Preço" />
                </Columns>
            </asp:GridView>
            <asp:DetailsView ID="InformacaoCompra" runat="server" AutoGenerateRows="false" BorderStyle="None" CellPadding="10" CommandRowStyle-BorderStyle="None" GridLines="None">
                <Fields>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <h3>Dados do utilizador:</h3>
                            <br />
                            <asp:Label ID="Nome_utilizador" runat="server" Text='<%#: Eval("Nome_utilizador") %>'></asp:Label>
                            <asp:Label ID="Telefone" runat="server" Text='<%#: Eval("Telefone") %>'></asp:Label>
                            <br />
                            <asp:Label ID="Morada" runat="server" Text='<%#: Eval("Morada") %>'></asp:Label>
                            <br />
                            <asp:Label ID="Codigo_postal1" runat="server" Text='<%#: Eval("Codigo_postal1") %>'></asp:Label>
                            <asp:Label ID="Codigo_postal2" runat="server" Text='<%#: Eval("Codigo_postal2") %>'></asp:Label>
                            <asp:Label ID="Codigo_postal3" runat="server" Text='<%#: Eval("Codigo_postal3") %>'></asp:Label>
                            <asp:Label ID="Localidade" runat="server" Text='<%#: Eval("Localidade") %>'></asp:Label>
                            <p>
                            </p>
                            <h3>Compra total:</h3>
                            <br />
                            <asp:Label ID="Total" runat="server" Text='<%#: Eval("Total", "{0:C}") %>'></asp:Label>
                        </ItemTemplate>
                        <ItemStyle HorizontalAlign="Left" />
                    </asp:TemplateField>
                </Fields>
            </asp:DetailsView>
            <p>
            </p>
            <hr />

            <asp:Button ID="CheckoutConfirm" runat="server" OnClick="CheckoutConfirm_Click" Text="Continuar" CssClass="btn btn-success" />
        </LoggedInTemplate>
    </asp:LoginView>
     
    <br />
    <br />

</asp:Content>

