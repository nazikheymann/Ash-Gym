<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="gym_style.css">
    <title>Ash Gym | Login</title>
</head>
<body>
    <div class="bg-img">
        <div class="content">
           <img id = "ashesi_logo" src="https://www.ashesi.edu.gh/images/logo-mobile.png">
           <header>Welcome to Ash Gym</header>
           <form action="#">
              <div class="field">
                 <span class="fa fa-user"></span>
                 <input type="text" required placeholder="Email">
              </div>
              <div class="field space">
                 <span class="fa fa-lock"></span>
                 <input type="password" class="pass-key" required placeholder="Password">
              </div>
              <div class="pass">
                 <a href="#">Forgot Password?</a>
              </div>
              <div class="field">
                 <input type="submit" value="LOGIN">
              </div>
           </form>

           <div class="signup">
              Don't have account?
              <a href="signup.php">Signup Now</a>
           </div>
        </div>
     </div>
     <script>
        const pass_field = document.querySelector('.pass-key');
        const showBtn = document.querySelector('.show');
        showBtn.addEventListener('click', function(){
         if(pass_field.type === "password"){
           pass_field.type = "text";
           showBtn.textContent = "HIDE";
           showBtn.style.color = "#3498db";
         }else{
           pass_field.type = "password";
           showBtn.textContent = "SHOW";
           showBtn.style.color = "#222";
         }
        });
     </script>
</body>
</html>