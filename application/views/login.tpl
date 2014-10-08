<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />        
        <meta name="viewport" content="width=device-width" />
        <title><?php echo $title; ?></title>
        <link rel="stylesheet" href="<?php echo BASEPATH ?>/css/login.css" />
        <link rel="shortcut icon" href="favicon.ico" type="image/x-icon"/>
    </head>
        <body>
            <div class="container">

                <div class="box"> 
                    <form method="post" action="#">
                        <fieldset>
                            <legend>Login</legend>
                            <input name="username" type="text" placeholder="Username" required pattern="[a-zA-Z0-9.@]+"/>
                            <input name="password" type="password" placeholder="Password" required/>
                            <?php if(isset($error) && $error==true) 
                                  echo "<div class='error'>The username or password that you entered is incorrect!</div>";?>
                            <input class="blue" type="submit" value="Login"/>
                        </fieldset>
                    </form>
                </div>

            </div>
        </body>
</html>