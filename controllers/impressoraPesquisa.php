<?php	
	session_start();	
	include "../funcao/funcao.php";

	//recebe dados da view
	$numSerie = converteMaiuscula($_POST['numSerie']);   
	$divisaoImpressora = $_POST['divisao'];
	$modeloImpressora = $_POST['modelo'];
	$ipImpressora = $_POST['numIp'];    	
	
	if($numSerie == "" && $divisaoImpressora == "" && $modeloImpressora == "" && $ipImpressora == "")
		{
			echo "<br>DAdos em branco";
		}
	elseif($numSerie != "" && $divisaoImpressora == "" && $modeloImpressora == "" && $ipImpressora == "")
		{
			echo "<br>numSerie => " . $numSerie;   
		}
	elseif($numSerie == "" && $divisaoImpressora != "" && $modeloImpressora == "" && $ipImpressora == "")
		{
			echo "<br>divisao => " . $divisaoImpressora;
		}
	elseif($numSerie == "" && $divisaoImpressora == "" && $modeloImpressora != "" && $ipImpressora == "")
		{
			echo "<br>modelo => " . $modeloImpressora;
		}
	elseif($numSerie == "" && $divisaoImpressora == "" && $modeloImpressora == "" && $ipImpressora != "")
		{
			echo "<br>numIp => " . $ipImpressora;
		}
	else
		{
			echo "<br>DAdos em branco";
		}
?>