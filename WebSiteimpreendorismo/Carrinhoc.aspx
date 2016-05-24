<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Carrinhoc.aspx.cs" Inherits="WingtipToys.Carrinhoc" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <h2>Carrinho</h2>
    <br />
    <div id="ShoppingCartTitle" runat="server" class="ContentHead"><h4>Produtos:</h4></div>
    <asp:GridView ID="CartList" runat="server" AutoGenerateColumns="False" ShowFooter="True" GridLines="Vertical" CellPadding="4"
        ItemType="WingtipToys.Models.Carrinho" SelectMethod="GetShoppingCartItems" 
        CssClass="table table-striped table-bordered">   
        <Columns>
        <asp:BoundField DataField="ProductID" HeaderText="ID" SortExpression="ProductID"><HeaderStyle CssClass="hidden"/><ItemStyle CssClass="hidden"/></asp:BoundField>
        <asp:BoundField DataField="Produtos.ProductName" HeaderText="Nome" />        
        <asp:BoundField DataField="Produtos.UnitPrice" HeaderText="Preço" DataFormatString="{0:c}"/>     
        <asp:TemplateField   HeaderText="Quantidade">            
                <ItemTemplate>
                    <asp:TextBox ID="PurchaseQuantity" Width="40" runat="server" Text="<%#: Item.Quantity %>"></asp:TextBox> 
                </ItemTemplate>        
        </asp:TemplateField>    
        <asp:TemplateField HeaderText="Item Total">            
                <ItemTemplate>
                    <%#: String.Format("{0:c}", ((Convert.ToDouble(Item.Quantity)) *  Convert.ToDouble(Item.Produtos.UnitPrice)))%>
                </ItemTemplate>        
        </asp:TemplateField> 
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
          <!--voltar para a pagina dos produtos -->
          <asp:Button ID="Btnvoltar" runat="server" Text="Continuar a comprar «" CssClass="btn btn-default" />
      </td>
      <td>
          <!--Atualizar quantidade de produtos ou remover -->
          <asp:Button ID="UpdateBtn" runat="server" Text="Atualizar Compras" CssClass="btn btn-default" OnClick="UpdateBtn_Click" />
      </td>
      <td>
          <!--Seguir em frente, comprar -->
          <asp:Button ID="Btncontinuar" runat="server" Text="Finalizar compra »" CssClass="btn btn-default" />
      </td>
    </tr>
    </table>
    <br />
</asp:Content>

