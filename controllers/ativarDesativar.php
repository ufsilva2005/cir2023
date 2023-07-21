<?php
	include "../dao/DAO-controleCir.php";
	$op1 = $_GET['action'];
	$idImpressora = $_GET['id'];
	if($op1 == 1)  
		{
            $statusImpressora = "ativo";
		}
	elseif($op1 == 2)  
		{
            $statusImpressora = "inativo";
		}
	else  
		{
            header("Location: ../template/menuPrincipal.php");  
		}
          
	echo "<br>op1 => " . $op1;
	echo "<br>idImpressora => " . $idImpressora;
	echo "<br>statusImpressora => " . $statusImpressora;
            
    $ativaDeativaDAO = new ControleCirDAO();  
    $ativaDeativaDAO->AtivaDesativa($idImpressora,$statusImpressora);
	echo $_SESSION['tipoPesquisa'];
    //header("Location: ../views/impressorasListar.php");      
?>