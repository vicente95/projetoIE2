<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Pagina_inicial_pesquiza.aspx.cs" Inherits="WingtipToys.Pagina_inicial_pesquiza" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
      <h2>Destaques</h2>
    <br />
    <div class="col-md-14">

                <div class="row carousel-holder">

                    <div class="col-md-12">
                        <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                            <ol class="carousel-indicators">
                                <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                                <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                                <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                            </ol>
                            <div class="carousel-inner">
                                <div class="item active">
                                    <img class="slide-image"  src="Fotos/iphone4f2.PNG" alt="" style=" height:420px">
                                </div>
                                <div class="item">
                                    <img class="slide-image" src="Fotos/ratoApple2.PNG" alt="" style=" height:420px">
                                </div>
                                <div class="item">
                                    <img class="slide-image" src="Fotos/nokia1.PNG" alt="" style=" height:420px">
                                </div>
                            </div>
                            <a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
                                <span class="glyphicon glyphicon-chevron-left"></span>
                            </a>
                            <a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
                                <span class="glyphicon glyphicon-chevron-right"></span>
                            </a>
                        </div>
                    </div>

                </div>

            <asp:ListView ID="ListaProdutos" runat="server" 
                DataKeyNames="ProductID" GroupItemCount="4"
                ItemType="WingtipToys.Models.Produto" SelectMethod="GetProducts2">
                <EmptyDataTemplate>
                    <table >
                        <tr>
                            <br /><br />
                            <td>Ainda não existem produtos nesta categoria.<br /> <a class="btn btn-default" href="/Pagina_Inicial.aspx">« Voltar</a></td>
                        </tr>
                    </table>
                </EmptyDataTemplate>
                <EmptyItemTemplate>
                    <td/>
                </EmptyItemTemplate>
                <GroupTemplate>
                    <tr id="itemPlaceholderContainer" runat="server">
                        <td id="itemPlaceholder" runat="server"></td>
                    </tr>
                </GroupTemplate>
                <ItemTemplate>
                    <td runat="server">
                        <table class="col-sm-11 col-lg-11 col-md-11 thumbnail">
                            <tr>
                                <td>
                                    <a href="ProdutoDescricao.aspx?productID=<%#:Item.ProductID%>">
                                        <img src="Fotos/<%#:Item.ImagePath%>" width="100" height="75" /></a>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <a href="ProdutoDescricao.aspx?productID=<%#:Item.ProductID%>">
                                        <span class="ProductName">
                                            <%#:Item.ProductName%>
                                        </span>
                                    </a>
                                    <br />
                                    <span>
                                       <%#:Item.PeqDescricao%>
                                    </span>
                                    <br />
                                    <span>
                                        <b>Preço: </b><%#:String.Format("{0:c}", Item.UnitPrice)%>
                                    </span>
                                    <br />
                                    <a href="/AdicionaraoCarrinho.aspx?productID=<%#:Item.ProductID %>">               
                                        <span class="ProductListItem">
                                            <b>Adicionar ao carrinho<b>
                                        </span>           
                                    </a>
                                </td>
                            </tr>
                        </table>
                        </p>
                    </td>
                </ItemTemplate>
                <LayoutTemplate>
                    <table style="width:100%;">
                        <tbody>
                            <tr>
                                <td>
                                    <table id="groupPlaceholderContainer" runat="server" style="width:100%">
                                        <tr id="groupPlaceholder"></tr>
                                    </table>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </LayoutTemplate>
            </asp:ListView>
           
            <asp:Panel ID="Panel1" runat="server">
                    &nbsp;<asp:DataPager ID="lvDataPager1" runat="server" OnLoad="lvDataPager1_Load" PagedControlID="ListaProdutos" OnUnload="lvDataPager1_Load" >
                        <Fields>
                            <asp:NextPreviousPagerField RenderDisabledButtonsAsLabels="true" ButtonCssClass="btn-default" ButtonType="Link" PreviousPageText="&lt;&lt; Pág. anterior" ShowFirstPageButton="false" ShowNextPageButton="false" ShowPreviousPageButton="true" />
                            <asp:NumericPagerField ButtonType="Button" CurrentPageLabelCssClass="btn-default" />
                            <asp:NextPreviousPagerField RenderDisabledButtonsAsLabels="true" ButtonCssClass="btn-default" ButtonType="Link" NextPageText="Pág. seguinte &gt;&gt;" ShowLastPageButton="false" ShowNextPageButton="true" ShowPreviousPageButton="false" />
                        </Fields>
                    </asp:DataPager>
                    <span class="barra3"> Itens por pagina:
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True">
                <asp:ListItem>12</asp:ListItem>
                <asp:ListItem Selected="True">19</asp:ListItem>
                <asp:ListItem>24</asp:ListItem>
                <asp:ListItem>32</asp:ListItem>
                <asp:ListItem>40</asp:ListItem>
                </asp:DropDownList>
                        </span>
                </asp:Panel>
          </div>


    <br />

</asp:Content>

<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder1">
                        <div class=" list-group-item dropdown">
                              <button class="btn btn-default dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
                                <span class="glyphicon glyphicon-sort-by-attributes"></span>&nbsp;Ordenar os Produtos
                                <span class="caret"></span>
                              </button>
                              <ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
                                <li><asp:LinkButton ID="LinkButton1" runat="server" ><span class="glyphicon glyphicon-sort"></span>&nbsp;Aleatoriamente</asp:LinkButton></li>
                                <li><asp:LinkButton ID="LinkButton2" runat="server" ><span class="glyphicon glyphicon-sort-by-alphabet"></span>&nbsp;A...Z</asp:LinkButton></li>
                                <li><asp:LinkButton ID="LinkButton3" runat="server" ><span class="glyphicon glyphicon-sort-by-order"></span>&nbsp;Mais barato</asp:LinkButton></li>
                                <li><asp:LinkButton ID="LinkButton4" runat="server" ><span class="glyphicon glyphicon-sort-by-order-alt"></span>&nbsp;Mais caro</asp:LinkButton></li>
                              </ul>
                        </div>
</asp:Content>


