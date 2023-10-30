<?php	
	session_start();	
	include "../funcao/funcao.php";
	include "../dao/DAO-controleCir.php";
	include "../models/class-modeloImp.php";

	//recebe dados da view
    $modeloImpressora =  converteMaiuscula($_POST['modeloImpressora']);
    $statusModelo = "ativo";
    echo "<br>modeloImpressora => " . $modeloImpressora . "<br>";
    echo "<br>statusModelo => " . $statusModelo . "<br>";
            
    $modeloImp = new ModeloImp($idModelo, $statusModelo, $modeloImpressora);
	echo "<br>dados impressora <br>";		
	$modeloImp->exibir();
	echo "<br>";
	$modeloImpDAO = new ControleCirDAO();
	$modeloImpDAO->CadastrarModeloImp($modeloImp);
			
	header("Location: ../views/impressorasCadastrarModelo.php");    
?>