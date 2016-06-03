<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="ProdutoDescricao.aspx.cs" Inherits="WingtipToys.ProdutoDescricao" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
     <asp:FormView ID="productDetail" runat="server" ItemType="WingtipToys.Models.Produto" SelectMethod ="GetProduct" RenderOuterTable="false">
        <ItemTemplate>
            <div>
                <h3><%#:Item.ProductName %></h3>
            </div>
            <table>
                <tr>
                    <td>&nbsp;
                       <div class="row carousel-holder">
                        <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                            <ol class="carousel-indicators">
                                <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                                <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                                <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                            </ol>
                            <div class="carousel-inner">
                                <div class="item active">
                                    <img class="slide-image"  src="Fotos/<%#:Item.ImagePath %>"  alt="" style="border:solid; border-color:gray; height:400px; width:650px">
                                </div>
                                <div class="item">
                                    <img class="slide-image" src="Fotos/<%#:Item.ImagePath2 %>"  alt="" style="border:solid; border-color:gray; height:400px; width:650px">
                                </div>
                                <div class="item">
                                    <img class="slide-image" src="Fotos/<%#:Item.ImagePath3 %>"  alt="" style="border:solid; border-color:gray; height:400px; width:650px">
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
                      <br />
                        <b>Descrição:</b><br /><%#:Item.Description %><br /><br /><br /><span><b>Preço:</b>&nbsp;<%#: String.Format("{0:c}", Item.UnitPrice) %></span><br /><br /><br />
                        <a href='javascript:history.go(-1)' class="btn btn-default"><span class="glyphicon glyphicon-circle-arrow-left"></span>&nbsp;Voltar</a></td>
                    <td style=" text-align:left">
                        
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:FormView>
</asp:Content>

