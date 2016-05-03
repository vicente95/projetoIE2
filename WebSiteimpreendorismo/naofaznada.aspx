<%@ Page Language="C#" AutoEventWireup="true" CodeFile="naofaznada.aspx.cs" Inherits="WingtipToys.naofaznada"  %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="basededados" DataTextField="Nome" DataValueField="Nome">
        </asp:DropDownList>
        <asp:SqlDataSource ID="basededados" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringBasededados %>" SelectCommand="SELECT * FROM [Utilizadores]"></asp:SqlDataSource>
        <asp:Login ID="Login1" runat="server">
        </asp:Login>
        <br />
        <br />
        <br />
        <section>
        <div>
            <hgroup>
                <h2>Titulo
                </h2>
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
                                    <a href="ProductDetails.aspx?productID=<%#:Item.ProductID%>">
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
    </form>
</body>
</html>
