<?php
	session_start();
	include "../funcao/funcao.php";
	include "../dao/DAO-controleCir.php";
	include "../models/class-setor.php";
	include "../models/class-computador.php";	
		
	$capHd = array();    
    $i=0;
    $_SESSION['i'] = $i;
    $_SESSION['capHd'] = $capHd;

	//recebe dados da view
	$action =  $_GET['action'];
	$dadosComputador = $_POST['dadosComputador'];
	$localComputador = $_POST['localComputador'];
	$dataCadastro    = $dataCadastro = formatarData($_SESSION['data']); 	
	$respCadastro = $_SESSION['respCadastro'];
	$idFuncionario = $_SESSION['idFuncionario'] ;

	//informaçoes do local	
	$idSetor = "";
	$nomeDivisao = $localComputador[0];
	$localizacao = $localComputador[1];
	$ramalComp = $localComputador[2];
	$respSetor = converteMaiuscula($localComputador[3]);
	$nomeLocal = converteMaiuscula($_POST['localComputador1']);

	//informacoes da maquina
	$idComputador = "";
	$numCir  = $_POST['numCir'];		
	$numPatReitoria  = $dadosComputador[1];
	$numPatrimonio  = $dadosComputador[2];
	$nomeComputador  = $_POST['nomeCir'];
	$sistemaOpera  = $dadosComputador[3];
	$modelMaquina =  $_POST['modelo'];
	$idTipoProcessador = $_POST['listaProcessador'];
	$memoria  = $dadosComputador[4];
	$numIp  = $dadosComputador[5];
	$numMac  = converteMaiuscula($dadosComputador[6]);
	$statusComp  = "ativo";
	$nomeUsuario =  $_POST['nomeUsuario'];
	$obs  = converteMaiuscula($dadosComputador[0]);
	$respAltCadastro = "";
    $dataAltCadastro = "0000-00-00";

	//echo $action;

	if($action == 1)
		{
			$_SESSION['nomeDivisao'] = $nomeDivisao;
			$_SESSION['localizacao'] = $localizacao;
			$_SESSION['ramalComp'] = $ramalComp;
			$_SESSION['respSetor'] = $respSetor;
			$_SESSION['nomeLocal'] = $nomeLocal;
			$_SESSION['numCir'] = $numCir;
			$_SESSION['numPatReitoria'] = $numPatReitoria;
			$_SESSION['numPatrimonio'] = $numPatrimonio;
			$_SESSION['nomeComputador'] = $nomeComputador;
			$_SESSION['sistemaOpera'] = $sistemaOpera;
			$_SESSION['modelMaquina'] = $modelMaquina;
			$_SESSION['idTipoProcessador'] = $idTipoProcessador;
			$_SESSION['memoria'] = $memoria;
			$_SESSION['numIp'] = $numIp;
			$_SESSION['numMac'] = $numMac;
			$_SESSION['statusComp'] = $statusComp;
			$_SESSION['nomeUsuario'] = converteMaiuscula($nomeUsuario);
			$_SESSION['obs'] = $obs;

			header("Location: ../views/computadorCadastrar2.php");
		}
	else
		{
			echo "<br>" . $action;
			echo "<br>nomeDivisao => ". $_SESSION['nomeDivisao'];
			$capHd2 = $_SESSION['capHd1'];
            array_shift($capHd2);
            print_r($capHd2); 

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
			$nomeDivisao = 	$_SESSION['nomeDivisao'];
			$localizacao = $_SESSION['localizacao'];
			$ramalComp = $_SESSION['ramalComp'];
			$respSetor = $_SESSION['respSetor'];
			$nomeLocal = $_SESSION['nomeLocal'];

			echo "<br>nomeDivisao => " . $nomeDivisao;
			echo "<br>localizacao => " . $localizacao;
			echo "<br>nomeLocal => " . $nomeLocal;

			//verificar se local existe
			$setorExisteDAO = new ControleCirDAO();
			foreach ($setorExisteDAO->VerificarSetor($nomeDivisao,$localizacao,$nomeLocal) as $local)
				{ 
					$verificaSetor = $local->idSetor;				          
				}
				
			echo "<br>verificaSetor => " . $verificaSetor . "<br>";

			echo "<script type='text/javascript'>alert('Cadastro Realizado ! ');</script>";
			echo "<script>location = '../views/computadorCadastrar.php';</script>";   
		}




	//$capHd1  = $_GET['capHd'];
    //array_shift($capHd1);
    //print_r($capHd1);    

	//$capHd = $_SESSION['capHd'];
    //array_shift($capHd);
    //print_r($capHd);    

	/*
		
	


	
	if ($verificaSetor != 0)
		{	
			$idSetor = $verificaSetor;
			echo "<br>idSetor 01 => " . $idSetor . "<br>";
			$computador = new Computador($idComputador, $numCir, $numPatrimonio, $numPatReitoria, $nomeComputador, $dataCadastro,
			$_SESSION['nomeFuncionario'], $dataAltCadastro, $respAltCadastro, $sistemaOpera, $modelMaquina, $memoria, $numIp, $numMac, $capHD, 
			$tipoHD, $statusComp, $obs, $idFuncionario, $idSetor, $idTipoProcessador);					
			$computador->exibir();			
			//$computadorDAO = new ControleCirDAO();
			//$computadorDAO->CadastrarComp($computador);	

			echo "<br>idSetor 001 => " . $idSetor . "<br>";

			//echo "<script type='text/javascript'>alert('Cadastro Realizado ! ');</script>";
			//echo "<script>location = '../views/computadorCadastrar.php';</script>";   
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
			//$local = new ControleCirDAO();	
			//$local->CadastrarSetor($local1);

			echo "<br>idSetor 02 => " . $idSetor . "<br>";
			
			//session_start();
			$idSetor = $_SESSION['localid'];
			//$idSetor = 1;
			echo "<br>";
			$computador = new Computador($idComputador, $numCir, $numPatrimonio, $numPatReitoria, $nomeComputador, $dataCadastro,
			$_SESSION['nomeFuncionario'], $dataAltCadastro,  $respAltCadastro, $sistemaOpera, $modelMaquina, $memoria, $numIp, $numMac, $capHD, 
			$tipoHD, $statusComp, $obs, $idFuncionario, $idSetor, $idTipoProcessador);
			$computador->exibir();
			
			//$computadorDAO = new ControleCirDAO();
			//$computadorDAO->CadastrarComp($computador);		
			//echo "<script type='text/javascript'>alert('Cadastro Realizado ! ');</script>";
		}
		

	//header("Location: ../views/computadorCadastrar.php");
*/
?>
 
