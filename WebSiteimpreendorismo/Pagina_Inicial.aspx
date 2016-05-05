<%@ Page Title="Pagina inicial" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Pagina_Inicial.aspx.cs" Inherits="WingtipToys.Pagina_Inicial" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
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
                ItemType="WingtipToys.Models.Produto" SelectMethod="GetProducts">
                <EmptyDataTemplate>
                    <table >
                        <tr>
                            <td>Ainda não existem produtos nesta categoria. <a class="btn btn-default" href="/Pagina_Inicial.aspx">« Voltar</a></td>
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

                </div>


    <br />
   
</asp:Content>
