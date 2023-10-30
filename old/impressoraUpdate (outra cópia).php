<?php
    session_start();
    include "../funcao/funcao.php";
    include "../dao/DAO-controleCir.php";
    include "../models/class-setor.php";
	include "../models/class-impressora.php";
    //include "../models/class-impressoraHistorico.php";
	
    //pegar ip do modelo e nao o nome
	
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
    $nomeLocalAlt = converteMaiuscula($_POST['nomeLocal']);
    $ObsImpAlt = converteMaiuscula($_POST['ObsImp']);    
        
    //recebendo os valores antigos do impressora
    $idImpressora = $_SESSION['idImpressora'];
    $nomeImpressoraAnt = $_SESSION['antNomeImp'];
    $numSerieAnt = $_SESSION['antNumSerie'];
    $ipImpressoraAnt = $_SESSION['antNumIp'];
    $macImpressoraAnt = $_SESSION['antNumMac'];
    $tipoTonerAnt = $_SESSION['tipoTonerBd'];
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
            $nomeTabela = "material";
            $tipoOpcao = "idMaterial";

            $tonner0DAO = new ControleCirDAO(); 
            foreach ($tonner0DAO->ListarOpcao2($nomeTabela, $tipoOpcao, $tipoTonerAnt) as $res)
                {
                    $descTonnerAnt = $res->descricao;
                }
            $tonner1DAO = new ControleCirDAO();   
            foreach ($tonner1DAO->ListarOpcao2($nomeTabela, $tipoOpcao, $tipoTonnerAlt) as $res)
                {
                    $desTonnerAlt = $res->descricao;
                }	
            $aux++;
            $hitorico .= 'TIPO DE TONNER ALTERADO DE: '. $descTonnerAnt .' PARA => '. $desTonnerAlt .'</br>';
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
            $nomeTabela = "modeloImpressora";
            $tipoOpcao = "idModelo";

            $modelo0DAO = new ControleCirDAO(); 
            foreach ($modelo0DAO->ListarOpcao2($nomeTabela, $tipoOpcao, $modeloImpressoraAnt) as $res)
                {
                    $descModelAnt = $res->modeloImpressora;
                }
            $modelo1DAO = new ControleCirDAO();   
            foreach ($modelo1DAO->ListarOpcao2($nomeTabela, $tipoOpcao, $modeloAlt) as $res)
                {
                    $desModelAlt = $res->modeloImpressora;
                }	
           
            $aux++;
            $hitorico .= 'MODELO DA IMPRESSORA ALTERADO DE: '. $descModelAnt .' PARA => '. $desModelAlt .'</br>';
        }

    //local
    if ($divisaoAlt == "" || $divisaoAlt == $divisaoAnt)
        {
            $divisaoBd = $divisaoAnt;
        }
    else
        {
            $divisaoBd = $divisaoAlt;  
            $divisao0DAO = new ControleCirDAO();   
            $nomeTabela = "divisao";
            $tipoOpcao = "idDivisao";
            foreach ($divisao0DAO->ListarOpcao2($nomeTabela, $tipoOpcao, $divisaoAnt) as $res)
                {
                    $descricaoAnt = $res->divisao;
                }
            $divisao1DAO = new ControleCirDAO();   
            foreach ($divisao1DAO->ListarOpcao2($nomeTabela, $tipoOpcao, $divisaoBd) as $res)
                {
                    $descricaoAlt = $res->divisao;
                }	

            $auxLocal++;
            $hitorico .= 'DIVSÃO DA IMPRESSORA ALTERADA DE: '. $descricaoAnt .' PARA => '. $descricaoAlt .'</br>';
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

    //verificar setor e salvar update  
    $divisao2DAO = new ControleCirDAO();   
    $nomeTabela = "divisao";
    $tipoOpcao = "idDivisao";
    foreach ($divisao2DAO->ListarOpcao2($nomeTabela, $tipoOpcao, $divisaoBd) as $res)
        {
            $descricaoAnt = $res->divisao;
        }

    $setorExisteDAO = new ControleCirDAO();
    foreach ($setorExisteDAO->VerificarSetor($descricaoAnt,$localizacaoBd,$nomeLocalBd) as $local)
         { 
             $idSetor = $local->idSetor;				          
         }

    echo "<br>modeloAlt - 1 => " . $modeloAlt;
    echo "<br>modeloImpressoraAnt - 1 => " . $modeloImpressoraAnt;
    echo "<br>aux - 1 => " . $aux;
    echo "<br>auxLocal - 1 => " . $auxLocal;
    echo "<br>hitorico - 1 => " . $hitorico;

    
    if( $aux != 0 || $auxLocal != 0)
        {
            if($auxLocal != 0)
                { 
                    //verificar setor e salvar update  
                    /*$divisao2DAO = new ControleCirDAO();   
                    $nomeTabela = "divisao";
                    $tipoOpcao = "idDivisao";
                    foreach ($divisao2DAO->ListarOpcao2($nomeTabela, $tipoOpcao, $divisaoBd) as $res)
                        {
                            $descricaoAnt = $res->divisao;
                        }

                    $setorExisteDAO = new ControleCirDAO();
                    foreach ($setorExisteDAO->VerificarSetor($descricaoAnt,$localizacaoBd,$nomeLocalBd) as $local)
                        { 
                            $idSetor = $local->idSetor;				          
                        }*/

                    if($idSetor == 0)
                        {
                            echo "<br>divisaoBd - 1 => " . $divisaoBd;
                            $local1 = new Setor($idSetor, $divisaoBd, $localizacaoBd, $ramalBd, $respSetBd, $nomeLocalBd);	
                            echo "<br>";				
                            $local1->exibir();
                            echo "<br>";		
                            $local = new ControleCirDAO();	
                            $local->CadastrarSetor($local1);

                            $idSetor = $_SESSION['localid'];      
                        }

                    if($aux == 0)
                        {
                            $impressoraDAO = new ControleCirDAO();
                            $impressoraDAO->IpressoraUpdateSetor($idImpressora,$idSetor);
                            echo "<script type='text/javascript'>alert('valor(es)  alterado(s)');</script>";
                            echo "<script>location = '../views/impressorasListar.php';</script>";   
                        }
                    else
                        {
                            $impressora = new Impressora($idImpressora, $nomeImpressora,  $numSerie, $ipImpressora, $macImpressora, $tipoToner, 
                            $statusImpressora, $modeloImpressora, $dataCadastroA, $respCadastro, $dateAltCadastro, $funcionarioAltCadastro, $obsImpressoraAnt,
                            $_SESSION['idFuncionario'] , $idSetor);
                            echo "<br>dados impressora <br>";		
                            $impressora->exibir();
                            echo "<br>";
                            $impressoraDAO = new ControleCirDAO();
                            $impressoraDAO->UpdateImpre($impressora);
                        }                       
                }
            else
                {
                    echo "<br>id Divisao => " . $_SESSION['antDivisao'];
                    echo "<br>id Localizacao => " . $_SESSION['antLocalizacao']; 
                    echo "<br>id Localizacao => " . $_SESSION['idSetor'];
                    echo "<br>id idImpressora => " . $idImpressora;
                    $impressora = new Impressora($idImpressora, $nomeImpressora,  $numSerie, $ipImpressora, $macImpressora, $tipoToner, 
                    $statusImpressora, $modeloImpressora, $dataCadastroA, $respCadastro, $dateAltCadastro, $funcionarioAltCadastro, $obsImpressoraAnt,
                    $_SESSION['idFuncionario'] , $idSetor);
                    echo "<br>dados impressora <br>";		
                    $impressora->exibir();
                    echo "<br>";
                    $impressoraDAO = new ControleCirDAO();
                    $impressoraDAO->UpdateImpre($impressora);
                }
            echo "<script type='text/javascript'>alert('valor(es)  alterado(s)');</script>";
            echo "<script>location = '../views/impressorasListar.php';</script>";   
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
