<?php	
	session_start();	
	include "../funcao/funcao.php";
	include "../dao/DAO-controleCir.php";
	include "../models/class-setor.php";
	include "../models/class-impressora.php";

	$idTipoTonerBd = array();

	//recebe dados da view
    $nomeImpressora =  converteMaiuscula($_POST['nomeImpressora']);
	$numSerie = converteMaiuscula($_POST['numSerie']);     
	$ipImpressora = $_POST['numIp'];
	$macImpressora =  converteMaiuscula($_POST['numMac']);  
	$colorida = $_POST['colorida0'];   
	$tipoToner1 = $_POST['tonner1'];  
	$tipoToner2 = $_POST['tonner2'];  
	$tipoToner3 = $_POST['tonner3'];  
	$tipoToner4 = $_POST['tonner4'];  
	$statusImpressora = $_POST['statusImp'];
	$conexaoImp = $_POST['conexaoImp'];
	$modeloImpressora = $_POST['modelo'];
	$dataCadastro = $dataCadastro = formatarData($_SESSION['data']);
	$idFuncionario = $_SESSION['idFuncionario'] ;
	$dataAltCadastro = "0000-00-00";
	$respAltCadastro = "";

	//Informações do Local da Impressora
	$dadosLocImp = $_POST['localImpressora']; 
	$nomeDivisao =  $dadosLocImp[0];
	$localizacao =  $dadosLocImp[1];
	$ramal =  $dadosLocImp[2];
	$respSetor =  converteMaiuscula($dadosLocImp[3]);
	$nomeLocal = converteMaiuscula($_POST['nomLocImpressora']);
	$obsImpressora =  $dadosLocImp[4];

	if($colorida == "não")
		{	
			$idTipoTonerBd = serialize($tipoToner1);
			//print_r ($idTipoTonerBd);
		}

	else
		{
			$idTipoTonerBd = serialize(array_merge($tipoToner1,$tipoToner2,$tipoToner3,$tipoToner4));
			//print_r ($idTipoTonerBd);
		}
	
	//verificar se local existe
	$setorExisteDAO = new ControleCirDAO();
	foreach ($setorExisteDAO->VerificarSetor($nomeDivisao,$localizacao,$nomeLocal) as $local)
		{ 
			$verificaSetor = $local->idSetor;				          
		}
	  	
	//echo "<br>verificaSetor => " . $verificaSetor;

	if ($verificaSetor != "")
        {
            $idSetor = $verificaSetor;
			//echo "<br>idSetor => " . $idSetor . "<br>";
            
            $impressora = new Impressora($idImpressora, $nomeImpressora,  $numSerie, $ipImpressora, $macImpressora, $idTipoTonerBd, 
			$colorida, $statusImpressora, $conexaoImp, $modeloImpressora, $dataCadastro, $_SESSION['nomeFuncionario'], $dataAltCadastro, 
			$respAltCadastro, $obsImpressora, $idFuncionario, $idSetor);
			//echo "<br>dados impressora <br>";		
			//$impressora->exibir();
			//echo "<br>";
			$impressoraDAO = new ControleCirDAO();
			$impressoraDAO->CadastrarImpre($impressora);
			
        }

	else
        {
            $nomeTabela = "divisao"; 
			$opcao1 = "divisao"; 
			$valor1 = $nomeDivisao; 
			$divisaoDAO = new ControleCirDAO();
			foreach ($divisaoDAO->Verificar($nomeTabela, $opcao1, $valor1) as $divisao)
				{ 
					$idDivisao = $divisao->idDivisao;				          
				}	

			//echo "<br>verificaDivisao => " . $idDivisao . "<br>";

			$local1 = new Setor($idSetor, $idDivisao, $localizacao, $ramal, $respSetor, $nomeLocal);	
			//echo "<br>";				
			//$local1->exibir();
			//echo "<br>";		
			$local = new ControleCirDAO();	
			$local->CadastrarSetor($local1);

			$idSetor = $_SESSION['localid'];
			//echo "<br>idSetor => " . $idSetor; 
			//echo "<br>nomeFuncionario => " . $_SESSION['nomeFuncionario'];

			
            $impressora = new Impressora($idImpressora, $nomeImpressora,  $numSerie, $ipImpressora, $macImpressora, $idTipoTonerBd, 
			$colorida, $statusImpressora, $conexaoImp, $modeloImpressora, $dataCadastro, $_SESSION['nomeFuncionario'], $dataAltCadastro, 
			$respAltCadastro, $obsImpressora, $idFuncionario, $idSetor);
			//echo "<br>";		
			//$impressora->exibir();
			//echo "<br>";		
			$impressoraDAO = new ControleCirDAO();
			$impressoraDAO->CadastrarImpre($impressora);
			
        }
	
	
	header("Location: ../views/impressorasCadastrar.php");    
?>