<?php
    session_start();
    include "../funcao/funcao.php";
    include "../dao/DAO-controleCir.php";
    include "../models/class-setor.php";
	include "../models/class-impressora.php";
    //include "../models/class-impressoraHistorico.php";
	
	
    $aux = 0;
    $auxLocal = 0;
    $hitorico = "";
    $idSetor = 0;
	//recebendo os novos valores da view sobre a impressora 
	$idHistorico = "";
    //$idImpressora = $_SESSION['idImpressora'];	
	$nomeImpAlt = $_POST['nomeImp'];
	$numSerieAlt = $_POST['numSerie'];	
    $ipImpressoraAlt = $_POST['ipImpressora'];
    $numMacAlt = $_POST['numMac'];  
    $tipoTonnerAlt = converteMaiuscula($_POST['tipoTonner']);      
    $impStatusAlt =  $_POST['impStatus'];
    $modeloAlt = $_POST['modelo'];   
    $divisaoAlt = $_POST['divisao'];
    $localAlt = $_POST['local'];
    $ramalAlt = $_POST['ramal'];
    $respSetCompAlt = $_POST['respSetComp'];
    $nomeLocalAlt = $_POST['nomeLocal'];
    $ObsImpAlt = converteMaiuscula($_POST['ObsImp']);    
        
    //recebendo os valores antigos do impressora
    $idImpressora = $_SESSION['idImpressora'];
    $nomeImpressoraAnt = $_SESSION['antNomeImp'];
    $numSerieAnt = $_SESSION['antNumSerie'];
    $ipImpressoraAnt = $_SESSION['antNumIp'];
    $macImpressoraAnt = $_SESSION['antNumMac'];
    $tipoTonerAnt = $_SESSION['antTipoToner'];
    $statusImpressoraAnt = $_SESSION['antStatusImp'];
    $modeloImpressoraAnt = $_SESSION['antModelImp'];
    $divisaoAnt = $_SESSION['antDivisao'];
    $localizacaoAnt = $_SESSION['antLocalizacao'];
    $ramalAnt = $_SESSION['antRamal'];
    $respSetCompAnt = $_SESSION['antRespSetComp'];
    $nomeLocalAnt = $_SESSION['antNomeLocal'];
    $obsImpressoraAnt = $_SESSION['antObsImp'];
    $dataCadastroA = $_SESSION['datacadastro'];
    $respCadastro = $_SESSION['respCadastro'];
    $dateAltCadastro = $_SESSION['data'];
    $funcionarioAltCadastro = $_SESSION['nomeFuncionario'];

    $hitorico = $ObsImpAlt . " - ";

    //verificando quais valores que nao foram alterados/ou estao em branco
    //impressora
    if ($nomeImpAlt == "" || $nomeImpAlt == $nomeImpressoraAnt) 
        {
            $nomeImpressora = $nomeImpressoraAnt;
        }
    else
        {
            $nomeImpressora = $nomeImpAlt;  
            $aux++;
            $hitorico .= 'NOME DA IMPRESSORA ALTERADO DE: '. $nomeImpressoraAnt .' PARA => '. $nomeImpressora .'</br>';
        }

    if ($numSerieAlt == "" || $numSerieAlt == $numSerieAnt) 
        {
            $numSerie = $numSerieAnt;
        }   
     else
        {
            $numSerie = $numSerieAlt;  
            $aux++;
            $hitorico .= 'Nº DE SÈRIE ALTERADO DE: '. $numSerieAnt .' PARA => '. $numSerie .'</br>';
        }

    if ($ipImpressoraAlt == "" || $ipImpressoraAlt == $ipImpressoraAnt)
        {
            $ipImpressora = $ipImpressoraAnt;
        }
    else
        {
            $ipImpressora = $ipImpressoraAlt;  
            $aux++;
            $hitorico .= 'IP DA IMPRESSORA ALTERADO DE: '. $ipImpressoraAnt .' PARA => '. $ipImpressora .'</br>';
        }

    if ($numMacAlt == "" || $numMacAlt == $macImpressoraAnt)
        {
            $macImpressora = $macImpressoraAnt;
        }
    else
        {
            $macImpressora = $numMacAlt;  
            $aux++;
            $hitorico .= 'MAC DA IMPRESSORA ALTERADO DE: '. $macImpressoraAnt .' PARA => '. $macImpressora .'</br>';
        }
 
    if ($tipoTonnerAlt == "" || $tipoTonnerAlt == $tipoTonerAnt) 
        {
            $tipoToner = $tipoTonerAnt;
        }
    else
        {
            $tipoToner = $tipoTonnerAlt;  
            $aux++;
            $hitorico .= 'TIPO DE TONNER ALTERADO DE: '. $tipoTonerAnt .' PARA => '. $tipoToner .'</br>';
        }

    if ($impStatusAlt == "" || $impStatusAlt == $statusImpressoraAnt) 
        {
            $statusImpressora = $statusImpressoraAnt;
        }   
     else
        {
            $statusImpressora = $impStatusAlt;  
            $aux++;
            $hitorico .= 'STATUS ALTERADO DE: '. $statusImpressoraAnt .' PARA => '. $statusImpressora .'</br>';
        }

    if ($modeloAlt == "" || $modeloAlt == $modeloImpressoraAnt)
        {
            $modeloImpressora = $modeloImpressoraAnt;
        }
    else
        {
            $modeloImpressora = $modeloAlt;  
            $aux++;
            $hitorico .= 'MODELO DA IMPRESSORA ALTERADO DE: '. $modeloImpressoraAnt .' PARA => '. $modeloImpressora .'</br>';
        }
    //local
    if ($divisaoAlt == "" || $divisaoAlt == $divisaoAnt)
        {
            $divisaoBd = $divisaoAnt;
        }
    else
        {
            $divisaoBd = $divisaoAlt;  
            $auxLocal++;
            $hitorico .= 'DIVSÃO DA IMPRESSORA ALTERADA DE: '. $divisaoAnt .' PARA => '. $divisaoBd .'</br>';
        }
       
    if ($localAlt == "" || $localAlt == $localizacaoAnt) 
        {
            $localizacaoBd = $localizacaoAnt;
        }
    else
        {
            $localizacaoBd = $localAlt;  
            $auxLocal++;
            $hitorico .= 'LOCAL ALTERADO DE: '. $localizacaoAnt .' PARA => '. $localizacaoBd .'</br>';
        }

    if ($ramalAlt == "" || $ramalAlt == $ramalAnt) 
        {
            $ramalBd = $ramalAnt;
        }   
     else
        {
            $ramalBd = $ramalAlt;  
            $auxLocal++;
            $hitorico .= 'RAMAL ALTERADO DE: '. $ramalAnt .' PARA => '. $ramalBd .'</br>';
        }

    if ($respSetCompAlt == "" || $respSetCompAlt == $respSetCompAnt)
        {
            $respSetBd = $respSetCompAnt;
        }
    else
        {
            $respSetBd = $respSetCompAlt;  
            $auxLocal++;
            $hitorico .= 'RESPONSÁVEL PELO SETOR ALTERADO DE: '. $respSetCompAnt .' PARA => '. $respSetBd .'</br>';
        }

    if ($nomeLocalAlt == "" || $nomeLocalAlt == $nomeLocalAnt)
        {
            $nomeLocalBd = $nomeLocalAnt;
        }
    else
        {
            $nomeLocalBd = $nomeLocalAlt;  
            $auxLocal++;
            $hitorico .= 'NOME DO LOCAL ALTERADO DE: '. $nomeLocalAnt .' PARA => '. $nomeLocalBd .'</br>';
        }


    /*echo '</br>Dados Antigos';    
    echo "<==== impressora ====> "; 
    echo "<br>nomeImpressoraAnt => " . $nomeImpressoraAnt;
    echo "<br>numSerieAnt => " . $numSerieAnt;
    echo "<br>ipImpressoraAnt => " . $ipImpressoraAnt;  
    echo "<br>macImpressoraAnt => " . $macImpressoraAnt;   
    echo "<br>tipoTonerAnt => " . $tipoTonerAnt; 
    echo "<br>statusImpressoraAnt => " . $statusImpressoraAnt;
    echo "<br>modeloImpressoraAnt => " . $modeloImpressoraAnt;
    echo "<br>divisaoAnt => " . $divisaoAnt;
    echo "<br>localizacaoAnt => " . $localizacaoAnt;
    echo "<br>ramalAnt => " . $ramalAnt;
    echo "<br>respSetCompAnt => " . $respSetCompAnt;
    echo "<br>nomeLocalAnt => " . $nomeLocalAnt;

    echo "<br>";
    echo "<br>";

    echo "<br>dados que nao podem ser mudados => ";
    echo "<br>obsImpressoraAnt => " . $obsImpressoraAnt;
    echo "<br>dataCadastroA => " . $dataCadastroA;
    echo "<br>respCadastro => " . $respCadastro;
    echo "<br>dateAltCadastro => " . $dateAltCadastro;
    echo "<br>funcionarioAltCadastro => " . $funcionarioAltCadastro;

    echo "<br>";
    echo "<br>";*/

    /*echo '</br>Dados Novos';    
    echo "<==== impressora ====> "; 
    echo "<br>idImpressora => " . $idImpressora;
    echo "<br>nomeImpAlt => " . $nomeImpAlt;
    echo "<br>numSerieAlt => " . $numSerieAlt;
    echo "<br>ipImpressoraAlt => " . $ipImpressoraAlt;
    echo "<br>numMacAlt => " . $numMacAlt;  
    echo "<br>tipoTonnerAlt => " . $tipoTonnerAlt;   
    echo "<br>impStatusAlt => " . $impStatusAlt; 
    echo "<br>modeloAlt => " . $modeloAlt;
    echo "<br>divisaoAlt => " . $divisaoAlt;
    echo "<br>localAlt => " . $localAlt;
    echo "<br>ramalAlt => " . $ramalAlt;
    echo "<br>respSetCompAlt => " . $respSetCompAlt;
    echo "<br>nomeLocalAlt => " . $nomeLocalAlt;
    echo "<br>ObsImpAlt => " . $ObsImpAlt;

    echo "<br>";
    echo "<br>";*/

    if( $aux != 0 || $auxLocal != 0)
        {
            echo "<br>Dados Novos Para Banco de Dados";    
            echo "<br><==== impressora Bd ====> "; 
            echo "<br>VALOR AUXILIAR => " . $aux;
            echo "<br>VALOR LOCAL => " . $auxLocal;
            echo "<br>VALOR hitorico => " . $hitorico;
            echo "<br>idImpressoraBd => " . $idImpressora;
            echo "<br>nomeImpressoraBd => " . $nomeImpressora;
            echo "<br>numSerieBd => " . $numSerie;
            echo "<br>ipImpressoraBd => " . $ipImpressora;
            echo "<br>macImpressoraBd => " . $macImpressora;
            echo "<br>tipoTonerBd => " . $tipoToner;  
            echo "<br>statusImpressoraBd => " . $statusImpressora;   
            echo "<br>modeloImpressoraBd => " . $modeloImpressora; 
          
            if($auxLocal != 0)
                {
                    echo "<br>informações do local";
                    echo "<br>divisaoBd => " . $divisaoBd;
                    echo "<br>localizacaoBd => " . $localizacaoBd;
                    echo "<br>ramalBd => " . $ramalBd;
                    echo "<br>respSetBd => " . $respSetBd;
                    echo "<br>nomeLocalBd => " . $nomeLocalBd;    
                    //verificar setor e salvar update  
                    $setorExisteDAO = new ControleCirDAO();
                    foreach ($setorExisteDAO->VerificarSetor($divisaoBd,$localizacaoBd,$nomeLocalBd) as $local)
                        { 
                            $idSetor = $local->idSetor;				          
                        }
                    echo "<br>id Localizacao => " . $idSetor;

                    if($idSetor == 0)
                        {
                            $nomeTabela = "divisao"; 
                            $opcao1 = "divisao"; 
                            $valor1 = $divisaoBd; 
                            $divisaoDAO = new ControleCirDAO();
                            foreach ($divisaoDAO->Verificar($nomeTabela, $opcao1, $valor1) as $divisao)
                                { 
                                    $idDivisao = $divisao->idDivisao;				          
                                }	

                            echo "<br>verificaDivisao => " . $idDivisao . "<br>";

                            $local1 = new Setor($idSetor, $idDivisao, $localizacaoBd, $ramalBd, $respSetBd, $nomeLocalBd);	
                            echo "<br>";				
                            $local1->exibir();
                            echo "<br>";		
                            //$local = new ControleCirDAO();	
                            //$local->CadastrarSetor($local1);

                            //$idSetor = $_SESSION['localid'];
                        }
                }
            else
                {
                    echo "<br>id Divisao => " . $_SESSION['antDivisao'];
                    echo "<br>id Localizacao => " . $_SESSION['antLocalizacao']; 
                    echo "<br>id Localizacao => " . $_SESSION['idSetor'];
                    //fazer update e manter setor
                }
        }
   
    else
        {
            echo "<script type='text/javascript'>alert('nenhum valor(es)  alterado(s), portanto nada a ser salvo');</script>";
            echo "<script>location = '../views/impressorasListar.php';</script>";   
        }
   
   	//coverter letras do nome para maiuscula
    //$nomLocComp = converteMaiuscula($nomeLocalAltBd);
    //$respSetCompAltBd1 = converteMaiuscula($respSetCompAltBd);/*

    /*echo '</br>';
    echo '</br><==== teste 01 ====> ';
    echo '</br> nomLocComp => ' . $nomLocComp;
    echo '</br> localizacaoAltBd => ' . $localizacaoAltBd;
    echo '</br> divisaoAltBd => ' . $divisaoAltBd . '<br>';*/

    
    //$verificaLocal = VerificaLocal2($divisaoAltBd,$localizacaoAltBd,$nomLocComp);
    //$idLocal = $_SESSION['localid'];
    
    /*echo '</br>';
    echo '</br><==== teste 02 ====> ';
    echo '</br> verificaLocal => ' . $verificaLocal . '<br>';
    echo '</br> idLocal => ' . $idLocal . '<br>';
    echo '</br> aux => ' . $aux . '<br>';*/

       /*
    if($aux == 16)
        {
            
        }

    else
        {       
            $dataAltCadastro= formatarData($dAlteraAntigo);
                        
            //salvando historico no banco
            
			$HistoricoUpdate = new Historico($idHistorico, $teste, $obsAltBd, $dataAltCadastro, $respAlteraAntigo, $idimpressoraAlt);
            $HistoricoUpdate->exibir();
            $historicoDAO = new CadastroCirDAO();
			$historicoDAO->CadastrarHistoricoComp($HistoricoUpdate);
			
			
            // se ja existirem retorna a tela de cadastro e avisa
            if ($verificaLocal != 0)
                //fazendo update na tabela impressora			
                {	
                    $idimpressora = $idimpressoraAlt;
                    $numCir = $numCirAlt;
                    $numPatrimonio = $numPatrimonioAltBd; 
                    $nomeimpressora = $nomeimpressoraAltBd;
                    $dataCadastro1 = $dCadastroAntigo; 
                    $respCadastro = $respCadastroAntigo;
                    $respAltCadastro = $respAlteraAntigo;
                    $dataAltCadastro1 = $dAlteraAntigo;
                    $so = $sistemaOperaAltBd;
                    $modelMaquina = $modelMaquinaAltBd;
                    $tipProcessador = $tipProcessadorAltBd;
                    $memoria = $memoriaAltBd;
                    $numIp = $numIpAltBd;
                    $numMac = $numMacAltBd; 
                    $capHD = $capHDAltBd; 
                    $statusComp = $statusCompAltBd; 
                    $obsComp = $obsAltBd; 
                    $idLocal = $_SESSION['localid'];
                    
                    $dataCadastro = formatarData($dataCadastro1);
                    $dataAltCadastro = formatarData($dataAltCadastro1);
                    
                    $impressora1 = new impressora($idimpressora, $numCir, $numPatrimonio, $nomeimpressora, $dataCadastro, $respCadastro, $respAltCadastro, $dataAltCadastro, $so, $modelMaquina, $tipProcessador, $memoria, $numIp, $numMac, $capHD, $statusComp,$obsComp,  $idLocal);
                    $impressora1->exibir();
                    //$impressoraDAO = new CadastroCirDAO();
                    //$impressoraDAO->impressoraUpdate($impressora1);
                    
                    //header("Location: ../views/impressoraEditar.php");
                    
                }
            else 
                { 
                    $idLocalimpressora = "";
                    //$idLocalimpressora = $_SESSION['localid'];
                    $divComp = $divisaoAltBd;
                    $localComp = $localizacaoAltBd;
                    $ramalComp = $ramalAltBd;
                    $respSetComp = $respSetCompAltBd1;
                    $nomLocComp = $nomLocComp1;
                
                    $local1 = new Local($idLocalimpressora, $divComp, $localComp, $ramalComp, $respSetComp, $nomLocComp);
                    $local1->exibir();
                    //$local = new CadastroCirDAO();	
                    //$local->CadastrarLocal($local1);

                    session_start();
                    $idLocalimpressora = $_SESSION['localid']; 

                    $idimpressora = $idimpressoraAlt;
                    $numCir = $numCirAlt;
                    $numPatrimonio = $numPatrimonioAltBd; 
                    $nomeimpressora = $nomeimpressoraAltBd;
                    $dataCadastro1 = $dCadastroAntigo; 
                    $respCadastro = $respCadastroAntigo;
                    $respAltCadastro = $respAlteraAntigo;
                    $dataAltCadastro1 = $dAlteraAntigo;
                    $so = $sistemaOperaAltBd;
                    $modelMaquina = $modelMaquinaAltBd;
                    $tipProcessador = $tipProcessadorAltBd;
                    $memoria = $memoriaAltBd;
                    $numIp = $numIpAltBd;
                    $numMac = $numMacAltBd; 
                    $capHD = $capHDAltBd; 
                    $statusComp = $statusCompAltBd; 
                    $obsComp = $obsAltBd; 
                    $idLocal = $idLocalimpressora;
                    
                    $dataCadastro = formatarData($dataCadastro1);
                    $dataAltCadastro = formatarData($dataAltCadastro1);
                    
                    $impressora1 = new impressora($idimpressora, $numCir, $numPatrimonio, $nomeimpressora, $dataCadastro, $respCadastro, $respAltCadastro, $dataAltCadastro,$so,  $modelMaquina, $tipProcessador, $memoria,  $numIp, $numMac, $capHD, $statusComp, $obsComp, $idLocal);
                    $impressora1->exibir();
                    //$impressora = new CadastroCirDAO();
                    //$impressora->impressoraUpdate($impressora1);
                    
                    //header("Location: ../views/impressoraEditar.php");
                }
        }*/

    //apagar depois    
    //$dataAltCadastro= formatarData($dAlteraAntigo);
    //$HistoricoUpdate = new Historico($idHistorico, $teste, $obsAltBd, $dataAltCadastro, $respAlteraAntigo, $idimpressoraAlt);
    //$HistoricoUpdate->exibir();
		
?>
