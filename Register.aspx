<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

 <head runat="server">

    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
    <meta name="description" content=""/>
    <meta name="author" content=""/>

    <title>Register</title>

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
        <a class="navbar-brand" href="#">Register Page</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
            <ul class="navbar-nav ml-auto">
                
                <li class="nav-item">
                    <a class="nav-link" href="index.html">About</a>
                </li>
                 
                <li class="nav-item">
                    <a class="nav-link" href="index.html">Services</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="index.html">Contact</a>
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
        </div>
<!--sign in start -->
     <!--   First Name Field -->
    <div class="container">
        <div class="form-horizontal" >
              <div class="form-group" >
                  <br />
                <asp:Label ID="Label3" runat="server" CssClass="col-md-1 control-label" Text="Username"></asp:Label>

                <div class="col-md-3">
                    <asp:TextBox ID="userName" CssClass="form-control" runat="server" ></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" CssClass="text-danger" runat="server" ErrorMessage="Username Field is Required" ControlToValidate="userName"></asp:RequiredFieldValidator>

                </div>
            </div>
        </div>
       
 <!-- Last Name field -->
        
            <div class="form-group" >

                <asp:Label ID="Label4" runat="server" CssClass="col-md-2 control-label" Text="Password"></asp:Label>

                <div class="col-md-3">
                    <asp:TextBox ID="Password" CssClass="form-control" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorLastName" CssClass="text-danger" runat="server" ErrorMessage="Password Field is Required" ControlToValidate="Password"></asp:RequiredFieldValidator>

                </div>
            </div>

        <!-- Confirm Password -->
        <div class="form-group" >

                <asp:Label ID="Label6" runat="server" CssClass="col-md-2 control-label" Text="Confirm Password"></asp:Label>

                <div class="col-md-3">
                    <asp:TextBox ID="ConPassword" CssClass="form-control" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" CssClass="text-danger" runat="server" ErrorMessage="Password Field is Required" ControlToValidate="ConPassword"></asp:RequiredFieldValidator>

                </div>
            </div>
        
 <!-- Email field -->
        
            <div class="form-group" >

                <asp:Label ID="Label5" runat="server" CssClass="col-md-2 control-label" Text="Email"></asp:Label>

                <div class="col-md-3">
                    <asp:TextBox ID="Email" CssClass="form-control" runat="server" TextMode="Email"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorEmail" CssClass="text-danger" runat="server" ErrorMessage="Email Field is Required" ControlToValidate="Email"></asp:RequiredFieldValidator>

                </div>
            </div>
 <!-- Username field -->
            <div class="form-group" >

                <asp:Label ID="Label1" runat="server" CssClass="col-md-2 control-label" Text="First Name"></asp:Label>

                <div class="col-md-3">
                    <asp:TextBox ID="FirstName" CssClass="form-control" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorUsername1" CssClass="text-danger" runat="server" ErrorMessage="First Name Field is Required" ControlToValidate="FirstName"></asp:RequiredFieldValidator>

                </div>
            </div>

 <!-- Password field -->
            
            <div class="form-group" >

                <asp:Label ID="Label2" runat="server" CssClass="col-md-2 control-label" Text="Last Name"></asp:Label>

                <div class="col-md-3">
                    <asp:TextBox ID="LastName" CssClass="form-control" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorPassword" CssClass="text-danger" runat="server" ErrorMessage="Last Name Field is Required" ControlToValidate="LastName"></asp:RequiredFieldValidator>

                </div>
            </div>
        
 
<!-- Submit Button -->
            <div class="form-group" >
            <div class="col-md-2"> </div>
            <div class="col-md-6">
                <asp:Button ID="Button1" runat="server" Text="Submit" CssClass="btn btn-default" OnClick="Button1_Click" />
                <asp:Label ID="lblMsg" runat="server"></asp:Label>
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
