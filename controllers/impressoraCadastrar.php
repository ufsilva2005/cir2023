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
	//$tipoToner = $_POST['tonner'];   
	//$idTipoToner0 = serialize($tipoToner); 
	$tipoToner1 = $_POST['tonner1'];  
	$tipoToner2 = $_POST['tonner2'];  
	$tipoToner3 = $_POST['tonner3'];  
	$tipoToner4 = $_POST['tonner4'];  
	$statusImpressora = $_POST['statusImp'];
	$conexaoImp = $_POST['conexaoImp'];
	$modeloImpressora = $_POST['modelo'];
	$dataCadastro = $dataCadastro = formatarData($_SESSION['data']); 
	//$nomeFuncionario = $_SESSION['nomeFuncionario'];
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

	//print_r ($tipoToner);
	//echo "<br>";
	//print_r ($tipoToner1);
	//echo "<br>";
	//print_r ($tipoToner2);
	//echo "<br>";
	//print_r ($tipoToner3);
	//echo "<br>";
	//print_r ($tipoToner4);
	echo "<br>" . $colorida;
	//echo "<br>TESTE<br>";
	//print_r($idTipoToner0);
	//echo "<br>TESTE<br>";
	if($colorida == "não")
		{
			//$idTipoToner = $tipoToner; 
			//$idTipoToner1 = serialize($tipoToner);
			//print_r($idTipoToner1[0]);
			echo "<br> preto <br>";
			//print_r(serialize($idTipoToner[0]));
			
			$idTipoTonerBd = serialize($tipoToner1);
			print_r ($idTipoTonerBd);
			echo "<br> tipoToner6 <br>";
			print_r (unserialize($idTipoTonerBd));
			$teste0 = unserialize($idTipoTonerBd);
			echo "<br> tipoToner7 <br>";
			print_r ($teste0);
			$teste1 = $teste0[0];
			echo "<br> tipoToner8 <br>" . $teste1;

			//$idTipoTonerBd1 = serialize($tipoToner1); 
			//echo "<br>";
			//print_r ($idTipoTonerBd1);
		}

	else
		{
			echo "<br> colorida <br>";
			echo "<br> tipoToner1 <br>";
			print_r ($tipoToner1);
			echo "<br> tipoToner2 <br>";
			print_r ($tipoToner2);
			echo "<br> tipoToner3 <br>";
			print_r ($tipoToner3);
			echo "<br> tipoToner4 <br>";
			print_r ($tipoToner4);
			echo "<br> tipoToner5 <br>";
			$idTipoTonerBd = serialize(array_merge($tipoToner1,$tipoToner2,$tipoToner3,$tipoToner4));
			print_r ($idTipoTonerBd);
			echo "<br> tipoToner6 <br>";
			print_r ($teste0 = unserialize($idTipoTonerBd));
			$teste1 = $teste0[0];
			echo "<br> tipoToner8 <br>" . $teste1;
			$teste1 = $teste0[1];
			echo "<br> tipoToner8 <br>" . $teste1;
			$teste1 = $teste0[2];
			echo "<br> tipoToner8 <br>" . $teste1;
			$teste1 = $teste0[3];
			echo "<br> tipoToner8 <br>" . $teste1;
		}

	//a:4:{i:0;s:2:"32";i:1;s:0:"";i:2;s:0:"";i:3;s:0:"";}  $idExames = $_POST['tipoExames'];   
    //$tiposExames = serialize($idExames); 
    //a:1:{i:0;s:1:"1";}
	/*
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
			echo "<br>idSetor => " . $idSetor . "<br>";
            
            $impressora = new Impressora($idImpressora, $nomeImpressora,  $numSerie, $ipImpressora, $macImpressora, $tipoToner, 
            $statusImpressora, $conexaoImp, $modeloImpressora, $dataCadastro, $_SESSION['nomeFuncionario'], $dataAltCadastro, $respAltCadastro, $obsImpressora,
            $idFuncionario, $idSetor);
			echo "<br>dados impressora <br>";		
			$impressora->exibir();
			echo "<br>";
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
			echo "<br>";				
			$local1->exibir();
			echo "<br>";		
			$local = new ControleCirDAO();	
			$local->CadastrarSetor($local1);

			$idSetor = $_SESSION['localid'];
			echo "<br>idSetor => " . $idSetor; 
			echo "<br>nomeFuncionario => " . $_SESSION['nomeFuncionario'];

			
            $impressora = new Impressora($idImpressora, $nomeImpressora, $numSerie, $ipImpressora, $macImpressora, $tipoToner, 
            $statusImpressora, $conexaoImp, $modeloImpressora, $dataCadastro, $_SESSION['nomeFuncionario'], $dataAltCadastro, $respAltCadastro, $obsImpressora,
            $idFuncionario, $idSetor);
			echo "<br>";		
			$impressora->exibir();
			echo "<br>";		
			$impressoraDAO = new ControleCirDAO();
			$impressoraDAO->CadastrarImpre($impressora);
			
        }
	
	
	//header("Location: ../views/impressorasCadastrar.php");
    */
?>