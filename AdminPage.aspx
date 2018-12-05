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
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="User_ID" DataSourceID="SqlDataSource1" GridLines="Vertical" ShowFooter="True" Width="105px">
                <AlternatingRowStyle BackColor="#DCDCDC" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:TemplateField HeaderText="User_ID" InsertVisible="False" SortExpression="User_ID">
                        <EditItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("User_ID") %>'></asp:Label>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("User_ID") %>'></asp:Label>
                        </ItemTemplate>
                        <FooterTemplate>
                            <asp:LinkButton ID="lbInsert" ValidationGroup="INSERT" OnClick="lbInsert_Click" runat="server">Insert</asp:LinkButton>
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="User_Username" SortExpression="User_Username">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("User_Username") %>'></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvEditUsername" runat="server" 
                                    ErrorMessage="Userame field required" 
                                    ControlToValidate="TextBox1" Text="*" ForeColor="Red">
                                </asp:RequiredFieldValidator>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("User_Username") %>'></asp:Label>
                        </ItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvUsername" runat="server" ValidationGroup="INSERT" 
                                    ErrorMessage="Insert userame field required" 
                                    ControlToValidate="txtUsername" Text="*" ForeColor="Red">
                                </asp:RequiredFieldValidator>
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="User_Password" SortExpression="User_Password">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("User_Password") %>'></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvEditPassword" runat="server" 
                                    ErrorMessage="Password field required" 
                                    ControlToValidate="TextBox2" Text="*" ForeColor="Red">
                                </asp:RequiredFieldValidator>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label3" runat="server" Text='<%# Bind("User_Password") %>'></asp:Label>
                        </ItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ValidationGroup="INSERT" 
                                    ErrorMessage="Insert password field required" 
                                    ControlToValidate="txtPassword" Text="*" ForeColor="Red">
                                </asp:RequiredFieldValidator>
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="User_Email" SortExpression="User_Email">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("User_Email") %>'></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvEditEmail" runat="server" 
                                    ErrorMessage="Email field required" 
                                    ControlToValidate="TextBox3" Text="*" ForeColor="Red">
                                </asp:RequiredFieldValidator>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label4" runat="server" Text='<%# Bind("User_Email") %>'></asp:Label>
                        </ItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ValidationGroup="INSERT"
                                    ErrorMessage="Insert E-mail field required" 
                                    ControlToValidate="txtEmail" Text="*" ForeColor="Red">
                                </asp:RequiredFieldValidator>
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="User_Fname" SortExpression="User_Fname">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("User_Fname") %>'></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvEditFname" runat="server" 
                                    ErrorMessage="First name field required" 
                                    ControlToValidate="TextBox4" Text="*" ForeColor="Red">
                                </asp:RequiredFieldValidator>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label5" runat="server" Text='<%# Bind("User_Fname") %>'></asp:Label>
                        </ItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="txtFname" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvFname" runat="server" ValidationGroup="INSERT"
                                    ErrorMessage="Insert First field required" 
                                    ControlToValidate="txtFname" Text="*" ForeColor="Red">
                                </asp:RequiredFieldValidator>
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="User_LName" SortExpression="User_LName">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("User_LName") %>'></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvEditLname" runat="server" 
                                    ErrorMessage="Last name field required" 
                                    ControlToValidate="TextBox5" Text="*" ForeColor="Red">
                                </asp:RequiredFieldValidator>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label6" runat="server" Text='<%# Bind("User_LName") %>'></asp:Label>
                        </ItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="txtLname" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvLname" runat="server" ValidationGroup="INSERT"
                                    ErrorMessage="Insert last name field required" 
                                    ControlToValidate="txtLname" Text="*" ForeColor="Red">
                                </asp:RequiredFieldValidator>
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="User_Country" SortExpression="User_Country">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("User_Country") %>'></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvEditCountry" runat="server" 
                                    ErrorMessage="Country field required" 
                                    ControlToValidate="TextBox6" Text="*" ForeColor="Red">
                                </asp:RequiredFieldValidator>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label7" runat="server" Text='<%# Bind("User_Country") %>'></asp:Label>
                        </ItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="txtCountry" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvCountry" runat="server" ValidationGroup="INSERT"
                                    ErrorMessage="Insert country field required" 
                                    ControlToValidate="txtCountry" Text="*" ForeColor="Red">
                                </asp:RequiredFieldValidator>
                        </FooterTemplate>
                    </asp:TemplateField>
                </Columns>
                <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#0000A9" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#000065" />
            </asp:GridView>
            <asp:ValidationSummary ID="ValidationSummary1" ValidationGroup="INSERT" runat="server" ForeColor="Red" />
            <asp:ValidationSummary ID="ValidationSummary2" runat="server" Forecolor="Red" />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:InternetProgrammingTestConnectionString2 %>" DeleteCommand="DELETE FROM [Users] WHERE [User_ID] = @User_ID" InsertCommand="INSERT INTO [Users] ([User_Username], [User_Password], [User_Email], [User_Fname], [User_LName], [User_Country]) VALUES (@User_Username, @User_Password, @User_Email, @User_Fname, @User_LName, @User_Country)" SelectCommand="SELECT * FROM [Users]" UpdateCommand="UPDATE [Users] SET [User_Username] = @User_Username, [User_Password] = @User_Password, [User_Email] = @User_Email, [User_Fname] = @User_Fname, [User_LName] = @User_LName, [User_Country] = @User_Country WHERE [User_ID] = @User_ID">
                <DeleteParameters>
                    <asp:Parameter Name="User_ID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="User_Username" Type="String" />
                    <asp:Parameter Name="User_Password" Type="String" />
                    <asp:Parameter Name="User_Email" Type="String" />
                    <asp:Parameter Name="User_Fname" Type="String" />
                    <asp:Parameter Name="User_LName" Type="String" />
                    <asp:Parameter Name="User_Country" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="User_Username" Type="String" />
                    <asp:Parameter Name="User_Password" Type="String" />
                    <asp:Parameter Name="User_Email" Type="String" />
                    <asp:Parameter Name="User_Fname" Type="String" />
                    <asp:Parameter Name="User_LName" Type="String" />
                    <asp:Parameter Name="User_Country" Type="String" />
                    <asp:Parameter Name="User_ID" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />

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
 
