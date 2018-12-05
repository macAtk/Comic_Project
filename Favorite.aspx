<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Favorite.aspx.cs" Inherits="cart.Favorite" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Favorites List</title>
    <link href="Styles/StyleSheet.css" rel="stylesheet" type="text/css" />
</head>
<body>
 
    <form id="form1" runat="server">
        <div class="container">
            <h1>Favorites List</h1>
            <a href="UserHomePage.aspx">< Back to Home Page</a>
 
            <br /><br />
            <asp:GridView runat="server" ID="gvFavorite" AutoGenerateColumns="false" EmptyDataText="There is nothing in your Favorites List." GridLines="None" Width="100%" CellPadding="5" ShowFooter="true" DataKeyNames="ProductId" OnRowDataBound="gvShoppingCart_RowDataBound" OnRowCommand="gvShoppingCart_RowCommand">
                <HeaderStyle HorizontalAlign="Left" BackColor="#3D7169" ForeColor="#FFFFFF" />
                <FooterStyle HorizontalAlign="Right" BackColor="#6C6B66" ForeColor="#FFFFFF" />
                <AlternatingRowStyle BackColor="#F8F8F8" />
                <Columns>
 
                    <asp:BoundField DataField="Description" HeaderText="Description" />
                    <asp:TemplateField HeaderText="Un-Favorite">
                        <ItemTemplate>                            
                            <asp:LinkButton runat="server" ID="btnRemove" Text="Remove" CommandName="Remove" CommandArgument='<%# Eval("ProductId") %>' style="font-size:12px;"></asp:LinkButton> 
                        </ItemTemplate>
                    </asp:TemplateField>                    
                </Columns>
            </asp:GridView>
 
            <br />
            <asp:Button runat="server" ID="btnUpdateCart" Text="Update Cart" OnClick="btnUpdateCart_Click" />
        </div>
    </form>
</body>
</html>
