<?php
	session_start();
	include "../funcao/funcao.php";
	include "../dao/DAO-controleCir.php";
	include "../models/class-setor.php";
	include "../models/class-computador.php";	
		
	/*$capHd = array();    
    $i=0;
    $_SESSION['i'] = $i;
    $_SESSION['capHd'] = $capHd;*/

	$aux = 0;
	$auxLocal = 0;
	$hitorico = "";

	//recebe dados da view
	$action =  $_GET['action'];
	$dadosComputador = $_POST['dadosComputador'];
	$localComputador = $_POST['localComputador'];
	$dataCadastro    = $dataCadastro = formatarData($_SESSION['data']); 	
	$respCadastro = $_SESSION['respCadastro'];

	//informações do local	
	$idSetor = "";
	$divisaoAlt = $localComputador[0];
	$localizacaoAlt = $localComputador[1];
	$ramalCompAlt = soNumero($localComputador[2]);
	$respSetorAlt = converteMaiuscula($localComputador[3]);
	$nomeLocalAlt = converteMaiuscula($_POST['localComputador1']);

	//informações novas da maquina
	//$idComputador = "";
	$numCirAltAlt  = $_POST['numCirAlt'];		
	$numPatReitoriaAlt  = $dadosComputador[1];
	$numPatrimonioAlt  = $dadosComputador[2];
	$nomeComputadorAlt = $_POST['nomeCir'];
	$sistemaOperaAlt  = $dadosComputador[3];
	$modelMaquinaAlt =  converteMaiuscula($_POST['modelo']);
	$idTipoProcessadorAlt = $_POST['listaProcessador'];
	$memoriaAlt  = $dadosComputador[4];
	$numIpAlt  = $dadosComputador[5];
	$numMacAlt  = converteMaiuscula($_POST['numMac']);
   	$altHd = $_POST['altHd'];
	$nomeUsuarioAlt =  converteMaiuscula($_POST['nomeUsuario']);
	$obs  = converteMaiuscula($dadosComputador[0]);
	$respAltCadastro = $_SESSION['nomeFuncionario'];
    $dataAltCadastro = $_SESSION['data'];

	echo "<br>informações atuais da maquina";
	echo "<br>" . $nomenumIpAlt;
	echo "<br>" . $localizacaoAlt;
	echo "<br>" . $ramalCompAlt;
	echo "<br>" . $respSetorAlt;
	echo "<br>" . $nomeLocalAlt;
	echo "<br>" . $numCirAlt;
	echo "<br>" . $numPatReitoriaAlt;
	echo "<br>" . $numPatrimonioAlt;
	echo "<br>" . $nomeComputadorAlt;
	echo "<br>" . $sistemaOperaAlt;
	echo "<br>" . $modelMaquinaAlt;
	echo "<br>" . $idTipoProcessadorAlt;
	echo "<br>" . $memoriaAlt;
	echo "<br>" . $numIpAlt;
	echo "<br>" . $numMacAlt;
	echo "<br>" . $altHd;
	echo "<br>" . $nomeUsuarioAlt;
	echo "<br>" . $obs;
	echo "<br>" . $respAltCadastro;
	echo "<br>" . $dataAltCadastro;


	//informações antigas da maquina
	echo "<br>informações antigas da maquina";
	echo "<br>" . $_SESSION['idCompAlt'];
	echo "<br>" . $_SESSION['antDivisao']; 
	echo "<br>" . $_SESSION['antLocalizacao']; 
	echo "<br>" . $_SESSION['antRamal']; 
	echo "<br>" . $_SESSION['antRespSetor'];
	echo "<br>" . $_SESSION['antNomeLocal']; 
	echo "<br>" . $_SESSION['antObs']; 
	echo "<br>" . $_SESSION['antnumCir']; 
	echo "<br>" . $_SESSION['antNumPatReitoria']; 
	echo "<br>" . $_SESSION['antNumPatrimonio']; 
	echo "<br>" . $_SESSION['antNomeComputador']; 
	echo "<br>" . $_SESSION['antSistemaOpera']; 
	echo "<br>" . $_SESSION['antModelMaquina']; 
	echo "<br>" . $_SESSION['antIdTipoProcessador']; 
	echo "<br>" . $_SESSION['antMemoria']; 
	echo "<br>" . $_SESSION['antNumIp']; 
	echo "<br>" . $_SESSION['antNumMac']; 
	echo "<br>" . $_SESSION['antNomeUsuario']; 	
	echo "<br>" ;
	print_r($_SESSION['antTipoHD']); 
	

	//verificar se houve alterações nos dados
	  if ($numCirAlt == "" || $numCirAlt ==  $_SESSION['antnumCir']) 
        {
            $numCirBd =  $_SESSION['antnumCir']; 
        }
    else
        {
            $numCirBd = $numCirAlt;  
            $aux++;
            $hitorico .= 'Nº DO COMPUTADOR ALTERADO DE: '. $_SESSION['antnumCir'] .' PARA => '. $numCirbD . ' \n';
        }

    if ($numPatReitoriaAlt == "" || $numPatReitoriaAlt == $_SESSION['antNumPatReitoria']) 
        {
            $numPatReitoriaBd = $_SESSION['antNumPatReitoria'];
        }   
     else
        {
            $numPatReitoriaBd = $numPatReitoriaAlt;  
            $aux++;
            $hitorico .= 'Nº DE PATRIMÔNIO DA RIETORIA ALTERADO DE: '. $_SESSION['antNumPatReitoria'].' PARA => '. $numPatReitoriaBd . ' \n';
        }

    if ($numPatrimonioAlt == "" || $numPatrimonioAlt == $_SESSION['antNumPatrimonio'])
        {
            $numPatrimonioBd = $_SESSION['antNumPatrimonio'];
        }
    else
        {
            $numPatrimonioBd = $numPatrimonioAlt;  
            $aux++;
            $hitorico .= 'Nº PATRIMÔNIO DO HU ALTERADO DE: '. $_SESSION['antNumPatrimonio'] .' PARA => '. $numPatrimonioBd . ' \n';
        }

    if ($nomeComputadorAlt == "" || $nomeComputadorAlt == $_SESSION['antNomeComputador'])
        {
            $nomeComputadorBd = $_SESSION['antNomeComputador'];
        }
    else
        {
            $nomeComputadorBd = $nomeComputadorAlt;  
            $aux++;
            $hitorico .= 'NOME DO COMPUTADOR ALTERADO DE: '. $_SESSION['antNomeComputador'] .' PARA => '. $nomeComputadorBd . ' \n';
        }
 
    if ($sistemaOperaAlt == "" || $sistemaOperaAlt == $_SESSION['antSistemaOpera']) 
        {
            $sistemaOperaBd = $_SESSION['antSistemaOpera'];
        }
    else
        {
            $sistemaOperaBd = $sistemaOperaAlt; 
            $aux++;
            $hitorico .= 'SISTEMA OPERACIONAL ALTERADO DE: '. $_SESSION['antSistemaOpera'] .' PARA => '. $sistemaOperaBd . ' \n';
        }

    if ($modelMaquinaAlt == "" || $modelMaquinaAlt == $_SESSION['antModelMaquina']) 
        {
            $modelMaquinaBd = $_SESSION['antModelMaquina'];
        }   
     else
        {
            $modelMaquinaBd = $modelMaquinaAlt;  
            $aux++;
            $hitorico .= 'MODELO DO COMPUTADOR ALTERADO DE: '. $_SESSION['antModelMaquina'] .' PARA => '. $modelMaquinaBd . ' \n';
        }

      if ($idTipoProcessadorAlt == "" || $idTipoProcessadorAlt == $_SESSION['antIdTipoProcessador'] ) 
        {
            $idTipoProcessadorBd = $_SESSION['antIdTipoProcessador'];
        }   
     else
        {
            $idTipoProcessadorBd = $idTipoProcessadorAlt;  
            $aux++;
            $hitorico .= 'TIPO DE PROCESSADOR ALTERADO DE: '. $_SESSION['antIdTipoProcessador']  .' PARA => '. $idTipoProcessadorBd . ' \n';
        }

    if ($memoriaAlt == "" || $memoriaAlt == $_SESSION['antMemoria'])
        {
            $memoriaBd = $_SESSION['antMemoria'];
        }
    else
        {
            $memoriaBd = $memoriaAlt;        
            $aux++;
            $hitorico .= 'MEMÓRIA DA COMPUTADOR ALTERADA DE: '. $_SESSION['antMemoria'] .' PARA => '. $memoriaBd . ' \n';
        }

    if ($numIpAlt == "" || $numIpAlt == $_SESSION['antNumIp'])
        {
            $numIpBd = $_SESSION['antNumIp'];
        }
    else
        {
            $numIpBd = $numIpAlt;  
            $auxLocal++;
            $hitorico .= 'Nº IP DO COMPUTADOR ALTERADO DE: '. $_SESSION['antNumIp'] .' PARA => '. $numIpBd . ' \n';
        }

	if ($numMacAlt == "" || $numMacAlt == $_SESSION['antNumMac'])
        {
            $numMacBd = $_SESSION['antNumMac'];
        }
    else
        {
            $numMacBd = $numMacAlt;  
            $auxLocal++;
            $hitorico .= 'Nº MAC ALTERADO DE: '. $_SESSION['antNumMac'] .' PARA => '. $numMacBd . ' \n';
        }

	if ($nomeUsuarioAlt == "" || $nomeUsuarioAlt == $_SESSION['antNomeUsuario'])
			{
				$nomeUsuarioBd = $_SESSION['antNomeUsuario'];
			}
    else
        {
            $nomeUsuarioBd = $nomeUsuarioAlt;  
            $auxLocal++;
            $hitorico .= 'NOME DO USUÁRIO ALTERADO DE: '. $_SESSION['antNomeUsuario'] .' PARA => '. $nomeUsuarioBd . ' \n';
        }

	//local
    if ($divisaoAlt == "" || $divisaoAlt == $_SESSION['antDivisao'])
        {
            $divisaoBd = $_SESSION['antDivisao'];
        }
    else
        {
            $divisaoBd = $divisaoAlt;  
            $divisao0DAO = new ControleCirDAO();   
            $nomeTabela = "divisao";
            $tipoOpcao = "idDivisao";
            foreach ($divisao0DAO->ListarOpcao2($nomeTabela, $tipoOpcao, $_SESSION['antDivisao']) as $res)
                {
                    $descricaoAnt = $res->divisao;
                }
            $divisao1DAO = new ControleCirDAO();   
            foreach ($divisao1DAO->ListarOpcao2($nomeTabela, $tipoOpcao, $divisaoBd) as $res)
                {
                    $descricaoAlt = $res->divisao;
                }	

            $auxLocal++;
            $hitorico .= 'DIVSÃO DO COMPUTADOR ALTERADO DE: '. $descricaoAnt .' PARA => '. $descricaoAlt . ' \n';
        }
       
    if ($localizacaoAlt == "" || $localizacaoAlt == $_SESSION['antLocalizacao']) 
        {
            $localizacaoBd = $_SESSION['antLocalizacao'];
        }
    else
        {
            $localizacaoBd = $localizacaoAlt;  
            $auxLocal++;
            $hitorico .= 'LOCAL ALTERADO DE: '. $_SESSION['antLocalizacao'] .' PARA => '. $localizacaoBd . ' \n';
        }

    if ($ramalCompAlt == "" || $ramalCompAlt == $_SESSION['antRamal']) 
        {
            $ramalBd = $_SESSION['antRamal'];
        }   
     else
        {
            $ramalBd = $ramalCompAlt;  
            $auxLocal++;
            $hitorico .= 'RAMAL ALTERADO DE: '. $_SESSION['antRamal'] .' PARA => '. $ramalBd . ' \n';
        }

    if ($respSetorAlt == "" || $respSetorAlt == $_SESSION['antRespSetor'])
        {
            $respSetBd = $_SESSION['antRespSetor'];
        }
    else
        {
            $respSetBd = $respSetorAlt;  
            $auxLocal++;
            $hitorico .= 'RESPONSÁVEL PELO SETOR ALTERADO DE: '. $_SESSION['antRespSetor'] .' PARA => '. $respSetBd . ' \n';
        }

    if ($nomeLocalAlt == "" || $nomeLocalAlt == $_SESSION['antNomeLocal'])
        {
            $nomeLocalBd = $_SESSION['antNomeLocal'];
        }
    else
        {
            $nomeLocalBd = $nomeLocalAlt;  
            $auxLocal++;
            $hitorico .= 'NOME DO LOCAL ALTERADO DE: '. $_SESSION['antNomeLocal'] .' PARA => '. $nomeLocalBd . ' \n';
        }

	//echo "<br>aux =>" . $aux;
	//echo "<br>auxLocal =>" . $auxLocal;
	//echo "<br>altHd => " . $altHd; 
	echo "<br>hitorico =>" . $hitorico;

	if($aux == 0 && $auxLocal == 0 && $altHd == 0)
		{
			$idComp = $_SESSION['idCompAlt'];
			echo "<script type='text/javascript'>alert('NENHUMA ALTERAÇÃO EFETUADA');</script>";
            echo "<script>location = '../views/computadorAlterar.php?action=1&id=$idComp';</script>";     
		}

	elseif($aux == 0 && $auxLocal == 0 && $altHd == 1)
		{
			$idComp = $_SESSION['idCompAlt'];
			echo "<br>altHd => " . $altHd; 
			echo "<br>aux => " . $aux; 
			echo "<br>auxLocal => " . $auxLocal;     
		}
	elseif($aux == 0 && $auxLocal == 0 && $altHd == 2)
		{
			$idComp = $_SESSION['idCompAlt'];
			echo "<br>altHd => " . $altHd;
			echo "<br>aux => " . $aux; 
			echo "<br>auxLocal => " . $auxLocal;  
		}
	elseif($aux != 0 || $auxLocal != 0 && $altHd == 1)
		{
			$idComp = $_SESSION['idCompAlt'];
			echo "<br>altHd => " . $altHd;  
			echo "<br>aux => " . $aux; 
			echo "<br>auxLocal => " . $auxLocal;    
		}
	elseif($aux != 0 || $auxLocal != 0 && $altHd == 2)
		{
			$idComp = $_SESSION['idCompAlt'];
			echo "<br>altHd => " . $altHd; 
			echo "<br>aux => " . $aux; 
			echo "<br>auxLocal => " . $auxLocal;     
		}
	else
		{
			echo "<script type='text/javascript'>alert('error');</script>";
			echo "<script>location = '../index.php';</script>";    
		}

/*	
	if($action == 1)
		{
			$_SESSION['nomeDivisao'] = $nomeDivisao;
			$_SESSION['localizacao'] = $localizacao;
			$_SESSION['ramalComp'] = $ramalComp;
			$_SESSION['respSetor'] = $respSetor;
			$_SESSION['nomeLocal'] = $nomeLocal;
			$_SESSION['numCirAlt'] = $numCirAlt;
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
			$_SESSION['nomeUsuario'] = $nomeUsuario;
			$_SESSION['obs'] = $obs;

			header("Location: ../views/computadorCadastrar2.php");
		}
	else
		{
			//echo "<br>nomeDivisao => ". $_SESSION['nomeDivisao'];
			$capHd2 = $_SESSION['capHd1'];
            array_shift($capHd2);
            //print_r($capHd2); 

			$tipoHD = serialize($capHd2); 
			
			//informaçoes do local	
			$idSetor = "";
			$nomeDivisao = 	$_SESSION['nomeDivisao'];
			$localizacao = $_SESSION['localizacao'];
			$ramalComp = $_SESSION['ramalComp'];
			$respSetor = $_SESSION['respSetor'];
			$nomeLocal = $_SESSION['nomeLocal'];

			//informações do computador
			$numCirAlt = $_SESSION['numCirAlt'];
			$numPatrimonio = $_SESSION['numPatrimonio']; 
			$numPatReitoria = $_SESSION['numPatReitoria']; 
			$nomeComputador = $_SESSION['nomeComputador']; 
			$dataAltCadastro = "0000-00-00"; 
			$respAltCadastro = ""; 
			$sistemaOpera = $_SESSION['sistemaOpera']; 
			$modelMaquina = $_SESSION['modelMaquina']; 
			$memoria = $_SESSION['memoria']; 
			$numIp = $_SESSION['numIp']; 
			$numMac = $_SESSION['numMac']; 
			$nomeUsuario = $_SESSION['nomeUsuario'];
			$statusComp = $_SESSION['statusComp']; 
			$obs = $_SESSION['obs']; 			
			$idFuncionario = $_SESSION['idFuncionario'] ;
			//$idSetor = $_SESSION['numCirAlt']; 
			$idTipoProcessador = $_SESSION['idTipoProcessador']; 

			if($numPatReitoria  == "")
				{
					$numPatReitoria  = null;
				}
					
			if($numPatrimonio == "")
				{
					$numPatrimonio = null;
				}


			//verificar se local existe
			$setorExisteDAO = new ControleCirDAO();
			foreach ($setorExisteDAO->VerificarSetor($nomeDivisao,$localizacao,$nomeLocal) as $local)
				{ 
					$verificaSetor = $local->idSetor;				          
				}
				
			//echo "<br>verificaSetor => " . $verificaSetor . "<br>";

			if ($verificaSetor != 0)
				{	
					$idSetor = $verificaSetor;
					//echo "<br>idSetor 01 => " . $idSetor . "<br>";
					$computador = new Computador($idComputador, $numCirAlt, $numPatrimonio, $numPatReitoria, $nomeComputador, $dataCadastro,
					$_SESSION['nomeFuncionario'], $dataAltCadastro, $respAltCadastro, $sistemaOpera, $modelMaquina, $memoria, $numIp, $numMac, 
					$tipoHD, $nomeUsuario, $statusComp, $obs, $idFuncionario, $idSetor, $idTipoProcessador);					
					//$computador->exibir();			
					$computadorDAO = new ControleCirDAO();
					$computadorDAO->CadastrarComp($computador);	

					//echo "<br>idSetor 001 => " . $idSetor . "<br>";

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

					//echo "<br>verificaDivisao => " . $idDivisao . "<br>";

					$local1 = new Setor($idSetor, $idDivisao, $localizacao, $ramalComp, $respSetor, $nomeLocal);			
					//$local1->exibir();
					$local = new ControleCirDAO();	
					$local->CadastrarSetor($local1);

					//echo "<br>idSetor 02 => " . $idSetor . "<br>";
					
					//session_start();
					$idSetor = $_SESSION['localid'];
					//$idSetor = 1;
					//echo "<br>";
					$computador = new Computador($idComputador, $numCirAlt, $numPatrimonio, $numPatReitoria, $nomeComputador, $dataCadastro,
					$_SESSION['nomeFuncionario'], $dataAltCadastro, $respAltCadastro, $sistemaOpera, $modelMaquina, $memoria, $numIp, $numMac, 
					$tipoHD, $nomeUsuario, $statusComp, $obs, $idFuncionario, $idSetor, $idTipoProcessador);
					//$computador->exibir();
					
					$computadorDAO = new ControleCirDAO();
					$computadorDAO->CadastrarComp($computador);		
					echo "<script type='text/javascript'>alert('Cadastro Realizado ! ');</script>";
					echo "<script>location = '../views/computadorCadastrar.php';</script>";   
				}

			echo "<script type='text/javascript'>alert('Cadastro Realizado ! ');</script>";
			echo "<script>location = '../views/computadorCadastrar.php';</script>";   
	//header("Location: ../views/computadorCadastrar.php");*/
?>
 
