<%@ Page Language="C#" AutoEventWireup="true" CodeFile="naofaznada.aspx.cs" Inherits="naofaznada" %>

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
    </form>
</body>
</html>
