<?php
    session_start();
    include "../funcao/funcao.php";
    include "../dao/DAO-controleCir.php";
    include "../models/class-setor.php";
	include "../models/class-impressora.php";
    include "../models/class-historico.php";
	
    //pegar ip do modelo e nao o nome
	
    $aux = 0;
    $auxLocal = 0;
    $hitorico = "";
    $idSetor = 0;

    //echo "<br>teste 0 => " . $aux . " - " . $auxLocal; 

    //recebendo os novos valores da view sobre a impressora 
	$idHistorico = "";
    //$idImpressora = $_SESSION['idImpressora'];	
	$nomeImpAlt = $_POST['nomeImp'];
	$numSerieAlt = $_POST['numSerie'];	
    $ipImpressoraAlt = $_POST['ipImpressora'];
    $numMacAlt = converteMaiuscula($_POST['numMac']);  
    $tipoTonnerAlt = converteMaiuscula($_POST['tipoTonner']);      
    $impStatusAlt =  $_POST['impStatus'];
    $conexaoImpAlt =  $_POST['conexaoImp'];
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
    $conexaoImpAnt = $_SESSION['antConexaoImp'];
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
            $hitorico .= 'NOME DA IMPRESSORA ALTERADO DE: '. $nomeImpressoraAnt .' PARA => '. $nomeImpressora . ' \n';
        }

    if ($numSerieAlt == "" || $numSerieAlt == $numSerieAnt) 
        {
            $numSerie = $numSerieAnt;
        }   
     else
        {
            $numSerie = $numSerieAlt;  
            $aux++;
            $hitorico .= 'Nº DE SÈRIE ALTERADO DE: '. $numSerieAnt .' PARA => '. $numSerie . ' \n';
        }

    if ($ipImpressoraAlt == "" || $ipImpressoraAlt == $ipImpressoraAnt)
        {
            $ipImpressora = $ipImpressoraAnt;
        }
    else
        {
            $ipImpressora = $ipImpressoraAlt;  
            $aux++;
            $hitorico .= 'IP DA IMPRESSORA ALTERADO DE: '. $ipImpressoraAnt .' PARA => '. $ipImpressora . ' \n';
        }

    if ($numMacAlt == "" || $numMacAlt == $macImpressoraAnt)
        {
            $macImpressora = $macImpressoraAnt;
        }
    else
        {
            $macImpressora = $numMacAlt;  
            $aux++;
            $hitorico .= 'MAC DA IMPRESSORA ALTERADO DE: '. $macImpressoraAnt .' PARA => '. $macImpressora . ' \n';
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
            $hitorico .= 'TIPO DE TONNER ALTERADO DE: '. $descTonnerAnt .' PARA => '. $desTonnerAlt . ' \n';
        }

    if ($impStatusAlt == "" || $impStatusAlt == $statusImpressoraAnt) 
        {
            $statusImpressora = $statusImpressoraAnt;
        }   
     else
        {
            $statusImpressora = $impStatusAlt;  
            $aux++;
            $hitorico .= 'STATUS ALTERADO DE: '. $statusImpressoraAnt .' PARA => '. $statusImpressora . ' \n';
        }

      if ($conexaoImpAlt == "" || $conexaoImpAlt == $conexaoImpAnt ) 
        {
            $conexaoImp = $conexaoImpAnt;
        }   
     else
        {
            $conexaoImp = $conexaoImpAlt;  
            $aux++;
            $hitorico .= 'TIPO DE CONEXÃO ALTERADA DE: '. $conexaoImpAnt  .' PARA => '. $conexaoImp . ' \n';
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
            $hitorico .= 'MODELO DA IMPRESSORA ALTERADO DE: '. $descModelAnt .' PARA => '. $desModelAlt . ' \n';
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
            $hitorico .= 'DIVSÃO DA IMPRESSORA ALTERADA DE: '. $descricaoAnt .' PARA => '. $descricaoAlt . ' \n';
        }
       
    if ($localAlt == "" || $localAlt == $localizacaoAnt) 
        {
            $localizacaoBd = $localizacaoAnt;
        }
    else
        {
            $localizacaoBd = $localAlt;  
            $auxLocal++;
            $hitorico .= 'LOCAL ALTERADO DE: '. $localizacaoAnt .' PARA => '. $localizacaoBd . ' \n';
        }

    if ($ramalAlt == "" || $ramalAlt == $ramalAnt) 
        {
            $ramalBd = $ramalAnt;
        }   
     else
        {
            $ramalBd = $ramalAlt;  
            $auxLocal++;
            $hitorico .= 'RAMAL ALTERADO DE: '. $ramalAnt .' PARA => '. $ramalBd . ' \n';
        }

    if ($respSetCompAlt == "" || $respSetCompAlt == $respSetCompAnt)
        {
            $respSetBd = $respSetCompAnt;
        }
    else
        {
            $respSetBd = $respSetCompAlt;  
            $auxLocal++;
            $hitorico .= 'RESPONSÁVEL PELO SETOR ALTERADO DE: '. $respSetCompAnt .' PARA => '. $respSetBd . ' \n';
        }

    if ($nomeLocalAlt == "" || $nomeLocalAlt == $nomeLocalAnt)
        {
            $nomeLocalBd = $nomeLocalAnt;
        }
    else
        {
            $nomeLocalBd = $nomeLocalAlt;  
            $auxLocal++;
            $hitorico .= 'NOME DO LOCAL ALTERADO DE: '. $nomeLocalAnt .' PARA => '. $nomeLocalBd . ' \n';
        }

    //echo "<br>hitorico => " . $hitorico;

    //verificar setor e salvar update  
    $divisao2DAO = new ControleCirDAO();   
    $nomeTabela = "divisao";
    $tipoOpcao = "idDivisao";
    foreach ($divisao2DAO->ListarOpcao($nomeTabela, $tipoOpcao, $divisaoBd) as $res)
        {
            $descricaoAnt = $res->divisao;
        }

    $setorExisteDAO = new ControleCirDAO();
    foreach ($setorExisteDAO->VerificarSetor($descricaoAnt,$localizacaoBd,$nomeLocalBd) as $local)
        { 
            $idSetor = $local->idSetor;				          
        }
    
    if( $aux != 0 || $auxLocal != 0)
        {
            if($auxLocal != 0)
                { 
                    if($idSetor == 0)
                        {
                            $local1 = new Setor($idSetor, $divisaoBd, $localizacaoBd, $ramalBd, $respSetBd, $nomeLocalBd);	
                            //echo "<br>";				
                            //$local1->exibir();
                            //echo "<br>";		
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
                            $statusImpressora, $conexaoImp, $modeloImpressora, $dataCadastroA, $respCadastro, $dateAltCadastro, $funcionarioAltCadastro, $ObsImpAlt,
                            $_SESSION['idFuncionario'] , $idSetor);
                            //echo "<br>dados impressora <br>";		
                            //$impressora->exibir();
                            //echo "<br>";
                            $impressoraDAO = new ControleCirDAO();
                            $impressoraDAO->UpdateImpre($impressora);
                        } 
                } 

             else
                {
                    $impressora = new Impressora($idImpressora, $nomeImpressora,  $numSerie, $ipImpressora, $macImpressora, $tipoToner, 
                    $statusImpressora, $conexaoImp, $modeloImpressora, $dataCadastroA, $respCadastro, $dateAltCadastro, $funcionarioAltCadastro, $ObsImpAlt,
                    $_SESSION['idFuncionario'] , $idSetor);
                    //echo "<br>dados impressora <br>";		
                    //$impressora->exibir();
                    //echo "<br>";
                    $impressoraDAO = new ControleCirDAO();
                    $impressoraDAO->UpdateImpre($impressora);
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
            fwrite($output2, $hitorico);
            fclose($output2); 

            $idComputador = null;
            $historicoBd = new Historico($idHistorico, $desHist, $dateAltCadastro, $funcionarioAltCadastro,  $idComputador,  $idImpressora, $_SESSION['idFuncionario']);
            //echo "<br>dados  Historico<br>";		
            //$historico->exibir();
            //echo "<br>"; 
            $historicoDAO = new ControleCirDAO();
            $historicoDAO->HitoricoCadastrar($historicoBd);

            echo "<script type='text/javascript'>alert('valor(es)  alterado(s)');</script>";
            echo "<script>location = '../views/impressorasListar.php';</script>";   
        }
    else
        {
            echo "<script type='text/javascript'>alert('nenhum valor(es)  alterado(s), portanto nada a ser salvo');</script>";
            echo "<script>location = '../views/impressorasListar.php';</script>";   
        }
?>