<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src= https://kit.fontawesome.com/b99e675b6e.js></script>
    <title>Ash Gym | Home</title>
    <link rel="stylesheet" href="Homepage.css">
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
            <div class="sidebar_inner">
                <ul>
                    <li>
                    <a href="homepage.php">
                  <span class="icon"><i class="fa fa-home"></i></span>
                  <span class="text">Home</span>
                    </a>
                    </li>
              
                    <li>
                    <a href="equipment_demo.php">
                  <span class="icon"><i class="fa fa-dumbbell"></i></span>
                  <span class="text">Equipment</span>
                    </a>
                    </li>
                    <li>
                    <a href="members_demo.php">
                  <span class="icon"><i class="fa fa-users"></i></span>
                  <span class="text">Members</span>
                    </a>
                    </li>

                </ul>
              </div>
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