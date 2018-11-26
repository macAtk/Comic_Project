<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
    <meta name="description" content=""/>
    <meta name="author" content=""/>

    <title>Login</title>

    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet"/>

    <!-- Custom styles for this template -->
    <link href="css/shop-homepage.css" rel="stylesheet"/>

 
</head>
<body>
    <form id="form1" runat="server">
        <div>

             <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
      <div class="container">
        <a class="navbar-brand" href="#">User Login</a>
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

                <li class="nav-item">
                    <a class="nav-link" href="Login.aspx">Login</a>
                </li>

                <li class="nav-item">
                    <a class="nav-link" href="Register.aspx">Register</a>
                </li>

            </ul>
        </div>
      </div>
    </nav>

            <!--sign in start -->
     <!--   Username -->
    <div class="container">
        <div class="form-horizontal" >
            <br />
            <div class="form-group" >

                <asp:Label ID="Label1" runat="server" CssClass="col-md-2 control-label" Text="Username"></asp:Label>

                <div class="col-md-3">
                    <asp:TextBox ID="Username" CssClass="form-control" runat="server"></asp:TextBox>

                </div>
            </div>

 <!-- Password field -->
            
            <div class="form-group" >

                <asp:Label ID="Label2" runat="server" CssClass="col-md-2 control-label" Text="Password"></asp:Label>

                <div class="col-md-3">
                    <asp:TextBox ID="Password" CssClass="form-control" runat="server" TextMode="Password"></asp:TextBox>

                </div>
            </div>
        </div>

<!-- Remember Password -->
        <div class="form-group" >
            <div class="col-md-2"> </div>
            <div class="col-md-6">

                <asp:CheckBox ID="CheckBox1" runat="server" />
                <asp:Label ID="Label3" runat="server" CssClass="control-label" Text="Remeber me?"></asp:Label>

              </div>
             </div>
            

<!-- Submit Button -->
            <div class="form-group" >
            <div class="col-md-2"> </div>
            <div class="col-md-6">
                <asp:Button ID="Button1" runat="server" Text="Login" CssClass="btn btn-default" OnClick="Button1_Click" />
                <asp:LinkButton ID="LinkButton1" runat="server"  OnClick="LinkButton1_Click" OnClientClick="Register.aspx">Sign up here</asp:LinkButton>
                <asp:LinkButton ID="LinkButton2" runat="server" CssClass="btn btn-blue" OnClick="LinkButton2_Click" OnClientClick="AdminLogin.aspx">Admin Login</asp:LinkButton>
                <br />
                <asp:Label ID="Label4" runat="server"></asp:Label>
              </div>
             </div>
            </div>
        </div>
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
