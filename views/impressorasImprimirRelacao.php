<?php
	include "../template/menuPrincipal.php";
	include "../funcao/funcao.php";
   
    if($_SESSION['impressora'] != "sim")
        {
            echo "<script type='text/javascript'>alert('USUÁRIO NÃO AUTORIZADO');</script>";
            echo "<script>location = '../template/menuPrincipal.php';</script>";  
        }
	
    $hist =  $_GET['action'];
   	include "../controllers/impressoraBuscar.php"; 

   $inativo = 0;
   $ativo = 0;

    //$idFuncionario = $_SESSION['idFuncionario'];  
    //$nomeFuncionario = $_SESSION['nomeFuncionario'];  
?>	
