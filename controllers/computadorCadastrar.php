<?php
	session_start();
	include "../funcao/funcao.php";
	//include "../dao/DAO-controleCir.php";
	//include "../models/class-setor.php";
	//include "../models/class-computador.php";
	
		
	//recebe dados da view
	$dadosComputador = $_POST['dadosComputador'];
	$localComputador = $_POST['localComputador'];
	$dataCadastro    = $dataCadastro = formatarData($_SESSION['data']); 	
	$respCadastro = $_SESSION['respCadastro'];
	$idFuncionario = $_SESSION['idFuncionario'] ;

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

	//informacoes da maquina
	$idComputador = "";
	$numCir  = $_POST['numCir'];		
	$numPatReitoria  = $dadosComputador[0];
	$numPatrimonio  = $dadosComputador[1];
	$nomeComputador  = $_POST['nomeCir'];
	$sistemaOpera  = $dadosComputador[2];
	$modelMaquina =  $_POST['modelo'];
	$tipoProcessador = $_POST['listaProcessador'];
	$memoria  = $dadosComputador[3];
	$numIp  = $dadosComputador[4];
	$numMac  = $dadosComputador[5];
	$capHD  = $dadosComputador[6];
	$tipoHD  = $dadosComputador[7];
	$statusComp  = $dadosComputador[8];
	$obs  = converteMaiuscula($dadosComputador[9]);
	$respAltCadastro = "";
    $dataAltCadastro = "0000-00-00";

	echo "<br>numCir => " . $numCir;	
	echo "<br>numPatReitoria => " . $numPatReitoria;	
	echo "<br>numPatrimonio => " . $numPatrimonio;
	echo "<br>nomeComputador => " . $nomeComputador;
	echo "<br>sistemaOpera => " . $sistemaOpera;	
	echo "<br>modelMaquina => " . $modelMaquina;	
	echo "<br>tipoProcessador => " . $tipoProcessador;
	echo "<br>memoria => " . $memoria;
	echo "<br>numIp => " . $numIp;	
	echo "<br>numMac => " . $numMac;	
	echo "<br>capHD => " . $capHD;
	echo "<br>tipoHD => " . $tipoHD;
	echo "<br>statusComp => " . $statusComp;
	echo "<br>obs => " . $obs;
	echo "<br>respAltCadastro => " . $respAltCadastro;
	echo "<br>dataAltCadastro => " . $dataAltCadastro;


		
	//informaçoes do local	
	$idSetor = "";
	$nomeDivisao = $localComputador[0];
	$localizacao = $localComputador[1];
	$ramalComp = $localComputador[2];
	$respSetor = converteMaiuscula($localComputador[3]);
	$nomeLocal = converteMaiuscula($_POST['localComputador1']);

	echo "<br>";
	echo "<br>idSetor => " . $idSetor;	
	echo "<br>nomeDivisao => " . $nomeDivisao;	
	echo "<br>localizacao => " . $localizacao;
	echo "<br>ramalComp => " . $ramalComp;
	echo "<br>respSetor => " . $respSetor;	
	echo "<br>nomeLocal => " . $nomeLocal;	

	/*	
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
 
