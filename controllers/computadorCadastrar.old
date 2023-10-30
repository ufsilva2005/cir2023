<?php
	session_start();
	include "../funcao/funcao.php";
	include "../dao/DAO-controleCir.php";
	include "../models/class-setor.php";
	include "../models/class-computador.php";	
		
	//recebe dados da view
	$dadosComputador = $_POST['dadosComputador'];
	$localComputador = $_POST['localComputador'];
	$dataCadastro    = $dataCadastro = formatarData($_SESSION['data']); 	
	$respCadastro = $_SESSION['respCadastro'];
	$idFuncionario = $_SESSION['idFuncionario'] ;

	//informacoes da maquina
	$idComputador = "";
	$numCir  = $_POST['numCir'];		
	$numPatReitoria  = $dadosComputador[0];
	$numPatrimonio  = $dadosComputador[1];
	$nomeComputador  = $_POST['nomeCir'];
	$sistemaOpera  = $dadosComputador[2];
	$modelMaquina =  $_POST['modelo'];
	$idTipoProcessador = $_POST['listaProcessador'];
	$memoria  = $dadosComputador[3];
	$numIp  = $dadosComputador[4];
	$numMac  = converteMaiuscula($dadosComputador[5]);
	$capHD  = $dadosComputador[6];
	$tipoHD  = $dadosComputador[7];
	$statusComp  = $dadosComputador[8];
	$obs  = converteMaiuscula($dadosComputador[9]);
	$respAltCadastro = "";
    $dataAltCadastro = "0000-00-00";
		
	if($numPatReitoria  == "")
		{
			$numPatReitoria  = null;
		}

			
	if($numPatrimonio == "")
		{
			$numPatrimonio = null;
		}


	//informaçoes do local	
	$idSetor = "";
	$nomeDivisao = $localComputador[0];
	$localizacao = $localComputador[1];
	$ramalComp = $localComputador[2];
	$respSetor = converteMaiuscula($localComputador[3]);
	$nomeLocal = converteMaiuscula($_POST['localComputador1']);
	
	//verificar se local existe
	$setorExisteDAO = new ControleCirDAO();
	foreach ($setorExisteDAO->VerificarSetor($nomeDivisao,$localizacao,$nomeLocal) as $local)
		{ 
			$verificaSetor = $local->idSetor;				          
		}
	  	
	echo "<br>verificaSetor => " . $verificaSetor . "<br>";
	
	if ($verificaSetor != 0)
		{	
			$idSetor = $verificaSetor;
			echo "<br>idSetor 01 => " . $idSetor . "<br>";
			$computador = new Computador($idComputador, $numCir, $numPatrimonio, $numPatReitoria, $nomeComputador, $dataCadastro,
			$_SESSION['nomeFuncionario'], $dataAltCadastro, $respAltCadastro, $sistemaOpera, $modelMaquina, $memoria, $numIp, $numMac, $capHD, 
			$tipoHD, $statusComp, $obs, $idFuncionario, $idSetor, $idTipoProcessador);					
			$computador->exibir();			
			$computadorDAO = new ControleCirDAO();
			$computadorDAO->CadastrarComp($computador);	

			echo "<br>idSetor 001 => " . $idSetor . "<br>";

			echo "<script type='text/javascript'>alert('Cadastro Realizado ! ');</script>";
			echo "<script>location = '../views/computadorCadastrar.php';</script>";   
		}
	else 
		{
			//PEGAR ID DA DIVISÃO
			$nomeTabela = "divisao"; 
			$opcao1 = "divisao"; 
			$valor1 = $nomeDivisao; 
			$divisaoDAO = new ControleCirDAO();
			foreach ($divisaoDAO->Verificar($nomeTabela, $opcao1, $valor1) as $divisao)
				{ 
					$idDivisao = $divisao->idDivisao;				          
				}	

			echo "<br>verificaDivisao => " . $idDivisao . "<br>";

			$local1 = new Setor($idSetor, $idDivisao, $localizacao, $ramalComp, $respSetor, $nomeLocal);			
			$local1->exibir();
			$local = new ControleCirDAO();	
			$local->CadastrarSetor($local1);

			echo "<br>idSetor 02 => " . $idSetor . "<br>";
			
			//session_start();
			$idSetor = $_SESSION['localid'];
			//$idSetor = 1;
			echo "<br>";
			$computador = new Computador($idComputador, $numCir, $numPatrimonio, $numPatReitoria, $nomeComputador, $dataCadastro,
			$_SESSION['nomeFuncionario'], $dataAltCadastro,  $respAltCadastro, $sistemaOpera, $modelMaquina, $memoria, $numIp, $numMac, $capHD, 
			$tipoHD, $statusComp, $obs, $idFuncionario, $idSetor, $idTipoProcessador);
			$computador->exibir();
			
			$computadorDAO = new ControleCirDAO();
			$computadorDAO->CadastrarComp($computador);		
			echo "<script type='text/javascript'>alert('Cadastro Realizado ! ');</script>";
		}
		

	//header("Location: ../views/computadorCadastrar.php");
?>
 
