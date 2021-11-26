<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="gym_style.css">
    <title>Ash Gym | Sign up</title>
</head>
<body>

<?php
//validating that it is an ashesi email
//if (isset($_POST['email']) == true && empty($_POST['email'])== false){
   //$email = $_POST['email'];
   //if (!stristr($em,"@") OR !stristr($em,"ashesi.edu.gh")) {

     // $msg="Your email address is not correct <BR>"; 
      
      ///$status= "NOTOK";
      
      //} else {
      
      //echo " Your email address is OK ";
      
      //}
//}

//get form data






//Create connection



// if($conn->query($sql) === TRUE) {
//     echo "New record created successfully: ";
//     echo $f_name;
// } else {
//     echo "Error: " . $sql . "<br>" . $conn->error; 
// }



?>

    <div class="bg-img">
        <div class="content">
           <header>Welcome to Ash Gym</header>
           <form action="#" method ="POST" action="gym_connection.php">
            <div class="field">
                <span class="fa fa-user"></span>
                <input type="text" name="f_name"required placeholder="First Name">
             </div><br>

             <div class="field">
                <span class="fa fa-user"></span>
                <input type="text" name="l_name" required placeholder="Last Name">
             </div><br>

              <div class="field">
                 <span class="fa fa-user"></span>
                 <input type="text" name="email" required placeholder="Email">
              </div>
              <div class="field space">
                 <span class="fa fa-lock"></span>
                 <input type="password" class="pass-key" name="password" required placeholder="Password">
              </div><br>
              <div class="field">
                <span class="fa fa-user"></span>
                <input type="text" name="c_password" required placeholder="Confirm Password">
             </div>
              <div class="pass">
                 <a href="#">Forgot Password?</a>
              </div>

              <div class="field">
                 <input type="submit" name ="sign_up" value="SIGN UP">
              </div>
           </form>
           <div class="login">
              Already have an account?
              <a href="login.php">Login</a>
           </div>
</body>

</html>