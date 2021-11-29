<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Ash Gym | Home</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="Homepage.css">
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <style>
        .wrapper{
            width: 600px;
            height:100vh;
            margin: 0 auto;
            padding-top:20rem;
        }
        table tr td:last-child{
            width: 120px;
        }
    </style>
    <script>
        $(document).ready(function(){
            $('[data-toggle="tooltip"]').tooltip();   
        });
    </script>
</head>
<body>


        <!-- Top bar -->
        <div class="top_navbar">
            <!-- logo -->
                <div class="logo">Ash Gym</div>
            <!-- menu button -->

            <div id="main">

    
    
            </div>

               <!-- <div class="menu">
                 <div class="hamburger">
                 <i class="fas fa-bars"></i>
                 </div>
               </div> -->
            
            <!-- </div> -->
        <!-- Sidebar -->
        <div id = "mysidebar" class="sidebar">
            <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">×</a>
            <div class="sidebar_inner">
                <ul>
                    <li>
                    <a href="Homepage.php">
                  <span class="icon"><i class="fa fa-dumbbell"></i></span>
                  <span class="text">Home</span>
                    </a>
                    </li>
              
                    <li>
                    <a href="equipment_page.php">
                  <span class="icon"><i class="fa fa-home"></i></span>
                  <span class="text">Products/<br>Equipment</span>
                    </a>
                    </li>
                    <li>
                    <a href="members_page.php">
                  <span class="icon"><i class="fa fa-users"></i></span>
                  <span class="text">Members</span>
                    </a>
                    </li>

                </ul>
              </div>
        </div>


    <div class="wrapper" >
        <p class= "welcome_msg"> WELCOME TO ASH GYM</p>

    </div>
    <script>
            function openNav() {
              document.getElementById("mysidebar").style.width = "250px";
              document.getElementById("main").style.marginLeft = "250px";
            }
            
            function closeNav() {
              document.getElementById("mysidebar").style.width = "0";
              document.getElementById("main").style.marginLeft= "0";
            }
            </script>



</body>
</html>

