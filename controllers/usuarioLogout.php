<?php
	session_destroy();
	//Limpa a sessao
	$_SESSION['nomeFuncionario'] = "";
	unset ($_SESSION['funcionarios']);
    unset ($_SESSION['cargos']);
    unset ($_SESSION['entMaterial']); 
    unset ($_SESSION['saiMaterial']);   
    unset ($_SESSION['relaMaterial']);   
    unset ($_SESSION['computador']);  
    unset ($_SESSION['impressora']); 
    unset ($_SESSION['nomeFuncionario']); 
    unset ($_SESSION['idFuncionario']);
	header("Location: ../index.php");
?>