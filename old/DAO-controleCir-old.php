<?php
    include('database.php');
    
	class ControleCirDAO 
		{	
            //INÍCIO DAS FUNÇÕES COMUNS AO SISTEMA
            public function VerificarLoginSenha($nomeTabela, $login) 
                {					
                    $conn = Database::connect();
                    
                    $conn->exec('SET CHARACTER SET utf8');
                    
                    $sql = "SELECT * FROM $nomeTabela WHERE login = '$login' AND statusFuncionario = 'ativo'";
                    
                    try 
                        {
                            $listar = $conn->query($sql);
                            $buscar = $listar->fetchAll(PDO::FETCH_OBJ);
                            $numRows = $listar->rowCount();
                        } 
                    catch (PDOException $exc)
                        {
                            $buscar = $exc->getTraceAsString();
                        }
                        
                    $_SESSION['numUser'] = $numRows;
                    return $buscar;
                    $conn = null;	
                }
          
            public function VerificarDados($nomeTabela, $idAcesso) 
                {					
                    $conn = Database::connect();
                    
                    $conn->exec('SET CHARACTER SET utf8');
                    
                    $sql = "SELECT * FROM $nomeTabela WHERE idAcesso = '$idAcesso' ";
                    
                    try 
                        {
                            $listar = $conn->query($sql);
                            $buscar = $listar->fetchAll(PDO::FETCH_OBJ);
                            $numRows = $listar->rowCount();
                        } 
                    catch (PDOException $exc)
                        {
                            $buscar = $exc->getTraceAsString();
                        }
                                          
                    $_SESSION['numUser'] = $numRows;
                    return $buscar;
                    $conn = null;	
                }

            public function ListarOpcao($nomeTabela, $tipoOpcao, $valorOpcao)  
                {
                    $conn = Database::connect();
                    $conn->exec('SET CHARACTER SET utf8');
                                    
                    $sql = "SELECT * FROM $nomeTabela WHERE $tipoOpcao LIKE '$valorOpcao%' ";
                    try 
                        {
                            $listar = $conn->query($sql);
                            $buscar = $listar->fetchAll(PDO::FETCH_OBJ);
                            $numRows = $listar->rowCount();
                        } 

                    catch (PDOException $exc)
                        {
                            $buscar = $exc->getTraceAsString();
                        }

                    session_start();
                    $_SESSION['numRows'] = $numRows;

                    return $buscar;                        
                    $conn = null;	
                }

            public function Verificar($nomeTabela, $opcao1, $valor1) 
                {					
                    $conn = Database::connect();
                    
                    $conn->exec('SET CHARACTER SET utf8');
                    
                    $sql = "SELECT * FROM $nomeTabela WHERE $opcao1 = '$valor1' ";
                    
                    try 
                        {
                            $listar = $conn->query($sql);
                            $buscar = $listar->fetchAll(PDO::FETCH_OBJ);
                            $numRows = $listar->rowCount();
                        } 
                    catch (PDOException $exc)
                        {
                            $buscar = $exc->getTraceAsString();
                        }                                      
                    session_start();
                    $_SESSION['numUser'] = $numRows;
                    return $buscar;
                    $conn = null;	
                }
            //FIM DAS FUNÇÕES COMUNS AO SISTEMA   

            //INÍCIO DAS FUNÇÕES RELACIONADAS AOS CARGOS  
            //FIM DAS FUNÇÕES RELACIONADAS AOS CARGOS   
          
            //INÍCIO DAS FUNÇÕES RELACIONADAS AO TIPO DE ACESSO 
            public function TipoAcessoPesquisa($gerenFuncionarios, $gerenCargos, $gerenEntMaterial, $gerenSaiMaterial, $gerenRelaMaterial, $gerenComputador, $gerenImpressora)
                {
                    $conn = Database::connect();                    
                    $conn->exec('SET CHARACTER SET utf8');
                    
                    $sql = "SELECT * FROM tipoAcesso
                    WHERE gerenFuncionarios = '$gerenFuncionarios'
                    AND gerenCargos = '$gerenCargos' 
                    AND gerenEntMaterial = '$gerenEntMaterial'
                    AND gerenSaiMaterial = '$gerenSaiMaterial'
                    AND gerenRelaMaterial = '$gerenRelaMaterial'
                    AND gerenComputador = '$gerenComputador'
                    AND gerenImpressora = '$gerenImpressora'";

                     try 
                        {
                            $listar = $conn->query($sql);
                            $buscar = $listar->fetchAll(PDO::FETCH_OBJ);                            
                            $numRows = $listar->rowCount();
                        } 
                    catch (PDOException $exc)
                        {
                            $buscar = $exc->getTraceAsString();
                        }            
                    
                    $conn = null; $_SESSION['numRows'] = $numRows;
                    return $buscar;
                    $conn = null;	
                }

            public function TipoAcessoCadastrar($tipoAcesso) 
                {
                    $conn = Database::connect();					
                    $conn->exec('SET CHARACTER SET utf8');
                    $prepara = $conn->prepare("INSERT INTO tipoAcesso (gerenFuncionarios, gerenCargos,  gerenEntMaterial, gerenSaiMaterial, 
                    gerenRelaMaterial, gerenComputador, gerenImpressora)
                    VALUES(:BdgerenFuncionarios, :BdgerenCargos, :BdgerenEntMaterial, :BdgerenSaiMaterial, :BdgerenRelaMaterial,
                     :BdgerenComputador, :BdgerenImpressora)");   

                    //$BdidAcesso    = $tipoAcesso ->getIdAcesso();
                    $BdgerenFuncionarios = $tipoAcesso ->getGerenFuncionarios();
                    $BdgerenCargos       = $tipoAcesso ->getGerenCargos();
                    $BdgerenEntMaterial  = $tipoAcesso ->getGerenEntMaterial();
                    $BdgerenSaiMaterial  = $tipoAcesso ->getGerenSaiMaterial();
                    $BdgerenRelaMaterial = $tipoAcesso ->getGerenRelaMaterial();
                    $BdgerenComputador   = $tipoAcesso ->getGerenComputador();  
                    $BdgerenImpressora   = $tipoAcesso ->getGerenImpressora();
                   

                    //$prepara->bindParam(":BdIdAcesso ",$BdIdAcesso);
                    $prepara->bindParam(":BdgerenFuncionarios",$BdgerenFuncionarios);
                    $prepara->bindParam(":BdgerenCargos",$BdgerenCargos);
                    $prepara->bindParam(":BdgerenEntMaterial",$BdgerenEntMaterial);
                    $prepara->bindParam(":BdgerenSaiMaterial",$BdgerenSaiMaterial);
                    $prepara->bindParam(":BdgerenRelaMaterial",$BdgerenRelaMaterial);
                    $prepara->bindParam(":BdgerenComputador",$BdgerenComputador);
                    $prepara->bindParam(":BdgerenImpressora",$BdgerenImpressora);
                    
                    
                    $prepara->execute();   
                    $idAcesso  = $conn->lastInsertId();
                    $_SESSION['idAcesso'] = $idAcesso ;      
                    $conn = null;
                }

            //FIM DAS FUNÇÕES RELACIONADAS AO TIPO DE ACESSO

            //INÍCIO DAS FUNÇÕES RELACIONADAS AOS FUNCIONÁRIOS
            public function FuncionarioCadastrar($funcionario) 
                {	
                    $conn = Database::connect();                        
                    $conn->exec('SET CHARACTER SET utf8');
                            
                    $prepara = $conn->prepare("INSERT INTO funcionario(nomeFuncionario, statusFuncionario, login, senha, dataCadastro, dataAltCadastro, idCargo, idAcesso)
                                                VALUES(:BdnomeFuncionario, :BdstatusFuncionario, :Bdlogin, :Bdsenha, :BddataCadastro, :BddataAltCadastro, :BdidCargo, :BdidAcesso)");
        
                    //$BdidFuncionario     = $funcionario->getIdFuncionario();
                    $BdnomeFuncionario   = $funcionario->getNomeFuncionario(); 
                    $BdstatusFuncionario = $funcionario->getStatusFuncionario();
                    $Bdlogin             = $funcionario->getLogin();
                    $Bdsenha             = $funcionario->getSenha();   
                    $BddataCadastro      = $funcionario->getDataCadastro();                    
                    $BddataAltCadastro   = $funcionario->getDataAltCadastro();                
                    $BdidCargo           = $funcionario->getIdCargo();
                    $BdidAcesso          = $funcionario->getIdAcesso();
                            
                    //$prepara->bindParam(":BdidFuncionario", $BdidFuncionario);
                    $prepara->bindParam(":BdnomeFuncionario", $BdnomeFuncionario);
                    $prepara->bindParam(":BdstatusFuncionario", $BdstatusFuncionario);  
                    $prepara->bindParam(":Bdlogin", $Bdlogin); 
                    $prepara->bindParam(":Bdsenha", $Bdsenha);                   
                    $prepara->bindParam(":BddataCadastro", $BddataCadastro);
                    $prepara->bindParam(":BddataAltCadastro", $BddataAltCadastro); 
                    $prepara->bindParam(":BdidCargo", $BdidCargo);            
                    $prepara->bindParam(":BdidAcesso", $BdidAcesso);
                        
                    $prepara->execute();
                
                    $conn = null;
                } 

           
            //FIM DAS FUNÇÕES RELACIONADAS AOS FUNCIONÁRIOS
                
            //INÍCIO DAS FUNÇÕES RELACIONADAS AO LOCAL
            public function VerificarSetor($nomeDivisao,$localizacao,$nomeLocal) 
                {					
                    $conn = Database::connect();                    
                    $conn->exec('SET CHARACTER SET utf8');
                    
                    $sql = "SELECT * FROM setor s, divisao d
                    WHERE d.divisao = '$nomeDivisao'
                    AND d.idDivisao = s.idDivisao
                    AND s.nomeLocal = '$nomeLocal'
                    AND s.localizacao = '$localizacao'";
                    
                    try 
                        {
                            $listar = $conn->query($sql);
                            $buscar = $listar->fetchAll(PDO::FETCH_OBJ);  
                            //$numRows = $listar->rowCount();
                        } 
                    catch (PDOException $exc)
                        {
                            $buscar = $exc->getTraceAsString();
                        }     
                        
                    //session_start();
                    //$_SESSION['msg1'] = $RESPOSTA1;
                    //$_SESSION['numRows'] = $numRows;
                    return $buscar; 
                    $conn = null;	
                }

            public function CadastrarSetor($local) 
                {	
                    $conn = Database::connect();                                
                    $conn->exec('SET CHARACTER SET utf8');                                
                    $prepara = $conn->prepare("INSERT INTO setor(idDivisao, localizacao, ramal, respSetor, nomeLocal) 
                    VALUES (:idDivisaoBd, :localizacaoBd,:ramalBd,:respSetorBd, :nomeLocalBd )");
                                
                    //$BdidSetor = $local->getIdSetor();
                    $BdidDivisao   = $local->getIdDivisao();
                    $Bdlocalizacao = $local->getLocalizacao();
                    $Bdramal	   = $local->getRamal();
                    $BdrespSetor   = $local->getRespSetor();
                    $BdnomeLocal   = $local->getNomeLocal();
                                
                    //$prepara->bindParam(":idSetorBd", $BdidSetor);
                    $prepara->bindParam(":idDivisaoBd", $BdidDivisao);
                    $prepara->bindParam(":localizacaoBd", $Bdlocalizacao);
                    $prepara->bindParam(":ramalBd", $Bdramal);
                    $prepara->bindParam(":respSetorBd",  $BdrespSetor);
                    $prepara->bindParam(":nomeLocalBd",  $BdnomeLocal);
                                
                    $prepara->execute();                                 
                    $localId = $conn->lastInsertId();
                                
                    session_start();
                    //$_SESSION['msg1'] = $RESPOSTA1;
                    $_SESSION['localid'] = $localId;
                    $conn = null;
                }

            public function Buscalocal($idSetor) 
                {					
                    $conn = Database::connect();                                
                    $conn->exec('SET CHARACTER SET utf8');                                
                    //$sql = "SELECT d.divisao, s.localizacao, s.nomeLocal FROM setor s, divisao d 
                    $sql = "SELECT * FROM setor s, divisao d 
                    WHERE s.idSetor = '$idSetor' 
                    AND s.idDivisao = d.idDivisao";
                                
                     try 
                        {
                            $listar = $conn->query($sql);
                            $buscar = $listar->fetchAll(PDO::FETCH_OBJ);
                        } 
                    catch (PDOException $exc)
                        {
                            $buscar = $exc->getTraceAsString();
                        }
                    return $buscar;
                    $conn = null;	
                }
            //FIM DAS FUNÇÕES RELACIONADAS AO LOCAL                      

            //INÍCIO DAS FUNÇÕES RELACIONADAS AO COMPUTADOR
            //FIM DAS FUNÇÕES RELACIONADAS AO COMPUTADOR

            //INÍCIO DAS FUNÇÕES RELACIONADAS AIMPRESSORA 
            public function CadastrarImpre($impressora) 
                {	
                    $conn = Database::connect();
                    
                    $conn->exec('SET CHARACTER SET utf8');
                    
                    $prepara = $conn->prepare("INSERT INTO impressoras(nomeImpressora, numSerie, ipImpressora, macImpressora, tipoToner, 
                    statusImpressora, modeloImpressora, dataCadastro, respCadastro, dataAltCadastro, respAltCadastro, obsImpressora,
                    idFuncionario, idSetor) 
                    VALUES(:nomeImpressoraBd, :numSerieBd, :ipImpressoraBd, :macImpressoraBd, :tipoTonerBd, :statusImpressoraBd, 
                    :modeloImpressoraBd, :dataCadastroBd, :respCadastroBd, :dataAltCadastroBd, :respAltCadastroBd, :obsImpressoraBd, 
                    :idFuncionarioBd, :idSetorBd)");
                        
                    //$BdidImpressora		= $impressora->getIdImpressora();
                    $BdnomeImpressora  	= $impressora->getNomeImpressora();
                    $BdnumSerie	        = $impressora->getNumSerie();
                    $BdipImpressora  	= $impressora->getIpImpressora();
                    $BdmacImpressora    = $impressora->getMacImpressora();
                    $BdtipoToner        = $impressora->getTipoToner();
                    $BdstatusImpressora = $impressora->getStatusImpressora();
                    $BdmodeloImpressora = $impressora->getModeloImpressora();
                    $BddataCadastro 	= $impressora->getDataCadastro();
                    $BdrespCadastro 	= $impressora->getRespCadastro();
                    $BddataAltCadastro  = $impressora->getDataAltCadastro();
                    $BdrespAltCadastro 	= $impressora->getRespAltCadastro();
                    $BdobsImpressora  	= $impressora->getObsImpressora();
                    $BdidFuncionario	= $impressora->getIdFuncionario();
                    $BdidSetor 			= $impressora->getIdSetor();
                                        
                    //$prepara->bindParam(":idImpressoraBd", $BdidImpressora);
                    $prepara->bindParam(":nomeImpressoraBd", $BdnomeImpressora);
                    $prepara->bindParam(":numSerieBd", $BdnumSerie);
                    $prepara->bindParam(":ipImpressoraBd",  $BdipImpressora);
                    $prepara->bindParam(":macImpressoraBd", $BdmacImpressora);
                    $prepara->bindParam(":tipoTonerBd", $BdtipoToner);
                    $prepara->bindParam(":statusImpressoraBd", $BdstatusImpressora);
                    $prepara->bindParam(":modeloImpressoraBd", $BdmodeloImpressora);
                    $prepara->bindParam(":dataCadastroBd", $BddataCadastro);
                    $prepara->bindParam(":respCadastroBd", $BdrespCadastro);
                    $prepara->bindParam(":dataAltCadastroBd", $BddataAltCadastro);
                    $prepara->bindParam(":respAltCadastroBd",  $BdrespAltCadastro);
                    $prepara->bindParam(":obsImpressoraBd",  $BdobsImpressora); 
                    $prepara->bindParam(":idFuncionarioBd",  $BdidFuncionario);
                    $prepara->bindParam(":idSetorBd",  $BdidSetor);

                    $prepara->execute();                 
                    $conn = null;
                }
           
             public function IpressoraUpdateSetor($idImpressora,$idSetor)
                {	
                    $conn = Database::connect();					
                    $conn->exec('SET CHARACTER SET utf8');
                    
                    $sql = "UPDATE impressoras SET  idSetor = $idSetor  WHERE idImpressora = $idImpressora";
                    
                    try 
                        {
                            $listar = $conn->query($sql);
                            $buscar = $listar->fetchAll(PDO::FETCH_OBJ);
                        } 
                    catch (PDOException $exc)
                        {
                            $buscar = $exc->getTraceAsString();
                        }

                    $conn = null;
                }
                

            //FIM DAS FUNÇÕES RELACIONADAS AIMPRESSORA 

            //INÍCIO DAS FUNÇÕES RELACIONADAS AOS MATERIAIS
            //FIM DAS FUNÇÕES RELACIONADAS AOS MATERIAIS

            //INÍCIO DAS FUNÇÕES RELACIONADAS AO HISTORICO
            //FIM DAS FUNÇÕES RELACIONADAS AO HISTORICO   
        }
?>