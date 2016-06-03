<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Carrinhoc.aspx.cs" Inherits="WingtipToys.Carrinhoc" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <h2><span class="glyphicon glyphicon-shopping-cart"></span>&nbsp;Carrinho</h2>
    <br />
    <div id="ShoppingCartTitle" runat="server" class="ContentHead"><h4>Produtos:</h4></div>
    <asp:GridView ID="CartList" runat="server" AutoGenerateColumns="False" ShowFooter="True" GridLines="Vertical" CellPadding="4"
        ItemType="WingtipToys.Models.Carrinho" SelectMethod="GetShoppingCartItems" 
        CssClass="table table-striped table-bordered">   
        <Columns>
        <asp:BoundField DataField="ProductID" HeaderText="ID" SortExpression="ProductID"><HeaderStyle CssClass="hidden"/><ItemStyle CssClass="hidden"/></asp:BoundField>
        <asp:BoundField DataField="Produtos.ProductName" HeaderText="Nome" />        
        <asp:BoundField DataField="Produtos.UnitPrice" HeaderText="Preço" DataFormatString="{0:c}"/>       
        <asp:TemplateField HeaderText="Remover Produto">            
                <ItemTemplate>
                    <asp:CheckBox id="Remove" runat="server"></asp:CheckBox>
                </ItemTemplate>        
        </asp:TemplateField>    
        </Columns>    
    </asp:GridView>
    <div>
        <p></p>
        <strong>
            <asp:Label ID="LabelTotalText" runat="server" Text="Total€: "></asp:Label>
            <asp:Label ID="lblTotal" runat="server" EnableViewState="false"></asp:Label>
        </strong> 
    </div>
    <br />
    <table> 
    <tr>
      <td>
          <br />
          <!--voltar para a pagina dos produtos -->
          <a href='javascript:history.go(-1)' class="btn btn-default">« Continuar a comprar</a>&nbsp;
      </td>
      <td>
          <br />
          <!--Atualizar quantidade de produtos ou remover -->
          <asp:Button  ID="UpdateBtn" Text='&nbsp;Atualizar Compras' runat="server" CssClass="btn btn-primary" OnClick="UpdateBtn_Click" />&nbsp;
      </td>
      <td>
          <br />
          <!--Seguir em frente, comprar -->
          <asp:Button ID="Btncontinuar" runat="server" Text="Finalizar compra »" CssClass="btn btn-success" OnClick="Btncontinuar_Click" />
      </td>
    </tr>
    </table>
    <br />
</asp:Content>

