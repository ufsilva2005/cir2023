<?php
	session_start();
	$tipoP = $_SESSION['tipoP'];
	$valorP = $_SESSION['valorP'];
	$atiDes = $_SESSION['atiDes'];

	include "../dao/DAO-controleCir.php";
	$op1 = $_GET['action'];
	$idImpressora = $_GET['id'];
	echo "<br>op1 1 => " . $op1;
	if($op1 == 1 || $op1 == 3 || $op1 == 5)  
		{
            $op2 = $op1;
			$statusImpressora = "ativo";
		}
	elseif($op1 == 2 || $op1 == 4 || $op1 == 6)  
		{
            $op2 = $op1;
			$statusImpressora = "inativo";
		}
	else  
		{
            header("Location: ../template/menuPrincipal.php");  
		}
          
	//echo "<br>op2 2 => " . $op2;
	//echo "<br>idImpressora => " . $idImpressora;
	//echo "<br>statusImpressora => " . $statusImpressora;
	//echo $_SESSION['tipoPesquisa'] = $tipoPesquisa;
	//echo $_SESSION['valorPesquisa'] = $valorPesquisa;
	//echo "<br>tipoP => " . $tipoP;
	//echo "<br>valorP => " . $valorP;
            
    $ativaDeativaDAO = new ControleCirDAO();  
    $ativaDeativaDAO->AtivaDesativa($idImpressora,$statusImpressora);
	//echo $_SESSION['tipoPesquisa'];

	if($op2 == 1 || $op2 == 2)
		{
			//echo "<br>op2 3 => " . $op2;
			//$_SESSION['tipoP'] = $tipoP;
			//$_SESSION['valorP'] = $valorP;
			header("Location: ../views/impressorasListar.php");     
		} 

	elseif($op2 == 3 || $op2 == 4)
		{
			//echo "<br>op2 4 => " . $op2;
			$_SESSION['tipoP1'] = $tipoP;
			$_SESSION['valorP1'] = $valorP;			
			header("Location: ../views/impressorasPesquisarResultado.php");
		}
	else
		{	
			header("Location: ../views/impressorasListarAtivas.php?action=$atiDes");
		}
?>