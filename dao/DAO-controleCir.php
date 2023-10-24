<?php
    //session_start();
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
                                    
                    $sql = "SELECT * FROM $nomeTabela WHERE $tipoOpcao LIKE '$valorOpcao' ";
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

                   
                    $_SESSION['numRows'] = $numRows;

                    return $buscar;                        
                    $conn = null;	
                }

            public function ListarOpcao2($nomeTabela, $tipoOpcao, $valorOpcao)  
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

                   
                    $_SESSION['numRows'] = $numRows;
                    return $buscar;                        
                    $conn = null;	
                }

            public function ListarOpcao3($nomeTabela, $tipoOpcao, $valorOpcao)  
                {
                    $conn = Database::connect();
                    $conn->exec('SET CHARACTER SET utf8');
                                    
                    $sql = "SELECT * FROM $nomeTabela WHERE $tipoOpcao LIKE '$valorOpcao'  ORDER BY dataAltera DESC";
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

                   
                    $_SESSION['numRows'] = $numRows;

                    return $buscar;                        
                    $conn = null;	
                }

            public function ListarOpcaoAtivo($nomeTabela, $tipoOpcao, $valorOpcao,  $status, $valorStatus)  
                {
                    $conn = Database::connect();
                    $conn->exec('SET CHARACTER SET utf8');
                                    
                    $sql = "SELECT * FROM $nomeTabela WHERE $tipoOpcao LIKE '$valorOpcao%' AND  $status = '$valorStatus'";
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

                   
                    $_SESSION['numRows'] = $numRows;
                    return $buscar;                        
                    $conn = null;	
                }

            public function ListarOpcaoAtivo2($nomeTabela, $tipoOpcao, $valorOpcao, $valorOpcao2,  $status, $valorStatus)  
                {
                    $conn = Database::connect();
                    $conn->exec('SET CHARACTER SET utf8');
                                    
                    $sql = "SELECT * FROM $nomeTabela WHERE $tipoOpcao LIKE '$valorOpcao%'
                    OR $tipoOpcao LIKE '$valorOpcao2%' AND  $status = '$valorStatus'";
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
                   
                    $_SESSION['numUser'] = $numRows;
                    return $buscar;
                    $conn = null;	
                }

            public function ListarTudo($nomeTabela) 
                {					
                    $conn = Database::connect();
                    
                    $conn->exec('SET CHARACTER SET utf8');
                    
                    $sql = "SELECT * FROM $nomeTabela";
                    
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
                    
                    $_SESSION['numRows'] = $numRows;
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

            public function VerificarSetor2($divisaoBd,$localizacao,$nomeLocal) 
                {					
                    $conn = Database::connect();                    
                    $conn->exec('SET CHARACTER SET utf8');
                    
                    $sql = "SELECT * FROM setor s, divisao d
                    WHERE d.idDivisao = '$divisaoBd'
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
            public function CadastrarComp($computador) 
                {	
                    $conn = Database::connect();                
                    $conn->exec('SET CHARACTER SET utf8');                
                    $prepara = $conn->prepare("INSERT INTO computador (numCir, numPatrimonio, numPatReitoria, nomeComputador, 
                    dataCadastro, respCadastro, dataAltCadastro, respAltCadastro, sistemaOpera, modelMaquina, memoria, numIp, numMac, 
                    tipoHD, nomeUsuario, statusComp,	obs, idFuncionario, idSetor, idTipoProcessador)
                    VALUES(:numCirBd, :numPatrimonioBd, :numPatReitoriaBd, :nomeComputadorBd, :dataCadastroBd, :respCadastroBd, 
                    :dataAltCadastroBd, :respAltCadastroBd, :sistemaOperaBd, :modelMaquinaBd, :memoriaBd, :numIpBd, :numMacBd,
                    :tipoHDBd, :nomeUsuarioBd, :statusCompBd, :obsBd, :idFuncionarioBd, :idSetorBd, :idTipoProcessadorBd)");
                    
                    //$BdidComputador		= $computador->getIdComputador();
                    $BdnumCir  			 = $computador->getNumCir();
                    $BdnumPatrimonio  	 = $computador->getNumPatrimonio();
                    $BdnumPatReitoria  	 = $computador->getNumPatReitoria();
                    $BdnomeComputador	 = $computador->getNomeComputador();
                    $BddataCadastro 	 = $computador->getDataCadastro();
                    $BdrespCadastro    	 = $computador->getRespCadastro();                    
                    $BddataAltCadastro   = $computador->getDataAltCadastro();  
                    $BdrespAltCadastro   = $computador->getRespAltCadastro();                  
                    $BdsistemaOpera  	 = $computador->getSistemaOpera();
                    $BdmodelMaquina  	 = $computador->getModelMaquina();
                    $Bdmemoria 			 = $computador->getMemoria();
                    $BdnumIp  			 = $computador->getNumIp();
                    $BdnumMac 			 = $computador->getNumMac();                   
                    $BdtipoHD  			 = $computador->getTipoHD();
                    $BdnomeUsuario  	 = $computador->getNomeUsuario();
                    $BdstatusComp 		 = $computador->getStatusComp();
                    $Bdobs  			 = $computador->getObs();
                    $BdidFuncionario 	 = $computador->getIdFuncionario();
                    $BdidSetor			 = $computador->getIdSetor();
                    $BdidTipoProcessador = $computador->getIdTipoProcessador();
                        
                    //$prepara->bindParam(":idComputadorBd",    $BdidComputador);
                    $prepara->bindParam(":numCirBd", $BdnumCir);
                    $prepara->bindParam(":numPatrimonioBd", $BdnumPatrimonio);
                    $prepara->bindParam(":numPatReitoriaBd", $BdnumPatReitoria);
                    $prepara->bindParam(":nomeComputadorBd", $BdnomeComputador);
                    $prepara->bindParam(":dataCadastroBd", $BddataCadastro);
                    $prepara->bindParam(":respCadastroBd", $BdrespCadastro);                    
                    $prepara->bindParam(":dataAltCadastroBd", $BddataAltCadastro);
                    $prepara->bindParam(":respAltCadastroBd", $BdrespAltCadastro);
                    $prepara->bindParam(":sistemaOperaBd", $BdsistemaOpera);
                    $prepara->bindParam(":modelMaquinaBd", $BdmodelMaquina);
                    $prepara->bindParam(":memoriaBd", $Bdmemoria);
                    $prepara->bindParam(":numIpBd", $BdnumIp);
                    $prepara->bindParam(":numMacBd", $BdnumMac);                   
                    $prepara->bindParam(":tipoHDBd", $BdtipoHD);
                    $prepara->bindParam(":nomeUsuarioBd", $BdnomeUsuario);
                    $prepara->bindParam(":statusCompBd", $BdstatusComp);
                    $prepara->bindParam(":obsBd", $Bdobs);
                    $prepara->bindParam(":idFuncionarioBd", $BdidFuncionario);
                    $prepara->bindParam(":idSetorBd", $BdidSetor);
                    $prepara->bindParam(":idTipoProcessadorBd", $BdidTipoProcessador);

                    $prepara->execute();                        
                    $conn = null;
                }

            public function AtivaDesativaComp($idComputador,$statusComp)
				{
					$conn = Database::connect();					
					$conn->exec('SET CHARACTER SET utf8');					
					$sql = "UPDATE computador 
                    SET statusComp = '$statusComp'
                    WHERE idComputador = '$idComputador'";
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
                
            public function BuscaPorDivComp($valorPesquisa)  
                {
                    $conn = Database::connect();
                    $conn->exec('SET CHARACTER SET utf8');
                                    
                    $sql = "SELECT * FROM divisao d, setor s, computador c 
                            WHERE d.divisao = '$valorPesquisa'
                            AND d.idDivisao = s.idDivisao
                            AND s.idSetor = c.idSetor";
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
                    $_SESSION['numRows'] = $numRows;
                    return $buscar;                        
                    $conn = null;	
                }

            public function CadastrarTipoProce($modeloProce) 
                {	
                    $conn = Database::connect();
                    
                    $conn->exec('SET CHARACTER SET utf8');
                    
                    $prepara = $conn->prepare("INSERT INTO tipoProcessadores(descricao, statusTipo) 
                    VALUES(:descricaoBd, :statusTipoBd)");
                        
                    //$BdidTipoProcessador = $modeloProce->getIdTipoProcessador();
                    $Bddescricao  = $modeloProce->getDescricao();
                    $BdstatusTipo = $modeloProce->getStatusTipo();  
                                        
                    //$prepara->bindParam(":idTipoProcessadorBd", $BdidTipoProcessador;
                    $prepara->bindParam(":descricaoBd",  $Bddescricao);
                    $prepara->bindParam(":statusTipoBd", $BdstatusTipo);

                    $prepara->execute();                 
                    $conn = null;
                }

            public function ComputadorUpdateSetor($idComputador,$idSetor)
                {
                    $conn = Database::connect();                    
                    $conn->exec('SET CHARACTER SET utf8');                    
                    $sql = "UPDATE computador SET idSetor = '$idSetor' WHERE idComputador = '$idComputador'";
                    
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
            //FIM DAS FUNÇÕES RELACIONADAS AO COMPUTADOR

            //INÍCIO DAS FUNÇÕES RELACIONADAS A IMPRESSORA 
            public function CadastrarImpre($impressora) 
                {	
                    $conn = Database::connect();
                    
                    $conn->exec('SET CHARACTER SET utf8');
                    
                    $prepara = $conn->prepare("INSERT INTO impressoras(nomeImpressora, numSerie, ipImpressora, macImpressora, tipoToner, 
                    colorida, statusImpressora, conexaoImp, modeloImpressora, dataCadastro, respCadastro, dataAltCadastro, respAltCadastro, 
                    obsImpressora, idFuncionario, idSetor) 
                    VALUES(:nomeImpressoraBd, :numSerieBd, :ipImpressoraBd, :macImpressoraBd, :tipoTonerBd, :coloridaBd, :statusImpressoraBd, 
                    :conexaoImpBd, :modeloImpressoraBd, :dataCadastroBd, :respCadastroBd, :dataAltCadastroBd, :respAltCadastroBd, 
                    :obsImpressoraBd, :idFuncionarioBd, :idSetorBd)");
                        
                    //$BdidImpressora		= $impressora->getIdImpressora();
                    $BdnomeImpressora  	= $impressora->getNomeImpressora();
                    $BdnumSerie	        = $impressora->getNumSerie();
                    $BdipImpressora  	= $impressora->getIpImpressora();
                    $BdmacImpressora    = $impressora->getMacImpressora();
                    $BdtipoToner        = $impressora->getTipoToner();
                    $Bdcolorida         = $impressora->getColorida();
                    $BdstatusImpressora = $impressora->getStatusImpressora();
                    $BdconexaoImp       = $impressora->getConexaoImp(); 
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
                    $prepara->bindParam(":coloridaBd", $Bdcolorida);
                    $prepara->bindParam(":statusImpressoraBd", $BdstatusImpressora);
                    $prepara->bindParam(":conexaoImpBd", $BdconexaoImp);
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

            public function BuscaModelo($idModelo, $idImpressora) 
                {					
                    $conn = Database::connect();                                
                    $conn->exec('SET CHARACTER SET utf8');  
                    $sql = "SELECT m.modeloImpressora FROM modeloImpressora m, impressoras i
                    WHERE i. idImpressora = $idImpressora
                    AND m.idModelo = '$idModelo' 
                    AND m.idModelo = i.modeloImpressora";
                                
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

            public function IpressoraUpdateSetor($idImpressora,$idSetor)
                {
                    $conn = Database::connect();
                    
                    $conn->exec('SET CHARACTER SET utf8');
                    
                    $sql = "UPDATE impressoras SET idSetor = '$idSetor' WHERE idImpressora = '$idImpressora'";
                    
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

            public function UpdateImpre($impressora) 
                {	
                    $BdidImpressora		= $impressora->getIdImpressora();
                    $BdnomeImpressora  	= $impressora->getNomeImpressora();
                    $BdnumSerie	        = $impressora->getNumSerie();
                    $BdipImpressora  	= $impressora->getIpImpressora();
                    $BdmacImpressora    = $impressora->getMacImpressora();
                    $BdtipoToner        = $impressora->getTipoToner();
                    $BdstatusImpressora = $impressora->getStatusImpressora();
                    $BdconexaoImp       = $impressora->getConexaoImp(); 
                    $BdmodeloImpressora = $impressora->getModeloImpressora();
                    $BddataCadastro 	= $impressora->getDataCadastro();
                    $BdrespCadastro 	= $impressora->getRespCadastro();
                    $BddataAltCadastro  = $impressora->getDataAltCadastro();
                    $BdrespAltCadastro 	= $impressora->getRespAltCadastro();
                    $BdobsImpressora  	= $impressora->getObsImpressora();
                    $BdidFuncionario	= $impressora->getIdFuncionario();
                    $BdidSetor 			= $impressora->getIdSetor();
                    
                    $conn = Database::connect();                    
                    $conn->exec('SET CHARACTER SET utf8');
                    
                    $prepara = $conn->prepare("UPDATE impressoras SET nomeImpressora=:nomeImpressoraBd, numSerie=:numSerieBd,
                    ipImpressora=:ipImpressoraBd, macImpressora=:macImpressoraBd, tipoToner=:tipoTonerBd, statusImpressora=:statusImpressoraBd,
                    conexaoImp=:conexaoImpBd ,modeloImpressora=:modeloImpressoraBd, dataCadastro=:dataCadastroBd, respCadastro=:respCadastroBd, 
                    dataAltCadastro=:dataAltCadastroBd, respAltCadastro=:respAltCadastroBd, obsImpressora=:obsImpressoraBd, idFuncionario=:idFuncionarioBd,
                    idSetor=:idSetorBd WHERE idImpressora=:idImpressoraBd"); 
                   
                    $prepara->bindParam(":idImpressoraBd", $BdidImpressora);
                    $prepara->bindParam(":nomeImpressoraBd", $BdnomeImpressora);
                    $prepara->bindParam(":numSerieBd", $BdnumSerie);
                    $prepara->bindParam(":ipImpressoraBd",  $BdipImpressora);
                    $prepara->bindParam(":macImpressoraBd", $BdmacImpressora);
                    $prepara->bindParam(":tipoTonerBd", $BdtipoToner);
                    $prepara->bindParam(":statusImpressoraBd", $BdstatusImpressora);
                    $prepara->bindParam(":conexaoImpBd", $BdconexaoImp);
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

            public function BuscaPorDivisao($valorPesquisa)  
                {
                    $conn = Database::connect();
                    $conn->exec('SET CHARACTER SET utf8');
                                    
                    $sql = "SELECT * FROM divisao d, setor s, impressoras i 
                            WHERE d.divisao = '$valorPesquisa'
                            AND d.idDivisao = s.idDivisao
                            AND s.idSetor = i.idSetor";
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
                    $_SESSION['numRows'] = $numRows;
                    return $buscar;                        
                    $conn = null;	
                }

            public function AtivaDesativa($idImpressora,$statusImpressora)
				{
					$conn = Database::connect();					
					$conn->exec('SET CHARACTER SET utf8');					
					$sql = "UPDATE impressoras 
                    SET statusImpressora = '$statusImpressora'
                    WHERE idImpressora = '$idImpressora'";
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
                
            public function CadastrarModeloImp($modeloImp) 
                {	
                    $conn = Database::connect();
                    
                    $conn->exec('SET CHARACTER SET utf8');
                    
                    $prepara = $conn->prepare("INSERT INTO modeloImpressora(statusModelo, modeloImpressora) 
                    VALUES(:statusModeloBd, :modeloImpressoraBd)");
                        
                    //$BdidModelo	    = $modeloImp->getIdModelo();
                    $BdstatusModelo  	= $modeloImp->getStatusModelo();                    
                    $BdmodeloImpressora = $modeloImp->getModeloImpressora();
                                        
                    //$prepara->bindParam(":idModeloBd", $BdidModelo);
                    $prepara->bindParam(":statusModeloBd", $BdstatusModelo);
                    $prepara->bindParam(":modeloImpressoraBd",  $BdmodeloImpressora);

                    $prepara->execute();                 
                    $conn = null;
                }
            //FIM DAS FUNÇÕES RELACIONADAS A IMPRESSORA 

            //INÍCIO DAS FUNÇÕES RELACIONADAS AOS MATERIAIS
             public function BuscarCodigo() 
                {					
                    $conn = Database::connect();
                    
                    $conn->exec('SET CHARACTER SET utf8');
                    
                    $sql = "SELECT * FROM `material` WHERE codigo LIKE 'cir%' ORDER BY codigo DESC LIMIT 1 ";
                    
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
                        
                    return $buscar;
                    $conn = null;	
                }

            public function CadastrarMaterial($material) 
                {	
                    $conn = Database::connect();
                    
                    $conn->exec('SET CHARACTER SET utf8');
                    
                    $prepara = $conn->prepare("INSERT INTO material(codigo, descricao, numSerie, unidade, quantidade, statusMat) 
                    VALUES(:codigoBd, :descricaoBd, :numSerieBd, :unidadeBd, :quantidadeBd, :statusMatBd)");
                        
                    //$Bdidmaterial	= $material->getIdmaterial();
                    $Bdcodigo  	  = $material->getCodigo();                    
                    $Bddescricao  = $material->getDescricao();
                    $BdnumSerie	  = $material->getNumSerie();
                    $Bdunidade    = $material->getUnidade();
                    $Bdquantidade = $material->getQuantidade();
                    $BdstatusMat  = $material->getStatusMat();
                                        
                    //$prepara->bindParam(":idmaterialBd", $Bdidmaterial);
                    $prepara->bindParam(":codigoBd", $Bdcodigo);
                    $prepara->bindParam(":descricaoBd",  $Bddescricao);
                    $prepara->bindParam(":numSerieBd", $BdnumSerie);                   
                    $prepara->bindParam(":unidadeBd", $Bdunidade);
                    $prepara->bindParam(":quantidadeBd", $Bdquantidade);
                    $prepara->bindParam(":statusMatBd", $BdstatusMat);

                    $prepara->execute();                 
                    $conn = null;
                }
          
            //FIM DAS FUNÇÕES RELACIONADAS AOS MATERIAIS

            //INÍCIO DAS FUNÇÕES RELACIONADAS AO HISTORICO
            public function HitoricoCadastrar($historico) 
                {
                    $conn = Database::connect();					
                    $conn->exec('SET CHARACTER SET utf8');
                    $prepara = $conn->prepare("INSERT INTO historico (nomeAlteracoes, dataAltera,  respAlteracoes, idComputador, 
                    idImpressora, idFuncionario)
                    VALUES(:BdnomeAlteracoes, :BddataAltera, :BdrespAlteracoes, :BdidComputador, :BdidImpressora,:BdidFuncionario)");   

                    //$BdidHistorico    = $hitorico ->getIdHistorico();
                    $BdnomeAlteracoes = $historico ->getNomeAlteracoes();
                    $BddataAltera     = $historico ->getDataAltera();
                    $BdrespAlteracoes = $historico ->getRespAlteracoes();
                    $BdidComputador   = $historico ->getIdComputador();
                    $BdidImpressora   = $historico ->getIdImpressora();
                    $BdidFuncionario  = $historico ->getIdFuncionario();  
                   

                    //$prepara->bindParam(":BdIdHistorico ",$BdIdHistorico);
                    $prepara->bindParam(":BdnomeAlteracoes",$BdnomeAlteracoes);
                    $prepara->bindParam(":BddataAltera",$BddataAltera);
                    $prepara->bindParam(":BdrespAlteracoes",$BdrespAlteracoes);
                    $prepara->bindParam(":BdidComputador",$BdidComputador);
                    $prepara->bindParam(":BdidImpressora",$BdidImpressora);
                    $prepara->bindParam(":BdidFuncionario",$BdidFuncionario);                    
                    
                    $prepara->execute();       
                    $conn = null;
                }
            //FIM DAS FUNÇÕES RELACIONADAS AO HISTORICO   
        }
?>