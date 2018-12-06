<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddComic.aspx.cs" Inherits="AddComic" %>


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
          <a href="#">Add a Comic to the Site! </a>
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
                <asp:Label ID="Label3" runat="server" CssClass="col-md-1 control-label" Text="Comic Series Name"></asp:Label>

                <div class="col-md-3">
                    <asp:TextBox ID="comicName" CssClass="form-control" runat="server" ></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" CssClass="text-danger" runat="server" ErrorMessage="Comic Name Field is Required" ControlToValidate="comicName"></asp:RequiredFieldValidator>

                </div>
            </div>
        </div>
       
 <!-- Last Name field -->
        
            <div class="form-group" >

                <asp:Label ID="Label4" runat="server" CssClass="col-md-2 control-label" Text="Comic Volume"></asp:Label>

                <div class="col-md-3">
                    <asp:TextBox ID="comicVolume" CssClass="form-control" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorVol" CssClass="text-danger" runat="server" ErrorMessage="Volume of Comic Required" ControlToValidate="comicVolume"></asp:RequiredFieldValidator>

                </div>
            </div>

        <!-- Confirm Password -->
        <div class="form-group" >

                <asp:Label ID="Label6" runat="server" CssClass="col-md-2 control-label" Text="Protagonist in Comic"></asp:Label>

                <div class="col-md-3">
                    <asp:TextBox ID="comicPro" CssClass="form-control" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" CssClass="text-danger" runat="server" ErrorMessage="Protagonist of Comic Required" ControlToValidate="comicPro"></asp:RequiredFieldValidator>

                </div>
            </div>
        
 <!-- Email field -->
        
            <div class="form-group" >

                <asp:Label ID="Label5" runat="server" CssClass="col-md-2 control-label" Text="Antagonist in Comic"></asp:Label>

                <div class="col-md-3">
                    <asp:TextBox ID="comicAnt" CssClass="form-control" runat="server" TextMode="Email"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorAnt" CssClass="text-danger" runat="server" ErrorMessage="Antagonist of Comic Required" ControlToValidate="comicAnt"></asp:RequiredFieldValidator>

                </div>
            </div>
 <!-- Username field -->
            <div class="form-group" >

                <asp:Label ID="Label1" runat="server" CssClass="col-md-2 control-label" Text="Publish Date of Comic"></asp:Label>

                <div class="col-md-3">
                    <asp:TextBox ID="comicDate" CssClass="form-control" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorDate" CssClass="text-danger" runat="server" ErrorMessage="Publish Date of Comic Required" ControlToValidate="comicDate"></asp:RequiredFieldValidator>

                </div>
            </div>

 <!-- Password field -->
            
            <div class="form-group" >

                <asp:Label ID="Label2" runat="server" CssClass="col-md-2 control-label" Text="Author of Comic"></asp:Label>

                <div class="col-md-3">
                    <asp:TextBox ID="comicAuthor" CssClass="form-control" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorAuthor" CssClass="text-danger" runat="server" ErrorMessage="Author of the Comic is Required" ControlToValidate="LastName"></asp:RequiredFieldValidator>

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
