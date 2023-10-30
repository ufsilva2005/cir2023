<?php	
	session_start();	
	include "../funcao/funcao.php";

	//recebe dados da view
	$numCirComp = $_POST['numCir'];   
	$divisaoComp = $_POST['divisao'];
	$nomeCirComp = $_POST['nomeCir'];
	$ipComputador = $_POST['numIp'];    
	$macComputador = $_POST['numMac'];	
	
	if($numCirComp == "" && $divisaoComp == "" && $nomeCirComp == "" && $ipComputador == "" && $macComputador == "")
		{
			echo "<br>DAdos em branco";
		}
	elseif($numCirComp != "" && $divisaoComp == "" && $nomeCirComp == "" && $ipComputador == "" && $macComputador == "")
		{
			//echo "<br>numCir => " . $numCirComp;   
			$valorPesquisa = $numCirComp;
			$tipoPesquisa = "numCir";
			$_SESSION['tipoPesquisa'] = $tipoPesquisa;
		}
	elseif($numCirComp == "" && $divisaoComp != "" && $nomeCirComp == "" && $ipComputador == "" && $macComputador == "")
		{
			//echo "<br>divisao => " . $divisaoComp;
			$valorPesquisa = $divisaoComp;
			$tipoPesquisa = "divisao";
			$_SESSION['tipoPesquisa'] = $tipoPesquisa;
		}
	elseif($numCirComp == "" && $divisaoComp == "" && $nomeCirComp != "" && $ipComputador == "" && $macComputador == "")
		{
			//echo "<br>nomeCir => " . $nomeCirComp;
			$valorPesquisa = $nomeCirComp;
			$tipoPesquisa = "nomeComputador";
			$_SESSION['tipoPesquisa'] = $tipoPesquisa;
		}
	elseif($numCirComp == "" && $divisaoComp == "" && $nomeCirComp == "" && $ipComputador != "" && $macComputador == "")
		{
			//echo "<br>numIp => " . $ipComputador;
			$valorPesquisa = $ipComputador;
			$tipoPesquisa = "numIp";
			$_SESSION['tipoPesquisa'] = $tipoPesquisa;
		}
	elseif($numCirComp == "" && $divisaoComp == "" && $nomeCirComp == "" && $ipComputador == "" && $macComputador != "")
		{
			//echo "<br>numMac => " . $macComputador;
			$valorPesquisa = $macComputador;
			$tipoPesquisa = "numMac";
			$_SESSION['tipoPesquisa'] = $tipoPesquisa;
		}
	else
		{
			echo "<br>Dados em branco";
		}
?>