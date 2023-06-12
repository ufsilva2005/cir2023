<?php 
	
?>

<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>CADASTRO DE EQUIPAMENTOS E MATERIAIS (S C E M)</title>
        <link href="./css/bootstrap.css" rel="stylesheet" />
        <link href="./css/bootstrap.btn.css" rel="stylesheet" />
        <link rel="stylesheet" type="text/css" href="./css/login.css" />
           
    </head>

    <body>
        <div class="container">
            <div class="card card-container">
                <div id="remember">
                    <label>
                        <center>SISTEMA DE CADASTRO DE EQUIPAMENTOS E MATERIAIS</center>
                        <p id="profile-name" class="profile-name-card"></p>
                    </label>
                </div>

                <img id="profile-img" class="profile-img-card" src="./img/cir.jpg" />

                <div class="panel" id="tab-2">
                    <div class="panel" id="tab-1">
                        <form  method="post" action="./controllers/validarLogin.php" method="post">		
                            <div class="row">
                                <div class="col px-md-1 col-md-12">
                                    <label for="inputSuccess" class="control-label">login:</label>
                                    <input type="text" class="form-control" name="login" id = "login"  placeholder="Login" name="login" required autofocus>
                                </div>    
                            </div>  

                            <div class="row">
                                <div class="col px-md-1 col-md-12">
                                    <label for="inputSuccess" class="control-label">senha:</label>
                                    <input type="password" class="form-control" name="senha" id = "senha" placeholder="Senha" name="senha" required autofocus>
                                </div>      
                            </div> 
                            <div class="row">                 
                                <div class="col px-md-1 py-md-4 col-md-3">
                                    <button type="submit" class="btn btn-outline-success">Login</button>   
                                </div>      
                                &emsp;    
                                <div class="col px-md-2 py-md-4 col-md-8">
                                    <a class="btn btn-outline-warning" href="./views/esqueceSenha.php">Esqueci a Senha</a>  
                                </div>     
                                <hr>
                                    <a href="#" class="forgot-password">
                                        Desenvolvimento CIR
                                    </a>
                                <hr>
                            </div>

                            
                        </form>
                      
                    </div>
                </div>
            </div>
        </div>   
    </body>
</html>
