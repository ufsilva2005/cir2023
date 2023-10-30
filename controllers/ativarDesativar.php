<?php
	session_start();
	$tipoP = $_SESSION['tipoP'];
	$valorP = $_SESSION['valorP'];
	$atiDes = $_SESSION['atiDes'];
	$texto = "ALTERAÇÃO DE STATUS - ";
	//$_SESSION['idFuncionario'] = $idFuncionario;
	$funcionarioAltCadastro = $_SESSION['nomeFuncionario'];

	include "../dao/DAO-controleCir.php";
	include "../funcao/funcao.php";
	include "../models/class-historico.php";

	$op1 = $_GET['action'];
	$idImpressora = $_GET['id'];
	$dateAltCadastro = date('Y-m-d');

	if($op1 == 1 || $op1 == 3 || $op1 == 5)  
		{
            $op2 = $op1;
			$statusImpressora = "ativo";
			$hitorico1 = $texto . "STATUS ALTERADO DE INATIVO PARA => ". $statusImpressora . " \n";
		}
	elseif($op1 == 2 || $op1 == 4 || $op1 == 6)  
		{
            $op2 = $op1;
			$statusImpressora = "inativo";
			$hitorico1 = $texto . "STATUS ALTERADO DE ATIVO PARA => ". $statusImpressora . " \n";
		}
	else  
		{
            header("Location: ../template/menuPrincipal.php");  
		}

	//criar historico e salvar
    //nome dos arquivos historico
    $data2 = soNumero($dateAltCadastro);
    $hora = soNumero(date('H:i:s'));
    $nomeHist = "Imp" . $idImpressora . "D". $data2 . "h" . $hora ."F" . $_SESSION['idFuncionario'].".txt";
    $caminho = "../historico/";
    $desHist = $caminho . "hist-" . $nomeHist;
            
    $output2 = fopen($desHist, 'wb');
    //salva arquivo 
    fwrite($output2, $hitorico1);
    fclose($output2); 

	//echo "<br>hitorico => " . $hitorico;
	//echo "<br>desHist => " . $desHist;

	$idComputador = null;
    $historico = new Historico($idHistorico, $desHist, $dateAltCadastro, $funcionarioAltCadastro,  $idComputador,  $idImpressora, $_SESSION['idFuncionario']);
    echo "<br>dados  Historico<br>";		
    $historico->exibir();
    echo "<br>"; 
    $historicoDAO = new ControleCirDAO();
    $historicoDAO->HitoricoCadastrar($historico);
            
    $ativaDeativaDAO = new ControleCirDAO();  
    $ativaDeativaDAO->AtivaDesativa($idImpressora,$statusImpressora);
	//echo $_SESSION['tipoPesquisa'];
	

	if($op2 == 1 || $op2 == 2)
		{
			//echo "<br>op2 3 => " . $op2;
			$_SESSION['tipoP'] = $tipoP;
			$_SESSION['valorP'] = $valorP;
			header("Location: ../views/impressorasListar.php");     
		} 

	elseif($op2 == 3 || $op2 == 4)
		{
			//echo "<br>op2 4 => " . $op2;
			$_SESSION['tipoP1'] = $tipoP;
			$_SESSION['valorP1'] = $valorP;			
			header("Location: ../views/impressorasPesquisarResultado.php");
		}
	else
		{	
			header("Location: ../views/impressorasListarAtivas.php?action=$atiDes");
		}
?>