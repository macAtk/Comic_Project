<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UserHomePage.aspx.cs" Inherits="UserHomePage" %>

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
        <a class="navbar-brand" href="#">User Home Page</a>
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
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Comics_ID" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:CommandField ShowEditButton="True" />
                    <asp:BoundField DataField="Comics_ID" HeaderText="Comics_ID" InsertVisible="False" ReadOnly="True" SortExpression="Comics_ID" />
                    <asp:TemplateField HeaderText="Comics_Series" SortExpression="Comics_Series">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Comics_Series") %>'></asp:TextBox>
                            <asp:Button ID="Button1" runat="server" Text="Button" />
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("Comics_Series") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Comics_Volume" SortExpression="Comics_Volume">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Comics_Volume") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("Comics_Volume") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Comics_Protagonist" SortExpression="Comics_Protagonist">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Comics_Protagonist") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label3" runat="server" Text='<%# Bind("Comics_Protagonist") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Comics_Antagonist" SortExpression="Comics_Antagonist">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("Comics_Antagonist") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label4" runat="server" Text='<%# Bind("Comics_Antagonist") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Comics_PublishDate" SortExpression="Comics_PublishDate">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("Comics_PublishDate") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label5" runat="server" Text='<%# Bind("Comics_PublishDate") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Comics_Author" SortExpression="Comics_Author">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("Comics_Author") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label6" runat="server" Text='<%# Bind("Comics_Author") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
            <br />
            <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" OnClientClick="AddComic.aspx">Add a Comic!</asp:LinkButton>
            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:InternetProgrammingTestConnectionString3 %>" DeleteCommand="DELETE FROM [Comics] WHERE [Comics_ID] = @Comics_ID" InsertCommand="INSERT INTO [Comics] ([Comics_Series], [Comics_Volume], [Comics_Protagonist], [Comics_Antagonist], [Comics_PublishDate], [Comics_Author]) VALUES (@Comics_Series, @Comics_Volume, @Comics_Protagonist, @Comics_Antagonist, @Comics_PublishDate, @Comics_Author)" SelectCommand="SELECT * FROM [Comics]" UpdateCommand="UPDATE [Comics] SET [Comics_Series] = @Comics_Series, [Comics_Volume] = @Comics_Volume, [Comics_Protagonist] = @Comics_Protagonist, [Comics_Antagonist] = @Comics_Antagonist, [Comics_PublishDate] = @Comics_PublishDate, [Comics_Author] = @Comics_Author WHERE [Comics_ID] = @Comics_ID">
                <DeleteParameters>
                    <asp:Parameter Name="Comics_ID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Comics_Series" Type="String" />
                    <asp:Parameter Name="Comics_Volume" Type="Int32" />
                    <asp:Parameter Name="Comics_Protagonist" Type="String" />
                    <asp:Parameter Name="Comics_Antagonist" Type="String" />
                    <asp:Parameter DbType="Date" Name="Comics_PublishDate" />
                    <asp:Parameter Name="Comics_Author" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Comics_Series" Type="String" />
                    <asp:Parameter Name="Comics_Volume" Type="Int32" />
                    <asp:Parameter Name="Comics_Protagonist" Type="String" />
                    <asp:Parameter Name="Comics_Antagonist" Type="String" />
                    <asp:Parameter DbType="Date" Name="Comics_PublishDate" />
                    <asp:Parameter Name="Comics_Author" Type="String" />
                    <asp:Parameter Name="Comics_ID" Type="Int32" />
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
