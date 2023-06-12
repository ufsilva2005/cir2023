<?php	
	session_start();	
	include "../funcao/funcao.php";
	include "../dao/DAO-controleCir.php";
	include "../models/class-setor.php";
	include "../models/class-impressora.php";

	//recebe dados da view
	$numSerie = converteMaiuscula($_POST['numSerie']);   
	$divisaoImpressora = $_POST['divisao'];
	$modeloImpressora = $_POST['modelo'];
	

    echo "<br>numSerie => " . $numSerie;   
	echo "<br>divisao => " . $divisaoImpressora;
	echo "<br>modelo => " . $modeloImpressora;

?>