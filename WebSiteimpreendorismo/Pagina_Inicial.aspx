<%@ Page Title="Pagina inicial" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Pagina_Inicial.aspx.cs" Inherits="_Default" %>

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
                                    <img class="slide-image"  src="Fotos/iphone4f2.PNG" alt="">
                                </div>
                                <div class="item">
                                    <img class="slide-image" src="Fotos/ratoApple2.PNG" alt="">
                                </div>
                                <div class="item">
                                    <img class="slide-image" src="Fotos/nokia1.PNG" alt="">
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

                <div class="row">

                    <div class="col-sm-4 col-lg-4 col-md-4">
                        <div class="thumbnail">
                            <img src="Fotos/iphone4f2.PNG" alt="">
                            <div class="caption">
                                <h4 class="pull-right">120€</h4>
                                <h4><a href="#">Iphone 4S</a>
                                </h4>
                                <p>Iphone 4s com bom estado e pouco uso. Capacidade de 16GB.<a target="_blank" href="http://www.bootsnipp.com"></a>.</p>
                            </div>
                        </div>
                    </div>

                    <div class="col-sm-4 col-lg-4 col-md-4">
                        <div class="thumbnail">
                            <img src="Fotos/ratoApple2.PNG" alt="">
                            <div class="caption">
                                <h4 class="pull-right">40€</h4>
                                <h4><a href="#">Magic Mouse Apple</a>
                                </h4>
                                <p>Rato Apple com pouco uso e em bom estado.</p>
                            </div>
                        </div>
                    </div>

                    <div class="col-sm-4 col-lg-4 col-md-4">
                        <div class="thumbnail">
                            <img src="Fotos/disco1.PNG" alt="">
                            <div class="caption">
                                <h4 class="pull-right">40€</h4>
                                <h4><a href="#">Disco Rígido WD 3.5</a>
                                </h4>
                                <p>Disco para PC fixo (3.5) com capacidade de 1TB</p>
                            </div>
                        </div>
                    </div>

                    <div class="col-sm-4 col-lg-4 col-md-4">
                        <div class="thumbnail">
                            <img src="Fotos/nokia1.PNG" alt="">
                            <div class="caption">
                                <h4 class="pull-right">40€</h4>
                                <h4><a href="#">Nokia Lumia 520</a>
                                </h4>
                                <p>Nokia Lumia 520 em bom estado e com pouco uso. Cor preta.</p>
                            </div>
                        </div>
                    </div>

                    <div class="col-sm-4 col-lg-4 col-md-4">
                        <div class="thumbnail">
                            <img src="Fotos/impressora1.PNG" alt="">
                            <div class="caption">
                                <h4 class="pull-right">25€</h4>
                                <h4><a href="#">Impressora HP</a>
                                </h4>
                                <p>Impressora/Scanner e Fax HP em bom estado, funcional e com algum uso</p>
                            </div>
                        </div>
                    </div>

                     <div class="col-sm-4 col-lg-4 col-md-4">
                        <div class="thumbnail">
                            <img src="Fotos/teclado1.PNG" alt="">
                            <div class="caption">
                                <h4 class="pull-right">30€</h4>
                                <h4><a href="#">Teclado PT Apple</a>
                                </h4>
                                <p>Teclado Apple em Português em bom estado.<a target="_blank" href="http://www.bootsnipp.com"></a>.</p>
                            </div>
                        </div>
                    </div>


                </div>
        </div>


    <br />
   
</asp:Content>
