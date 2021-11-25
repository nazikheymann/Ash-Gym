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
    <div class="bg-img">
        <div class="content">
        <img id = "ashesi_logo" src="https://www.ashesi.edu.gh/images/logo-mobile.png">
           <header>Welcome to Ash Gym</header>
           <form action="#">
            <div class="field">
                <span class="fa fa-user"></span>
                <input type="text" required placeholder="Name">
             </div><br>
              <div class="field">
                 <span class="fa fa-user"></span>
                 <input type="text" required placeholder="Email">
              </div>
              <div class="field space">
                 <span class="fa fa-lock"></span>
                 <input type="password" class="pass-key" required placeholder="Password">
              </div><br>
              <div class="field">
                <span class="fa fa-user"></span>
                <input type="text" required placeholder="Confirm Password">
             </div>
              <div class="pass">
                 <a href="#">Forgot Password?</a>
              </div>

              <div class="field">
                 <input type="submit" value="SIGN UP">
              </div>
           </form>
           <div class="login">
              Already have an account?
              <a href="login.php">Login</a>
           </div>
</body>
</html>