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
	//$_SESSION['altHd'] = 0;
	//$altHd = 0;

	//recebe dados da view
	//$action =  $_GET['action'];
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
	//$idComp = "";
	$numCirAlt  = $_POST['numCir'];		
	$numPatReitoriaAlt  = $dadosComputador[1];
	$numPatrimonioAlt  = $dadosComputador[2];
	$nomeComputadorAlt = $_POST['nomeCir'];
	$sistemaOperaAlt  = $dadosComputador[3];
	$modelMaquinaAlt =  converteMaiuscula($_POST['modelo']);
	$idTipoProcessadorAlt = $_POST['listaProcessador'];
	$memoriaAlt  = $dadosComputador[4];
	$numIpAlt  = $dadosComputador[5];
	$numMacAlt  = converteMaiuscula($_POST['numMac']);
   	//$altHd = 1;
	//$altHd = $_POST['altHd'];
	$nomeUsuarioAlt =  converteMaiuscula($_POST['nomeUsuario']);
	$obs  = converteMaiuscula($dadosComputador[0]);
	$respAltCadastro = $_SESSION['nomeFuncionario'];
    $dataAltCadastro = $_SESSION['data'];

	//verificar se houve alterações nos dados
	  if ($numCirAlt == "" || $numCirAlt ==  $_SESSION['antNumCir']) 
        {
            $numCirBd =  $_SESSION['antNumCir']; 
			$_SESSION['numCir'] = $numCirBd;
        }
    else
        {
            $numCirBd = $numCirAlt;  
			$_SESSION['numCir'] = $numCirBd;
            $aux++;
            $hitorico .= 'Nº DO COMPUTADOR ALTERADO DE: '. $_SESSION['antNumCir'] .' PARA => '. $numCirbD . ' \n';
        }

    if ($numPatReitoriaAlt == "" || $numPatReitoriaAlt == $_SESSION['antNumPatReitoria']) 
        {
            $numPatReitoriaBd = $_SESSION['antNumPatReitoria'];
			$_SESSION['numPatReitoria'] = $numPatReitoriaBd;
        }   
     else
        {
            $numPatReitoriaBd = $numPatReitoriaAlt;  
			$_SESSION['numPatReitoria'] = $numPatReitoriaBd;
            $aux++;
            $hitorico .= 'Nº DE PATRIMÔNIO DA RIETORIA ALTERADO DE: '. $_SESSION['antNumPatReitoria'].' PARA => '. $numPatReitoriaBd . ' \n';
        }

    if ($numPatrimonioAlt == "" || $numPatrimonioAlt == $_SESSION['antNumPatrimonio'])
        {
            $numPatrimonioBd = $_SESSION['antNumPatrimonio'];
			$_SESSION['numPatrimonio'] = $numPatrimonioBd;
        }
    else
        {
            $numPatrimonioBd = $numPatrimonioAlt;  
			$_SESSION['numPatrimonio'] = $numPatrimonioBd;
            $aux++;
            $hitorico .= 'Nº PATRIMÔNIO DO HU ALTERADO DE: '. $_SESSION['antNumPatrimonio'] .' PARA => '. $numPatrimonioBd . ' \n';
        }

    if ($nomeComputadorAlt == "" || $nomeComputadorAlt == $_SESSION['antNomeComputador'])
        {
            $nomeComputadorBd = $_SESSION['antNomeComputador'];
			$_SESSION['nomeComputador'] = $nomeComputadorBd;
        }
    else
        {
            $nomeComputadorBd = $nomeComputadorAlt;  
			$_SESSION['nomeComputador'] = $nomeComputadorBd;
            $aux++;
            $hitorico .= 'NOME DO COMPUTADOR ALTERADO DE: '. $_SESSION['antNomeComputador'] .' PARA => '. $nomeComputadorBd . ' \n';
        }
 
    if ($sistemaOperaAlt == "" || $sistemaOperaAlt == $_SESSION['antSistemaOpera']) 
        {
            $sistemaOperaBd = $_SESSION['antSistemaOpera'];
			$_SESSION['sistemaOpera'] = $sistemaOperaBd;
        }
    else
        {
            $sistemaOperaBd = $sistemaOperaAlt; 
			$_SESSION['sistemaOpera'] = $sistemaOperaBd;
            $aux++;
            $hitorico .= 'SISTEMA OPERACIONAL ALTERADO DE: '. $_SESSION['antSistemaOpera'] .' PARA => '. $sistemaOperaBd . ' \n';
        }

    if ($modelMaquinaAlt == "" || $modelMaquinaAlt == $_SESSION['antModelMaquina']) 
        {
            $modelMaquinaBd = $_SESSION['antModelMaquina'];
			$_SESSION['modelMaquina'] = $modelMaquinaBd;
        }   
     else
        {
            $modelMaquinaBd = $modelMaquinaAlt;  
			$_SESSION['modelMaquina'] = $modelMaquinaBd;
            $aux++;
            $hitorico .= 'MODELO DO COMPUTADOR ALTERADO DE: '. $_SESSION['antModelMaquina'] .' PARA => '. $modelMaquinaBd . ' \n';
        }

      if ($idTipoProcessadorAlt == "" || $idTipoProcessadorAlt == $_SESSION['antIdTipoProcessador'] ) 
        {
            $idTipoProcessadorBd = $_SESSION['antIdTipoProcessador'];
			$_SESSION['idTipoProcessador'] = $idTipoProcessadorBd;
        }   
     else
        {
            $idTipoProcessadorBd = $idTipoProcessadorAlt;  
			$_SESSION['idTipoProcessador'] = $idTipoProcessadorBd;
            $aux++;
            $hitorico .= 'TIPO DE PROCESSADOR ALTERADO DE: '. $_SESSION['antIdTipoProcessador']  .' PARA => '. $idTipoProcessadorBd . ' \n';
        }

    if ($memoriaAlt == "" || $memoriaAlt == $_SESSION['antMemoria'])
        {
            $memoriaBd = $_SESSION['antMemoria'];
			$_SESSION['memoria'] = $memoriaBd; 
        }
    else
        {
            $memoriaBd = $memoriaAlt;   
			$_SESSION['memoria'] = $memoriaBd;     
            $aux++;
            $hitorico .= 'MEMÓRIA DA COMPUTADOR ALTERADA DE: '. $_SESSION['antMemoria'] .' PARA => '. $memoriaBd . ' \n';
        }

    if ($numIpAlt == "" || $numIpAlt == $_SESSION['antNumIp'])
        {
            $numIpBd = $_SESSION['antNumIp'];
			$_SESSION['numIp'] = $numIpBd;
        }
    else
        {
            $numIpBd = $numIpAlt;  
			$_SESSION['numIp'] = $numIpBd;
            $auxLocal++;
            $hitorico .= 'Nº IP DO COMPUTADOR ALTERADO DE: '. $_SESSION['antNumIp'] .' PARA => '. $numIpBd . ' \n';
        }

	if ($numMacAlt == "" || $numMacAlt == $_SESSION['antNumMac'])
        {
            $numMacBd = $_SESSION['antNumMac'];
			$_SESSION['numMac'] = $numMacBd;
        }
    else
        {
            $numMacBd = $numMacAlt;  
			$_SESSION['numMac'] = $numMacBd;
            $auxLocal++;
            $hitorico .= 'Nº MAC ALTERADO DE: '. $_SESSION['antNumMac'] .' PARA => '. $numMacBd . ' \n';
        }

	if ($nomeUsuarioAlt == "" || $nomeUsuarioAlt == $_SESSION['antNomeUsuario'])
			{
				$nomeUsuarioBd = $_SESSION['antNomeUsuario'];
				$_SESSION['nomeUsuario'] = $nomeUsuarioBd;
			}
    else
        {
            $nomeUsuarioBd = $nomeUsuarioAlt;  
			$_SESSION['nomeUsuario'] = $nomeUsuarioBd;
            $auxLocal++;
            $hitorico .= 'NOME DO USUÁRIO ALTERADO DE: '. $_SESSION['antNomeUsuario'] .' PARA => '. $nomeUsuarioBd . ' \n';
        }

	
	//local
    if ($divisaoAlt == "" || $divisaoAlt == $_SESSION['antDivisao'])
        {
            $divisaoBd = $_SESSION['antDivisao'];
			$_SESSION['idDivisao'] = $divisaoBd;
        }
    else
        {
            $divisaoBd = $divisaoAlt;  
           	$_SESSION['idDivisao'] = $divisaoBd;

			$divisao0DAO = new ControleCirDAO();   
            $nomeTabela = "divisao";
            $tipoOpcao = "idDivisao";
            foreach ($divisao0DAO->ListarOpcao($nomeTabela, $tipoOpcao, $_SESSION['antDivisao']) as $res)
                {
                    $descricaoAnt = $res->divisao;
                }
            $divisao1DAO = new ControleCirDAO();   
            foreach ($divisao1DAO->ListarOpcao($nomeTabela, $tipoOpcao, $divisaoBd) as $res)
                {
                    $descricaoAlt = $res->divisao;
                }	

			$auxLocal++;
            $hitorico .= 'DIVSÃO DO COMPUTADOR ALTERADO DE: '. $descricaoAnt .' PARA => '. $descricaoAlt . ' \n';
        }
       
    if ($localizacaoAlt == "" || $localizacaoAlt == $_SESSION['antLocalizacao']) 
        {
            $localizacaoBd = $_SESSION['antLocalizacao'];
			$_SESSION['localizacao'] = $localizacaoBd;
        }
    else
        {
            $localizacaoBd = $localizacaoAlt;  
			$_SESSION['localizacao'] = $localizacaoBd;
            $auxLocal++;
            $hitorico .= 'LOCAL ALTERADO DE: '. $_SESSION['antLocalizacao'] .' PARA => '. $localizacaoBd . ' \n';
        }

    if ($ramalCompAlt == "" || $ramalCompAlt == $_SESSION['antRamal']) 
        {
            $ramalBd = $_SESSION['antRamal'];
			$_SESSION['ramalComp'] = $ramalBd;
        }   
     else
        {
            $ramalBd = $ramalCompAlt;  
			$_SESSION['ramalComp'] = $ramalBd;
            $auxLocal++;
            $hitorico .= 'RAMAL ALTERADO DE: '. $_SESSION['antRamal'] .' PARA => '. $ramalBd . ' \n';
        }

    if ($respSetorAlt == "" || $respSetorAlt == $_SESSION['antRespSetor'])
        {
            $respSetBd = $_SESSION['antRespSetor'];
			$_SESSION['respSetor'] = $respSetBd;
        }
    else
        {
            $respSetBd = $respSetorAlt; 
			$_SESSION['respSetor'] = $respSetBd; 
            $auxLocal++;
            $hitorico .= 'RESPONSÁVEL PELO SETOR ALTERADO DE: '. $_SESSION['antRespSetor'] .' PARA => '. $respSetBd . ' \n';
        }

    if ($nomeLocalAlt == "" || $nomeLocalAlt == $_SESSION['antNomeLocal'])
        {
            $nomeLocalBd = $_SESSION['antNomeLocal'];
			$_SESSION['nomeLocal'] = $nomeLocalBd;
        }
    else
        {
            $nomeLocalBd = $nomeLocalAlt;  
			$_SESSION['nomeLocal'] = $nomeLocalBd;
            $auxLocal++;
            $hitorico .= 'NOME DO LOCAL ALTERADO DE: '. $_SESSION['antNomeLocal'] .' PARA => '. $nomeLocalBd . ' \n';
        }
	

	/*if($aux == 0 && $auxLocal == 0)
		{
			//$idComp = $_SESSION['idCompAlt'];
			echo "<script type='text/javascript'>alert('NENHUMA ALTERAÇÃO EFETUADA');</script>";
            echo "<script>location = '../views/computadorAlterar.php?action=1&id=$idComp';</script>";     
		}*/

		
	if($aux != 0 && $auxLocal == 0)
		{
			//$idComp = $_SESSION['idCompAlt'];
			echo "<br>dados do computar alterados" ; 
			
			$computador = new Computador($_SESSION['idCompAlt'], $numCirBd, $numPatrimonioBd, $numPatReitoriaBd, $nomeComputadorBd, $dataCadastro,
			$respCadastro, $dataAltCadastro, $_SESSION['nomeFuncionario'],  $sistemaOperaBd, $modelMaquinaBd, $memoriaBd, $numIpBd, $numMacBd, 
			$_SESSION['antTipoHD'], $nomeUsuarioBd, $statusComp, $obs, $_SESSION['idFuncionario'], $_SESSION['idSetor'], $idTipoProcessadorBd);
			$computador->exibir();
			//$computadorDAO = new ControleCirDAO();
			//$computadorDAO->CadastrarComp($computador);	

			//echo "<br>aux => " . $aux; 
			//echo "<br>auxLocal => " . $auxLocal;    
			//echo "<br>antTipoHD => "; 
			//print_r($_SESSION['antTipoHD']); 
			//echo "<br>antDivisao => " . $_SESSION['antDivisao']; 
			//echo "<br>Divisao alt => " . $divisaoAlt; 
			//echo "<br>hitorico =>" . $hitorico;
			//echo "<br>DivisaoBd => " . $divisaoBd;
		}

	elseif($aux == 0 && $auxLocal != 0)
		{
			//$idComp = $_SESSION['idCompAlt'];
			echo "<br>setor alterado";  
			//echo "<br>divisaoBd => " . $divisaoBd; 
			//echo "<br>localizacaoBd => " . $localizacaoBd; 
			//echo "<br>nomeLocalBd =>" . $nomeLocalBd;

			//verificar se local existe
			$setorExisteDAO = new ControleCirDAO();
			foreach ($setorExisteDAO->VerificarSetor2($divisaoBd,$localizacaoBd,$nomeLocalBd) as $local)
				{ 
					$verificaSetor = $local->idSetor;				          
				}
				
			echo "<br>verificaSetor => " . $verificaSetor . "<br>";
			if($verificaSetor == "")
				{
					$local1 = new Setor($idSetor, $divisaoBd, $localizacaoBd, $ramalBd, $respSetBd, $nomeLocalBd);			
					$local1->exibir();
					//$local = new ControleCirDAO();	
					//$local->CadastrarSetor($local1);
					//echo "<br>idSetor 02 => " . $idSetor . "<br>";

					//FAZER UPDATE APENAS NO ID SETOR, PARA ISSO ALTERAR A FUCÇÃO ABAIXO
					$verificaSetor = $_SESSION['localid'];
					$computador = new Computador($_SESSION['idCompAlt'], $numCirBd, $numPatrimonioBd, $numPatReitoriaBd, $nomeComputadorBd, $dataCadastro,
					$respCadastro, $dataAltCadastro, $_SESSION['nomeFuncionario'],  $sistemaOperaBd, $modelMaquinaBd, $memoriaBd, $numIpBd, $numMacBd, 
					$_SESSION['antTipoHD'], $nomeUsuarioBd, $statusComp, $obs, $_SESSION['idFuncionario'], $verificaSetor, $idTipoProcessadorBd);
					$computador->exibir();
					//$computadorDAO = new ControleCirDAO();
					//$computadorDAO->CadastrarComp($computador);	
				}
			
			else
				{
					//FAZER UPDATE APENAS NO ID SETOR, PARA ISSO ALTERAR A FUCÇÃO ABAIXO
					$computador = new Computador($_SESSION['idCompAlt'], $numCirBd, $numPatrimonioBd, $numPatReitoriaBd, $nomeComputadorBd, $dataCadastro,
					$respCadastro, $dataAltCadastro, $_SESSION['nomeFuncionario'],  $sistemaOperaBd, $modelMaquinaBd, $memoriaBd, $numIpBd, $numMacBd, 
					$_SESSION['antTipoHD'], $nomeUsuarioBd, $statusComp, $obs, $_SESSION['idFuncionario'], $verificaSetor, $idTipoProcessadorBd);
					$computador->exibir();
					//$computadorDAO = new ControleCirDAO();
					//$computadorDAO->CadastrarComp($computador);	
				}
					
		
			//echo "<br>antTipoHD => "; 
			//print_r($_SESSION['antTipoHD']); 
		}

	elseif($aux != 0 && $auxLocal != 0)
		{
			//$idComp = $_SESSION['idCompAlt'];
			echo "<br>computador e setor alterados";  
			//echo "<br>aux => " . $aux; 
			//echo "<br>auxLocal => " . $auxLocal;    
			//echo "<br>antTipoHD => "; 
			//print_r($_SESSION['antTipoHD']); 
			//echo "<br>antDivisao => " . $_SESSION['antDivisao']; 
			//echo "<br>Divisao alt => " . $divisaoAlt; 
			//echo "<br>hitorico =>" . $hitorico;

			$setorExisteDAO = new ControleCirDAO();
			foreach ($setorExisteDAO->VerificarSetor2($divisaoBd,$localizacaoBd,$nomeLocalBd) as $local)
				{ 
					$verificaSetor = $local->idSetor;				          
				}
				
			echo "<br>verificaSetor => " . $verificaSetor . "<br>";
			if($verificaSetor == "")
				{
					$local1 = new Setor($idSetor, $divisaoBd, $localizacaoBd, $ramalBd, $respSetBd, $nomeLocalBd);			
					$local1->exibir();
					//$local = new ControleCirDAO();	
					//$local->CadastrarSetor($local1);
					//echo "<br>idSetor 02 => " . $idSetor . "<br>";
					$idSetorBd = $_SESSION['localid'];
				}

			else
				{
					$idSetorBd = $verificaSetor;
				}


			$computador = new Computador($_SESSION['idCompAlt'], $numCirBd, $numPatrimonioBd, $numPatReitoriaBd, $nomeComputadorBd, $dataCadastro,
			$respCadastro, $dataAltCadastro, $_SESSION['nomeFuncionario'],  $sistemaOperaBd, $modelMaquinaBd, $memoriaBd, $numIpBd, $numMacBd, 
			$_SESSION['antTipoHD'], $nomeUsuarioBd, $statusComp, $obs, $_SESSION['idFuncionario'], $idSetorBd, $idTipoProcessadorBd);
			$computador->exibir();
		}

	else
		{
			$altHd = 0;
			//$altHd = $_POST['altHd'];
		}

	//header("Location: ../views/computadorAlterar2.php");

	switch (get_post_action('save', 'submit', 'publish')) 
		{
			case 'save':
				echo "<br>OPÇÃO FINALIZAR";
				break;

			case 'submit':
				echo "<br>OPÇÃO INSERIR HD";
				break;

			case 'publish':
				echo "<br>OPÇÃO ALTERAR HD";
				break;

			default:
				//no action sent
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
					$computador = new Computador($idComp, $numCirAlt, $numPatrimonio, $numPatReitoria, $nomeComputador, $dataCadastro,
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
					$computador = new Computador($idComp, $numCirAlt, $numPatrimonio, $numPatReitoria, $nomeComputador, $dataCadastro,
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
 
