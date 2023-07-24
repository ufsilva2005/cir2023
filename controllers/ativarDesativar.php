<?php
	session_start();
	$tipoPesquisa = $_SESSION['tipoPesquisa'];
	$valorPesquisa = $_SESSION['valorPesquisa'];

	include "../dao/DAO-controleCir.php";
	$op1 = $_GET['action'];
	$idImpressora = $_GET['id'];
	echo "<br>op1 1 => " . $op1;
	if($op1 == 1 || $op1 == 3)  
		{
            $op2 = $op1;
			$statusImpressora = "ativo";
		}
	elseif($op1 == 2 || $op1 == 4)  
		{
            $op2 = $op1;
			$statusImpressora = "inativo";
		}
	else  
		{
            header("Location: ../template/menuPrincipal.php");  
		}
          
	echo "<br>op2 2 => " . $op2;
	echo "<br>idImpressora => " . $idImpressora;
	echo "<br>statusImpressora => " . $statusImpressora;
	//echo $_SESSION['tipoPesquisa'] = $tipoPesquisa;
	//echo $_SESSION['valorPesquisa'] = $valorPesquisa;
	echo "<br>tipoPesquisa => " . $tipoPesquisa;
	echo "<br>valorPesquisa => " . $valorPesquisa;
            
    //$ativaDeativaDAO = new ControleCirDAO();  
    //$ativaDeativaDAO->AtivaDesativa($idImpressora,$statusImpressora);
	//echo $_SESSION['tipoPesquisa'];

	if($op2 == 1 || $op2 == 2)
		{
			echo "<br>op2 3 => " . $op2;
			//header("Location: ../views/impressorasListar.php");     
		} 

	else
		{
			echo "<br>op2 4 => " . $op2;
			header("Location: ../views/impressorasPesquisarResultado.php");
		}
?>