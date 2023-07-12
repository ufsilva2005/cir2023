<?php	
	//session_start();	
	include "../funcao/funcao.php";

	//recebe dados da view
	$numSerie = converteMaiuscula($_POST['numSerie']);   
	$divisaoImpressora = $_POST['divisao'];
	$modeloImpressora = $_POST['modelo'];
	$ipImpressora = $_POST['numIp'];    
	$macImpressora = $_POST['numMac'];	
	
	if($numSerie == "" && $divisaoImpressora == "" && $modeloImpressora == "" && $ipImpressora == "" && $macImpressora == "")
		{
			echo "<br>DAdos em branco";
		}
	elseif($numSerie != "" && $divisaoImpressora == "" && $modeloImpressora == "" && $ipImpressora == "" && $macImpressora == "")
		{
			//echo "<br>numSerie => " . $numSerie;   
			$valorPesquisa = $numSerie;
			$tipoPesquisa = "numSerie";
		}
	elseif($numSerie == "" && $divisaoImpressora != "" && $modeloImpressora == "" && $ipImpressora == "" && $macImpressora == "")
		{
			//echo "<br>divisao => " . $divisaoImpressora;
			$valorPesquisa = $divisaoImpressora;
			$tipoPesquisa = "divisao";
		}
	elseif($numSerie == "" && $divisaoImpressora == "" && $modeloImpressora != "" && $ipImpressora == "" && $macImpressora == "")
		{
			//echo "<br>modelo => " . $modeloImpressora;
			$valorPesquisa = $modeloImpressora;
			$tipoPesquisa = "modeloImpressora";
		}
	elseif($numSerie == "" && $divisaoImpressora == "" && $modeloImpressora == "" && $ipImpressora != "" && $macImpressora == "")
		{
			//echo "<br>numIp => " . $ipImpressora;
			$valorPesquisa = $ipImpressora;
			$tipoPesquisa = "ipImpressora";
		}
	elseif($numSerie == "" && $divisaoImpressora == "" && $modeloImpressora == "" && $ipImpressora == "" && $macImpressora != "")
		{
			//echo "<br>numMac => " . $macImpressora;
			$valorPesquisa = $macImpressora;
			$tipoPesquisa = "macImpressora";
		}
	else
		{
			echo "<br>Dados em branco";
		}
?>