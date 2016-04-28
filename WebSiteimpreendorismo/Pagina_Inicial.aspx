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
                                    <img class="slide-image" src="Fotos/iphone4f3.PNG"" alt="">
                                </div>
                                <div class="item">
                                    <img class="slide-image" src="Fotos/iphone4f1.PNG"" alt="">
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
                                <p>Descrição<a target="_blank" href="http://www.bootsnipp.com"></a>.</p>
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
                                <p>Descrição</p>
                            </div>
                        </div>
                    </div>

                    <div class="col-sm-4 col-lg-4 col-md-4">
                        <div class="thumbnail">
                            <img src="http://placehold.it/320x150" alt="">
                            <div class="caption">
                                <h4 class="pull-right">74.99€</h4>
                                <h4><a href="#">Produto 3</a>
                                </h4>
                                <p>Descrição</p>
                            </div>
                        </div>
                    </div>

                    <div class="col-sm-4 col-lg-4 col-md-4">
                        <div class="thumbnail">
                            <img src="http://placehold.it/320x150" alt="">
                            <div class="caption">
                                <h4 class="pull-right">84.99€</h4>
                                <h4><a href="#">Produto 4</a>
                                </h4>
                                <p>Descrição</p>
                            </div>
                        </div>
                    </div>

                    <div class="col-sm-4 col-lg-4 col-md-4">
                        <div class="thumbnail">
                            <img src="http://placehold.it/320x150" alt="">
                            <div class="caption">
                                <h4 class="pull-right">94.99€</h4>
                                <h4><a href="#">Produto 5</a>
                                </h4>
                                <p>Descrição</p>
                            </div>
                        </div>
                    </div>


                </div>
        </div>


    <br />
   

    <div class="row">
        <div class="col-md-6">
            <h2>Getting started</h2>
            <p>
                ASP.NET Web Forms lets you build dynamic websites using a familiar drag-and-drop, event-driven model.
            A design surface and hundreds of controls and components let you rapidly build sophisticated, powerful UI-driven sites with data access.
            </p>
            <p>
                <a class="btn btn-default" href="http://go.microsoft.com/fwlink/?LinkId=301948">Ver isto</a>
            </p>
        </div>
        <div class="col-md-6">
            <h2>Get more libraries</h2>
            <p>
                NuGet is a free Visual Studio extension that makes it easy to add, remove, and update libraries and tools in Visual Studio projects.
            </p>
            <p>
                <a class="btn btn-default" href="http://go.microsoft.com/fwlink/?LinkId=301949">Learn more &raquo;</a>
            </p>
        </div>
        <div class="col-md-6">
            <h2>Web Hosting</h2>
            <p>
                You can easily find a web hosting company that offers the right mix of features and price for your applications.
            </p>
            <p>
                <a class="btn btn-default" href="http://go.microsoft.com/fwlink/?LinkId=301950">Learn more &raquo;</a>
            </p>
        </div>
    </div>
</asp:Content>
