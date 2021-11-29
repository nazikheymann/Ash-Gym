<?php
// Include config file
require_once "config.php";
 
// Define variables and initialize with empty values
$fname = $lname = $email = "";
$fname_err = $lname_err = $email_err = "";

$errors = array();
 
// Processing form data when form is submitted
// if($_SERVER["REQUEST_METHOD"] == "POST"){
//     // Validate first name
//     $input_fname = trim($_POST["fname"]);
//     if(empty($input_fname)){
//         $fname_err = "Please enter your first name.";
//     } elseif(!filter_var($input_fname, FILTER_VALIDATE_REGEXP, array("options"=>array("regexp"=>"/^[a-zA-Z\s]+$/")))){
//         $fname_err = "Please enter a valid name.";
//     } else{
//         $fname = $input_fname;
//     }
    
//     // Validate last name
//     $input_lname = trim($_POST["lname"]);
//     if(empty($input_lname)){
//         $lname_err = "Please enter your last name.";
//     } elseif(!filter_var($input_lname, FILTER_VALIDATE_REGEXP, array("options"=>array("regexp"=>"/^[a-zA-Z\s]+$/")))){
//         $lname_err = "Please enter a valid name.";
//     } else{
//         $lname = $input_lname;
//     }
    
    
//     // Validate email 
//     $input_email = trim($_POST["email"]);
//     if(empty($input_email)){
//         $email_err = "Please enter your email.";
//     } elseif(!filter_var($input_lname, FILTER_VALIDATE_REGEXP, array("options"=>array("regexp"=>"/^[a-zA-Z\s]+$/")))){
//         $email_err = "Please enter a valid name.";
//     } else{
//         $email= $input_email;
//     }


if(isset($_POST["submit"])){
    $fname = $_POST["fname"];
    $lname = $_POST["lname"];
    $email = $_POST["email"];
    $password = $_POST["password"];
    $confirm_password = $_POST["confirm_password"];

    if($password != $confirm_password){
        array_push($errors, "passwords do not match");
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
                header("location: Homepage.php");
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
    <title>Ash Gym | Sign Up</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="gym_style.css">
    <style>
        .wrapper{
            /* width: 600px; */
            margin: 0 auto;
        }
    </style>
</head>
<body>
    <div class="wrapper">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12">
                    <div class="bg-img">
                        <div class="content">
                            <img id = "ashesi_logo" src="https://www.ashesi.edu.gh/images/logo-mobile.png">
                            <header>Welcome to Ash Gym</header>
                            <form action="login.php" method="post">

                            <div class="field">
                            <input type="text" name="fname" class="form-control <?php echo (!empty($fname_err)) ? 'is-invalid' : ''; ?>" value="<?php echo $fname; ?>" required placeholder = "First Name">
                            <span class="invalid-feedback"><?php echo $fname_err;?></span>
                        </div><br>

                        <div class="field">    
                            <input type="text" name="lname" class="form-control <?php echo (!empty($lname_err)) ? 'is-invalid' : ''; ?>" value="<?php echo $lname; ?>" required placeholder = "Last Name">
                            <span class="invalid-feedback"><?php echo $lname_err;?></span>
                        </div><br>

                        <div class="field">    
                            <input type="text" name="email" class="form-control <?php echo (!empty($email_err)) ? 'is-invalid' : ''; ?>" value="<?php echo $email; ?>" required placeholder = "Email">
                            <span class="invalid-feedback"><?php echo $email_err;?></span>
                        </div><br>

                        <div class="field">
                            <input type="password" name="password" class="form-control <?php echo (!empty($pword_err)) ? 'is-invalid' : ''; ?>" required placeholder = "Password">
                            <span class="invalid-feedback"><?php echo $pword_err;?></span>
                        </div><br>

                        <div class="field">
                            <input type="password" name="confirm_password" class="form-control <?php echo (!empty($c_pword_err)) ? 'is-invalid' : ''; ?>" required placeholder = "Confirm Password">
                            <span class="invalid-feedback"><?php echo $c_pword_err;?></span>
                        </div><br>

                        <div class="field">
                        <input type="submit" class="btn btn-primary" value="Sign Up">
                        <a href="login.php"></a>
                    </form>
                </div>
            </div>        
        </div>
    </div>
</body>
</html>