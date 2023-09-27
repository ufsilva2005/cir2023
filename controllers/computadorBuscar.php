<?php
	include "../dao/DAO-controleCir.php";
	$op1 =  $_GET['action'];
	if ($op1 != 1 )  
		{
            header("Location: ../index.php");
		}
    $idComputador =  $_GET['id'];
    //$idComputador;
	$_SESSION['idCompAlt'] = $idComputador;     
    $nomeTabela = "computador";
    $opcao1 = "idComputador";
    $valor1 = $idComputador;

    //echo $idComputador;


	$compAltDAO = new ControleCirDAO();
	foreach($compAltDAO->Verificar($nomeTabela, $opcao1, $valor1) as $comp)
		{ 	
			$idComputador = $comp->idComputador;
			$numCir = $comp->numCir;
			$numPatrimonio = $comp->numPatrimonio;
            $numPatReitoria = $comp->numPatReitoria;
			$nomeComputador = $comp->nomeComputador;
			$dataCadastro = $comp->dataCadastro;   
            $respCadastro = $comp->respCadastro;
			$dataAltCadastro = $comp->dataAltCadastro;
			$respAltCadastro = $comp->respAltCadastro;
            $sistemaOpera = $comp->sistemaOpera;
			$modelMaquina = $comp->modelMaquina;
			$memoria = $comp->memoria;    
            $numIp = $comp->numIp;
			$numMac = $comp->numMac;
			$tipoHD = $comp->tipoHD;
            /*$tipoHD = new ControleCirDAO();   
			$nomeTabela = "material";
			$tipoOpcao = "idMaterial";								
			foreach ($tipoHD->ListarOpcao2($nomeTabela, $tipoOpcao, $tipoTonerBd) as $res)
				{
					$tipoToner = $res->descricao;
				}*/     
            $nomeUsuario = $comp->nomeUsuario;
			$statusComp = $comp->statusComp;
			$obs = $comp->obs;   
            $idFuncionario = $comp->idFuncionario;
			$idSetor = $comp->idSetor;
			$idTipoProcessador = $comp->idTipoProcessador;

			/*
			$statusImpressora = $comp->statusImpressora;
			$conexaoImp = $comp->conexaoImp;
			$modeloImpressoraBd = $comp->modeloImpressora;
			$modeloDAO = new ControleCirDAO();   
			$nomeTabela = "modeloImpressora";
			$tipoOpcao = "idModelo";								
			foreach ($modeloDAO->ListarOpcao($nomeTabela, $tipoOpcao, $modeloImpressoraBd) as $res)
				{
					$idModelo = $res->idModelo;
					$modeloImpressora = $res->modeloImpressora;
				}       
			$dataCadastroA = $comp->dataCadastro;	
			$respCadastro = $comp->respCadastro;
			$idFuncionario = $comp->idFuncionario;
			$obsImpressora = $comp->obsImpressora;
			$respAltCadastro = $comp->respAltCadastro;							
			$dataAltCadastro = $comp->dataAltCadastro;
            $idSetor = $comp->idSetor; 

			$setorDAO = new ControleCirDAO();
			foreach($setorDAO->Buscalocal($idSetor) as $Setor)
				{ 	
					$divisao1 = $Setor->divisao;
					$idDivisao1 = $Setor->idDivisao;
					$localizacao1 = $Setor->localizacao;
					$nomeLocal1 = $Setor->nomeLocal;
					$ramal1 = $Setor->ramal;
					$respSetComp1 = $Setor->respSetor;	
				}*/
		}
        
?>