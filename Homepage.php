<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src= https://kit.fontawesome.com/b99e675b6e.js></script>
    <title>Ash Gym | Home</title>
    <link rel="stylesheet" href="Homepage.css">

    <nav>
      <ul>
        <li><a href="signup.php">Sign Up</a></li>
        <li><a href="login.php">Login</a></li>
      </ul>
    </nav>

</head>
<body>
    <!-- <div class="wrapper hover_collapse"> -->

        <!-- Top bar -->
        <div class="top_navbar">
            <!-- logo -->
                <div class="logo">Ash Gym</div>
            <!-- menu button -->

            <div id="main">

                <!-- <div class="menu"> -->
                    
                  <!-- </div> -->

                <button class="openbtn" onclick="openNav()">
                <div class="hamburger">
                    <i class="fas fa-bars"></i>
                    </div>
                
                </button>
    
    
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
                    <a href="gym_demo.html">
                  <span class="icon"><i class="fa fa-home"></i></span>
                  <span class="text">Home</span>
                    </a>
                    </li>
              
                    <li>
                    <a href="equipment_demo.html">
                  <span class="icon"><i class="fa fa-dumbbell"></i></span>
                  <span class="text">Equipment</span>
                    </a>
                    </li>
                    <li>
                    <a href="members_demo.html">
                  <span class="icon"><i class="fa fa-users"></i></span>
                  <span class="text">Members</span>
                    </a>
                    </li>

                </ul>
              </div>
        </div>

        <p>
          <h1>WELCOME TO ASH GYM</h1>
          
        </p>

        
        


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