﻿<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="AdminProfile.aspx.vb" Inherits="Movie_Ticketing_System__CSBH_.AdminProfile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Profile</title>
    <!-- Bootstrap-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <!-- Bootstrap Icons-->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.2/font/bootstrap-icons.css">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css" integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <!-- CSS -->
    <link href="../SASS/AdminProfile.css" rel="stylesheet" />
    <link href="../SASS/AdminProfile.min.css" rel="stylesheet" />

</head>
<body>
    <form id="form1" runat="server">
        <!-- Page Wrapper -->
        <div class="d-flex" id="wrapper">

            <!-- Sidebar -->
            <div class="side-bar d-flex flex-column p-3" id="sidebar">
                <a href="Admin.aspx" id="logo" class="mb-1">CSBH</a>
                <hr>
                <ul id="side-bar-nav" class="nav nav-pills flex-column mb-auto">
                    <li class="nav-item"><a href="Admin.aspx" class="nav-link active"><i class="bi bi-speedometer2 me-2 fa-sm"></i><span>Dashboard</span></a></li>
                    <li><a href="Movielist.aspx" class="nav-link"><i class="bi bi-film me-2 fa-sm"></i></i><span>Movies</span></a></li>
                    <li><a href="Users.aspx" class="nav-link"><i class="bi bi-people me-2 fa-sm"></i><span>Users</span></a></li>
                    <li><a href="bookinglist.aspx" class="nav-link"><i class="bi bi-ticket-detailed me-2 fa-sm"></i><span>Booking</span></a></li>
                </ul>
            </div>
            <!-- Sidebar END -->

            <!-- Content -->
            <div class="content">

                <!-- Navbar -->
                <nav class="navbar navbar-expand navbar-light bg-white topbar shadow px-3 mb-4">
                    <a id="sidebarToggleTop" role="button" class="btn btn-link fa-lg">
                        <i class="bi bi-x-circle"></i>

                    </a>
                    <ul class="navbar-nav ml-auto">
                        <li class="nav-item dropdown">
                            <a class=" text-decoration-none" href="#" role="button" id="dropDownUser" data-bs-toggle="dropdown" aria-expanded="false">
                                <i src="#" class="rounded-circle me-2 bi bi-person-circle fa-2x" width="32" height="32"></i>
                            </a>
                            <div class="dropdown-menu dropdown-menu-right shadow" aria-labelledby="dropDownUser">
                                <a class="dropdown-item" href="#"><i class="bi bi-person me-2 "></i><span>Profile</span></a>
                                <asp:LinkButton ID="logoutButton" CssClass="dropdown-item text-danger" runat="server"><i class="bi bi-box-arrow-in-right me-2 fa-sm"></i><span>Logout</span></asp:LinkButton>
                            </div>
                        </li>
                    </ul>
                </nav>
                <!-- Navbar END -->

                <!-- Fluid Container -->
                <div class="container-fluid">
                    <!--Header-->
                    <div class="header mb-4">
                        <h1 class="h3 mb-0 fw-800 text-black-color">Edit profile</h1>
                    </div>

                    <!--Card Container-->
                    <div class="card shadow">
                        <div class="card-body">


                            <div class="admin__input-container">
                                <div class="admin__logo">

                                    <i src="#" class="primary-logo rounded-circle me-2 bi bi-person-circle fa-2x" width="32" height="32"></i>
                                </div>

                                <div class="admin__input admin__input--username">
                                    <p class="admin__label">Username</p>
                                    <asp:TextBox ID="AdminNameInput" CssClass="admin__field" runat="server" ClientIDMode="Static" required></asp:TextBox>
                                </div>

                                <div class="admin__input admin__input--current-pass">
                                    <p class="admin__label">Current Password</p>
                                    <asp:TextBox ID="AdminCurrentPassInput" CssClass="admin__field" runat="server" TextMode="Password" required></asp:TextBox>
                                    <asp:Label ID="TxtError" runat="server" CssClass="text-danger-color mt-2" Text=""></asp:Label>
                                </div>

                                <div class="admin__input__new-pass">
                                    <p class="admin__label">New Password</p>
                                    <asp:TextBox ID="AdminNewPassInput" CssClass="admin__field" runat="server" TextMode="Password"></asp:TextBox>
                                </div>

                                <div class="admin__input__confirm-pass">
                                    <p class="admin__label">Confirm Password</p>
                                    <asp:TextBox ID="AdminConfirmPassInput" CssClass="admin__field" runat="server" TextMode="Password"></asp:TextBox>
                                    <asp:CompareValidator ID="CompareValidator1"
                                        runat="server" 
                                        ErrorMessage="Passwords don't match"
                                        ControlToValidate="AdminConfirmPassInput"
                                        CssClass="text-danger-color"
                                        ControlToCompare="AdminNewPassInput">
                                        
                                    </asp:CompareValidator>
                                    
                                </div>

                                <asp:Button ID="SubmitButtonAdmin" CssClass="admin__button" runat="server" Text="Save" />



                            </div>
                        </div>

                    </div>
                </div>

            </div>
        </div>
    </form>
    <!-- JavaScript Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

    <!-- Jquery script-->
    <script
  src="https://code.jquery.com/jquery-3.6.1.js"
  integrity="sha256-3zlB5s2uwoUzrXK3BT7AX3FyvojsraNFxCc2vC/7pNI="
  crossorigin="anonymous"></script>

    <script type="text/javascript">
        const el = document.getElementById("wrapper");
        const btn = document.getElementById("sidebarToggleTop")
        const icon = document.querySelector(".bi-x-circle")


        btn.addEventListener('click', () => {
            el.classList.toggle("toggled")
            icon.classList.toggle("bi-list")
            icon.classList.toggle("bi-x-circle")
        })
    </script>



</body>
</html>
