<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminPage.aspx.cs" Inherits="AdminPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
    <meta name="description" content=""/>
    <meta name="author" content=""/>

    <title>Shop Homepage - Start Bootstrap Template</title>

    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet"/>

    <!-- Custom styles for this template -->
    <link href="css/shop-homepage.css" rel="stylesheet"/>
   
</head>
<body>
   
        <form id="form2" runat="server">
       <div>

             <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
      <div class="container">
        <a class="navbar-brand" href="#">Administrator Page</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
            <ul class="navbar-nav ml-auto">
                
                <li class="nav-item">
                    <a class="nav-link" href="#">About</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Services</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Contact</a>
                </li>

                <li>
                    <asp:Button ID="btnSignOut" runat="server" Class="btn btn-default navbar-btn" Text="Sign Out" OnClick="BtnSignOut_Click" />
                </li>

            </ul>
        </div>
      </div>
                 </nav>
    </div>
            <asp:Label ID="lblSuccess" runat="server" CssClass="text-success" ></asp:Label>

            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyNames="StoreUser_Id" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical" ShowFooter="True">
                <AlternatingRowStyle BackColor="#CCCCCC" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:TemplateField HeaderText="StoreUser_Id" InsertVisible="False" SortExpression="StoreUser_Id">
                        <EditItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("StoreUser_Id") %>'></asp:Label>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("StoreUser_Id") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="StoreUser_Username" SortExpression="StoreUser_Username">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("StoreUser_Username") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("StoreUser_Username") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="StoreUser_Password" SortExpression="StoreUser_Password">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("StoreUser_Password") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label3" runat="server" Text='<%# Bind("StoreUser_Password") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="StoreUser_Email" SortExpression="StoreUser_Email">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("StoreUser_Email") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label4" runat="server" Text='<%# Bind("StoreUser_Email") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="StoreUser_FName" SortExpression="StoreUser_FName">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("StoreUser_FName") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label5" runat="server" Text='<%# Bind("StoreUser_FName") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="StoreUser_LName" SortExpression="StoreUser_LName">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("StoreUser_LName") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label6" runat="server" Text='<%# Bind("StoreUser_LName") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="StoreUser_Type" SortExpression="StoreUser_Type">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("StoreUser_Type") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label7" runat="server" Text='<%# Bind("StoreUser_Type") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <FooterStyle BackColor="#CCCCCC" />
                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="Gray" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#383838" />
            </asp:GridView>
            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Users] WHERE [StoreUser_Id] = @StoreUser_Id" InsertCommand="INSERT INTO [Users] ([StoreUser_Username], [StoreUser_Password], [StoreUser_Email], [StoreUser_FName], [StoreUser_LName], [StoreUser_Type]) VALUES (@StoreUser_Username, @StoreUser_Password, @StoreUser_Email, @StoreUser_FName, @StoreUser_LName, @StoreUser_Type)" SelectCommand="SELECT * FROM [Users]" UpdateCommand="UPDATE [Users] SET [StoreUser_Username] = @StoreUser_Username, [StoreUser_Password] = @StoreUser_Password, [StoreUser_Email] = @StoreUser_Email, [StoreUser_FName] = @StoreUser_FName, [StoreUser_LName] = @StoreUser_LName, [StoreUser_Type] = @StoreUser_Type WHERE [StoreUser_Id] = @StoreUser_Id">
                <DeleteParameters>
                    <asp:Parameter Name="StoreUser_Id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="StoreUser_Username" Type="String" />
                    <asp:Parameter Name="StoreUser_Password" Type="String" />
                    <asp:Parameter Name="StoreUser_Email" Type="String" />
                    <asp:Parameter Name="StoreUser_FName" Type="String" />
                    <asp:Parameter Name="StoreUser_LName" Type="String" />
                    <asp:Parameter Name="StoreUser_Type" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="StoreUser_Username" Type="String" />
                    <asp:Parameter Name="StoreUser_Password" Type="String" />
                    <asp:Parameter Name="StoreUser_Email" Type="String" />
                    <asp:Parameter Name="StoreUser_FName" Type="String" />
                    <asp:Parameter Name="StoreUser_LName" Type="String" />
                    <asp:Parameter Name="StoreUser_Type" Type="String" />
                    <asp:Parameter Name="StoreUser_Id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>

    </form>
 <!-- Footer -->
    <footer class="py-5 bg-dark">
      <div class="container">
        <p class="m-0 text-center text-white">Copyright &copy; Your Website 2017</p>
      </div>
      <!-- /.container -->
    </footer>

    <!-- Bootstrap core JavaScript -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
</body>
</html>
 
