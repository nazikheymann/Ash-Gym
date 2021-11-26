<?php
// Include config file
require_once "test/config.php";
 
// Define variables and initialize with empty values
$fname = $lname = $email = "";
$fname_err = $lname_err = $email_err = "";
 
// Processing form data when form is submitted
if($_SERVER["REQUEST_METHOD"] == "POST"){
    // Validate first name
    $input_fname = trim($_POST["fname"]);
    if(empty($input_fname)){
        $fname_err = "Please enter your first name.";
    } elseif(!filter_var($input_fname, FILTER_VALIDATE_REGEXP, array("options"=>array("regexp"=>"/^[a-zA-Z\s]+$/")))){
        $fname_err = "Please enter a valid name.";
    } else{
        $fname = $input_fname;
    }
    
    // Validate last name
    $input_lname = trim($_POST["lname"]);
    if(empty($input_lname)){
        $lname_err = "Please enter your last name.";
    } elseif(!filter_var($input_lname, FILTER_VALIDATE_REGEXP, array("options"=>array("regexp"=>"/^[a-zA-Z\s]+$/")))){
        $lname_err = "Please enter a valid name.";
    } else{
        $lname = $input_lname;
    }
    
    
    // Validate email 
    $input_email = trim($_POST["email"]);
    if(empty($input_email)){
        $email_err = "Please enter your email.";
    } elseif(!filter_var($input_lname, FILTER_VALIDATE_REGEXP, array("options"=>array("regexp"=>"/^[a-zA-Z\s]+$/")))){
        $email_err = "Please enter a valid name.";
    } else{
        $email= $input_email;
    }
    
    
    
    // Check input errors before inserting in database
    if(empty($fname_err) && empty($lname_err) && empty($email_err)){
        // Prepare an insert statement
        $sql = "INSERT INTO Client (fname, lname, email) VALUES (?, ?, ?)";
         
        if($stmt = mysqli_prepare($link, $sql)){
            // Bind variables to the prepared statement as parameters
            mysqli_stmt_bind_param($stmt, "sss", $param_fname, $param_lname, $param_email);
            
            // Set parameters
            $param_fname = $fname;
            $param_lname = $lname;
            $param_email = $email;
            
            // Attempt to execute the prepared statement
            if(mysqli_stmt_execute($stmt)){
                // Records created successfully. Redirect to landing page
                header("location: ..Final-Group-Project/members_page.php");
                exit();
            } else{
                echo "Oops! Something went wrong. Please try again later.";
            }
        }
         
        // Close statement
        mysqli_stmt_close($stmt);
    }
    
    // Close connection
    mysqli_close($link);
}
?>

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
           <form action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>" method="post">
            <div class="field">
               <span class="invalid-feedback"><?php echo $fname_err;?></span>
                <input type="text" name="fname" class="form-control <?php echo (!empty($fname_err)) ? 'is-invalid' : ''; ?>" value="<?php echo $fname; ?>" required placeholder="First Name">
             </div><br>
             <div class="field">
             <span class="invalid-feedback"><?php echo $lname_err;?></span>
               <input type="text" name="lname" class="form-control <?php echo (!empty($lname_err)) ? 'is-invalid' : ''; ?>" value = "<?php echo $lname; ?>" required placeholder="Last Name"></textarea>
             </div><br>
              <div class="field">
                 <span class="invalid-feedback"><?php echo $email_err;?></span>
                 <input type="text" name="email" class="form-control <?php echo (!empty($email_err)) ? 'is-invalid' : ''; ?>" value="<?php echo $email; ?>" required placeholder="Email">
              </div>
              <div class="field space">
                 <span class="fa fa-lock"></span>
                 <input type="password" class="pass-key" required placeholder="Password">
              </div><br>
              <div class="field">
                <span class="fa fa-user"></span>
                <input type="password" required placeholder="Confirm Password">
             </div>
              <div class="pass">
                 <a href="#">Forgot Password?</a>
              </div>

              <div class="field">
                 <input type="submit" a href="../members_page.php" class="btn btn-primary" value="SIGN UP">
              </div>


           </form>
           <div class="login">
              Already have an account?
              <a href="login.php">Login</a>
           </div>
</body>
</html>