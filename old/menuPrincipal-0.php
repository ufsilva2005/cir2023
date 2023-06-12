<?php 
    session_start();
?>
<!DOCTYPE html>
<html lang="pt-br">
	<head>
		<meta charset="utf-8">		
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>S C E M - Sistema de Cadastro da Cir</title>	
		<link href="../css/bootstrap.css" rel="stylesheet">	
        <script src="../js/bootstrap.bundle.min.js"></script>
	</head>

    <style>  
        table, th, td {
            padding: 5px;
            text-align:center;
        }
    </style>

    <script src="../js/jQuery1.12.js"></script>
	<script src="../js/Bootstrap3.7.js"></script>

    <body>
        <nav class="navbar navbar-dark bg-primary">
            <div class="btn-group">
                <!--img src="../img/logo2.png" width=90 height=40-->
                <img src="../img/cir.jpg" width=60 height=60>
                &emsp;   &emsp;  &emsp;  
                <div class="btn-group">
                    <button type="button" class="btn btn-primary dropdown-toggle" data-bs-toggle="dropdown">IMPRESSORAS</button>
                    <ul class="dropdown-menu">
                        <li><a class="dropdown-item" href="../views/.php">Função não Permitida</a></li>
                    </ul>
                </div>

                <div class="btn-group">
                    <button type="button" class="btn btn-primary dropdown-toggle" data-bs-toggle="dropdown">COMPUTADOR</button>
                    <ul class="dropdown-menu">
                        <li><a class="dropdown-item" href="../views/.php">Função não Permitida</a></li>
                    </ul>
                </div>

                <div class="btn-group">
                    <button type="button" class="btn btn-primary dropdown-toggle" data-bs-toggle="dropdown">MATERIAL</button>
                    <ul class="dropdown-menu">
                        <li><a class="dropdown-item" href="../views/.php">Função não Permitida</a></li>
                    </ul>
                </div>  

                <div class="btn-group">
                    <button type="button" class="btn btn-primary dropdown-toggle" data-bs-toggle="dropdown">FUNCIONÁRIOS</button>
                    <ul class="dropdown-menu">
                        <li><a class="dropdown-item" href="../views/.php">Função não Permitida</a></li>
                    </ul>
                </div>  

                <div class="btn-group">
                    <button type="button" class="btn btn-primary dropdown-toggle" data-bs-toggle="dropdown">RELATÓRIOS</button>
                    <ul class="dropdown-menu">
                        <li><a class="dropdown-item" href="../views/.php">Função não Permitida</a></li>
                    </ul>
                </div>  

                <div class="btn-group"> 
                    &emsp; &emsp;
                    <form class="d-flex" role="search" action="../index.php" method="POST">
                        <button class="btn btn-outline-ufs" type="submit">Sair</button>
                    </form>
                </div>  
                
                <div class="row px-md-3 col-md-12">
                    <?php
                        $html = " <h5 class='timertext px-md-3 col-md-4' style='font-size: .8rem; color:red'> LOGOUT EM: <span class='secs'></span> min </h5>";
                        echo $_SESSION["nomeFuncionario"] . "" . $html;
                    ?> 
                </div>  
            </div>
        </nav>

       
        <script type="text/javascript">
            document.addEventListener("DOMContentLoaded", function(event) {  
                let timer, currSeconds = 0;
    
                function resetTimer() {        
                    /* Hide the timer text */
                    document.querySelector(".timertext") .style.display = 'none';
            
                    /* Clear the previous interval */
                    clearInterval(timer);
            
                    /* Reset the seconds of the timer */
                    currSeconds = 0;
            
                    /* Set a new interval */
                    timer = setInterval(startIdleTimer, 1000);
                }
    
                // Define the events that
                // would reset the timer
                window.onload = resetTimer;
                window.onmousemove = resetTimer;
                window.onmousedown = resetTimer;
                window.ontouchstart = resetTimer;
                window.onclick = resetTimer;
                window.onkeypress = resetTimer;
    
                function startIdleTimer() {                    
                    /* Increment the timer seconds */
                    currSeconds++;
                    seg = (901 - currSeconds);                
                    min = Math.floor(seg/60);        
                    resto = seg%60;
                    /* Set the timer text to the new value */
                    document.querySelector(".secs") .textContent = min + ':'+resto;
            
                    if(currSeconds > 900){
                        window.location.href = "../controllers/usuarioLogout.php";
                    } 

                    /* Display the timer text */
                    document.querySelector(".timertext") .style.display = 'block';
                }
                    
            }); 
        </script>