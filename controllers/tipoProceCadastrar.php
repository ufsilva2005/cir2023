<?php	
	session_start();	
	include "../funcao/funcao.php";
	include "../dao/DAO-controleCir.php";
	include "../models/class-modeloProce.php";

    $verificaProce = 0;
    $idModelo = 0;

	//recebe dados da view
    $tipoProcessador =  converteMaiuscula($_POST['tipoProcessador']);
    $statusModelo = "ativo";
    //echo "<br>tipoProcessador => " . $tipoProcessador . "<br>";
    //echo "<br>statusModelo => " . $statusModelo . "<br>";

    //verificar se PROCESSADOR existe
    $nomeTabela = "tipoProcessadores";
    $tipoOpcao = "descricao";
	$proceExisteDAO = new ControleCirDAO();
	foreach ($proceExisteDAO->ListarOpcao($nomeTabela, $tipoOpcao, $tipoProcessador)  as $proce)
		{ 
			$verificaProce = $proce->idTipoProcessador;				          
		}
				
	echo "<br>verificaProce => " . $verificaProce . "<br>";

    if($verificaProce == 0)
        {
            $modeloProce = new ModeloProce($idModelo, $tipoProcessador, $statusModelo);
            //echo "<br>dados processador <br>";		
            //$modeloProce->exibir();
            //echo "<br>";
            $modeloProceDAO = new ControleCirDAO();
            $modeloProceDAO->CadastrarTipoProce($modeloProce);
            header("Location: ../views/computadorCadastrarProce.php");
        }
    else
        {
            echo "<script type='text/javascript'>alert('ESTE PROCESSADOR JÁ ESTA CADASTRADO');</script>";
            echo "<script>location = '../views/computadorCadastrarProce.php';</script>";     
        }
?>