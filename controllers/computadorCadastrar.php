<?php
	session_start();
	//include "../funcao/funcaoVerificar.php";
	//include "../dao/DAO-controleCir.php";
	//include "../models/class-setor.php";
	//include "../models/class-computador.php";
	
		
	//recebe dados da view
	//$DadosComputador = $_POST['DadosComputador'];
	//$LocalComputador = $_POST['LocalComputador'];
	//$dataCadastro    = $dataCadastro = formatarData($_SESSION['data']); 
	$tipoProcessador    = $_POST['listaProcessador'];
	//$respCadastro = $_SESSION['respCadastro'];
	//$idFuncionario = $_SESSION['idFuncionario'] ;

	//PEGAR ID DO RESPONSAVEL PELO CADASTRO
	/*$nomeTabela = "funcionario"; 
	$opcao1 = "nomeFuncionario"; 
	$valor1 = $respCadastro; 
	$responsavelDAO = new ControleCirDAO();
	foreach ($responsavelDAO->Verificar($nomeTabela, $opcao1, $valor1) as $responsavel)
		{ 
			$verificaResponsavel = $responsavel->idFuncionario;				          
		}
	if($verificaResponsavel == "")
		{
			$idFuncionario = 0;
		}*/

	echo "<br>tipoProcessador => " . $tipoProcessador;
/*
	//informacoes da maquina
	$idComputador = "";
	$numCir  = $_POST['numCir'];		
	$numPatReitoria  = $DadosComputador[0];
	$numPatrimonio  = $DadosComputador[1];
	$nomeComputador  = $_POST['nomeCir'];
	$sistemaOpera  = $DadosComputador[2];
	$modelMaquina =  $_POST['modelo'];
	$tipProcessador = $_POST['tipoProcessador'];
	$memoria  = $DadosComputador[3];
	$numIp  = $DadosComputador[4];
	$numMac  = $DadosComputador[5];
	$capHD  = $DadosComputador[6];
	$statusComp  = $DadosComputador[7];
	$obs  = converteMaiuscula($DadosComputador[8]);
	$respAltCadastro = "";
    $dataAltCadastro = "0000-00-00";
				
	//informaçoes do local	
	$idSetor = "";
	$nomeDivisao = $LocalComputador[0];
	$localizacao = $LocalComputador[1];
	$ramalComp = $LocalComputador[2];
	$respSetor = converteMaiuscula($LocalComputador[3]);
	$nomeLocal = converteMaiuscula($_POST['LocalComputador1']);

		
	//verificar se local existe
	$setorExisteDAO = new ControleCirDAO();
	foreach ($setorExisteDAO->VerificarSetor($nomeDivisao,$localizacao,$nomeLocal) as $local)
		{ 
			$verificaSetor = $local->idSetor;				          
		}
	  	
	//echo "<br>verificaSetor => " . $verificaSetor;
	
	if ($verificaSetor != 0)
		{	
			$idSetor = $verificaSetor;
			//echo "<br>idSetor => " . $idSetor . "<br>";
			$computador = new Computador($idComputador, $numCir, $numPatrimonio, $numPatReitoria, $nomeComputador, $dataCadastro,
			$respCadastro, $respAltCadastro, $dataAltCadastro, $sistemaOpera, $modelMaquina, $tipProcessador, $memoria, $numIp, $numMac, 
			$capHD, $statusComp, $obs, $idFuncionario, $idSetor);					
			//$computador->exibir();
			
			$computadorDAO = new ControleCirDAO();
			$computadorDAO->CadastrarComp($computador);	
			echo "<script type='text/javascript'>alert('Cadastro Realizado ! ');</script>";
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
			//echo "<br>verificaDivisao => " . $idDivisao . "<br>";

			$local1 = new Setor($idSetor, $idDivisao, $localizacao, $ramalComp, $respSetor, $nomeLocal);			
			$local1->exibir();
			$local = new ControleCirDAO();	
			$local->CadastrarSetor($local1);
			
			session_start();
			$idSetor = $_SESSION['localid'];
			//$idSetor = 1;

			$computador = new Computador($idComputador, $numCir, $numPatrimonio, $numPatReitoria, $nomeComputador, $dataCadastro,
			$respCadastro, $respAltCadastro, $dataAltCadastro, $sistemaOpera, $modelMaquina, $tipProcessador, $memoria, $numIp, $numMac, 
			$capHD, $statusComp, $obs, $idFuncionario, $idSetor);
			//$computador->exibir();
			
			$computadorDAO = new ControleCirDAO();
			$computadorDAO->CadastrarComp($computador);		
			echo "<script type='text/javascript'>alert('Cadastro Realizado ! ');</script>";
		}
		

	header("Location: ../views/cadastrarComputador.php");
*/
?>
 
