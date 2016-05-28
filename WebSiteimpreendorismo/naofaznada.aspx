<%@ Page Language="C#" AutoEventWireup="true" CodeFile="naofaznada.aspx.cs" Inherits="WingtipToys.naofaznada" MasterPageFile="~/Site.master" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
 
        <section>
        <div>
            <hgroup>
                <h2>Produtos</h2>
            </hgroup>

            <asp:ListView ID="ListaProdutos" runat="server" 
                DataKeyNames="ProductID" GroupItemCount="4"
                ItemType="WingtipToys.Models.Produto" SelectMethod="GetProducts">
                <EmptyDataTemplate>
                    <table >
                        <tr>
                            <td>No data was returned.</td>
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
                        <table>
                            <tr>
                                <td>
                                    <a href="ProductDetails.aspx?productID=<%#:Item.ProductID%>">
                                        <img src="Fotos/<%#:Item.ImagePath%>"
                                            width="100" height="75" style="border: solid" /></a>
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
                                        <b>Preço: </b><%#:String.Format("{0:c}", Item.UnitPrice)%>
                                    </span>
                                    <br />
                                </td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
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
    </section>


<ul class="nav navbar-nav">
    <li class="active"> <a href="#">one</a></li>
    <li class="dropdown"> 
        <a href="#" class="dropdown-toggle" role="button" aria-expanded="false" data-toggle="dropdown">one<span class="caret"></span></a>
        <ul class="dropdown-menu" role="menu">
            <li> <a href="#">one,,,</a></li>
            <li> <a href="#">one,,,,</a></li>
        </ul>
    </li>
    <li> <a href="#">one</a></li>
</ul>

    <br /><br /><br /><br />
    <label class="alert alert-success"><strong>Sucesso!</strong> Vamos embora </label>

    <div class="">
    <p>1-<span class="glyphicons glyphicons-tick"></span></p>

    <p>2-<span class="glyphicons glyphicons-volume-up"></span></p>
    </div>

        <button type="button" class="btn btn-default btn-lg">
  <span class="glyphicons glyphicons-tick">></span> Star 
</button>
    <span class="glyphicons glyphicons-volume-up"></span>
    <span class="glyphicon glyphicon-user"></span>
    <span class="glyphicon glyphicon-home"></span>
    <span class="glyphicon glyphicon-print"></span>
    <span class="glyphicon glyphicon-shopping-cart"></span>
        <button type="button" class="btn btn-default btn-lg">
  <span class="glyphicon glyphicon-star"></span> Star 
</button>
    <ul class="nav nav-pills">
  <li>
  
  </li>
  <li>
    <a href="index.html">
      <span class="glyphicon glyphicon-home"></span> Home
    </a>
  </li>
  <li>
    <a href="shop.html">
      <span class="glyphicon glyphicon-shopping-cart"></span> Shop
    </a>
  </li>
  <li>
    <a href="about.html">
      <span class="glyphicon glyphicon-info-sign"></span> About
    </a>
  </li>
</ul>

<div class="input-group input-group-lg">
  <span class="input-group-addon">
    <span class="glyphicon glyphicon-envelope"></span>
  </span>
  <input class="form-control" type="text" placeholder="Email address">
</div>


<div class="col-lg-4 ">
<div class="input-group list-group-item">
  <span class="input-group-addon list-group-item">
    <span class="glyphicon glyphicon-search"></span>
  </span>
  <input class=" form-control-static" type="text" placeholder="Pesquisa">
    <span class="input-group-btn">
    <button ID="Buttonapagar" class="btn btn-secondary" type="button">⌫Voltar </button>
    <button ID="Buttonir" class="btn btn-secondary" type="button">⌕Pesquisar</button>
    </span>
</div>
</div>

    <br /><br />
<div class="input-group input-group-lg">
  <span class="input-group-addon">
    <span class="glyphicon glyphicon-lock"></span>
  </span>
  <input class="form-control" type="password" placeholder="Password">
</div> 

       <nav>
<ul id="navmenu">
	<li><asp:LinkButton ID="LinkButton3" runat="server" Text="Fazer Login"> </asp:LinkButton> </li>
	<li><a>Recuperar palavra-passe</a><span class="darrow">&#9660;</span>
		<ul class="sub1">
			<li><asp:LinkButton ID="LinkButton1" runat="server" Text="Questão de segurança"></asp:LinkButton> </li>
			<li><asp:LinkButton ID="LinkButton2" runat="server" Text="Para o email" > </asp:LinkButton></li>
		</ul>
	</li>
	<li><asp:LinkButton ID="LinkButton4" runat="server" Text="Registo" > </asp:LinkButton>
	</li>
</ul>
</nav>
 <br /> <br />
<div class="dropdown">
  <button class="btn btn-default dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
    <span class="glyphicon glyphicon-sort-by-attributes"></span>&nbsp;Ordenar
    <span class="caret"></span>
  </button>
  <ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
    <li><a href="#"><span class="glyphicon glyphicon-sort"></span>&nbsp;Aleatoriamente</a></li>
    <li><a href="#"><span class="glyphicon glyphicon-sort-by-alphabet"></span>&nbsp;A...Z</a></li>
    <li><a href="#"><span class="glyphicon glyphicon-sort-by-order"></span>&nbsp;Mais barato</a></li>
    <li><a href="#"><span class="glyphicon glyphicon-sort-by-order-alt"></span>&nbsp;Mais caro</a></li>
  </ul>
</div>

          <a class="list-group-item" ><span class="auto-style2">Pesquisa:</span><br />

                        <asp:TextBox ID="TextBoxpesquiza" runat="server" TextMode="SingleLine" Width="160px" Height="30px" ></asp:TextBox>
                        <asp:Button ID="Button1" runat="server" text="⌫" ForeColor="#999999" BackColor="Black" Font-Bold="true" Height="30px" Width="30px" />
                        <asp:Button ID="Button2" runat="server" text="⌕" ForeColor="#999999" Font-Bold="true" BackColor="Black" Width="30px" Height="30px" />
                      </a>


    <a class="list-group-item" ><span class="auto-style2">Ordenar:</span>
                          <asp:DropDownList ID="DropDownList1" runat="server" Height="24px" Width="180px" AutoPostBack="True">
                              <asp:ListItem Value="1" Text=' Aleatoriamente '></asp:ListItem>
                              <asp:ListItem Value="2">A...Z</asp:ListItem>
                              <asp:ListItem Value="3">Mais barato</asp:ListItem>
                              <asp:ListItem Value="4">Mais caro</asp:ListItem>
                        </asp:DropDownList>
                        </a>
    <br /><br />
    <button id="buttonaleatoriamente" runat="server" onServerClick="btn1_Click"><span class="glyphicon glyphicon-sort"></span>&nbsp;Aleatoriamente</button>
    <asp:LinkButton ID="link1" CssClass="btn btn-default" runat="server" OnClick="btn1_Click" ><span class="glyphicon glyphicon-sort"></span>&nbsp;Aleatoriamente</asp:LinkButton>

    <asp:Label ID="Label2" runat="server" Text="" Visible="false"></asp:Label>
    <asp:Label ID="Label1" runat="server" Text="L"></asp:Label>
    <asp:DropDownList ID="DropDownList2" runat="server" Height="24px" Width="180px" AutoPostBack="True">
                              <asp:ListItem Value="1" Text=' Aleatoriamente '></asp:ListItem>
                              <asp:ListItem Value="2">A...Z</asp:ListItem>
                              <asp:ListItem Value="3">Mais barato</asp:ListItem>
                              <asp:ListItem Value="4">Mais caro</asp:ListItem>
                        </asp:DropDownList>

</asp:Content>
