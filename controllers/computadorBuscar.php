<?php
	include "../dao/DAO-controleCir.php";
	$op1 =  $_GET['action'];
	if ($op1 != 1 )  
		{
            header("Location: ../index.php");
		}
	$altHd = 0;
	$_SESSION['altHd'] = $altHd;
	//$_SESSION['capHd'] == "";
	//$capHd = array();    
    //$i=0;
    //$_SESSION['i'] = $i;
    //$_SESSION['antTipoHD'] = $capHd;

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
			//$idComputador = $comp->idComputador;
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
			$tipoHD =  unserialize($tipoHD);           
            $nomeUsuario = $comp->nomeUsuario;
			$statusComp = $comp->statusComp;
			$obs = $comp->obs;   			
            $idFuncionario = $comp->idFuncionario;
			$respCadastro = $comp->respCadastro;
			$idSetor = $comp->idSetor;
			$idTipoProcessador = $comp->idTipoProcessador;
			$setorDAO = new ControleCirDAO();
			foreach($setorDAO->Buscalocal($idSetor) as $Setor)
				{ 	
					$idDivisao = $Setor->idDivisao;
					$localizacao = $Setor->localizacao;
					$nomeLocal = $Setor->nomeLocal;
					$ramal = $Setor->ramal;
					$respSetor = $Setor->respSetor;	
				}

			$nomeTabela = "tipoProcessadores";
			$opcao1 = "idTipoProcessador";
			$processDAO = new ControleCirDAO();
			foreach($processDAO->Verificar($nomeTabela, $opcao1, $idTipoProcessador) as $proc)
				{ 	
					$desProcessador = $proc->descricao;
				}

			$nomeTabela = "divisao";
			$opcao1 = "idDivisao";
			$divisaoDAO = new ControleCirDAO();
			foreach($divisaoDAO->Verificar($nomeTabela, $opcao1, $idDivisao) as $div)
				{ 	
					$nomeDivisao = $div->divisao;
				}
		}
        
?>