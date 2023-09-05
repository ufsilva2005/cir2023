<?php
	class Impressora
		{
			private $idImpressora;
			private $nomeImpressora;
			private $numSerie;
			private $ipImpressora;
			private $macImpressora;
			private $tipoToner;
			private $colorida;
			private $statusImpressora;
			private $conexaoImp;
			private $modeloImpressora;
			private $dataCadastro;
			private $respCadastro;	
			private $dataAltCadastro;
			private $respAltCadastro;
			private $obsImpressora;
			private $idFuncionario;
			private $idSetor;
			
			// Recebe  parametros 
			public function __construct ($idImpressora="", $nomeImpressora = null,  $numSerie = null, $ipImpressora = null, 
			$macImpressora = null, $tipoToner = null, $colorida = null, $statusImpressora = null, $conexaoImp = null, $modeloImpressora = null, $dataCadastro = null, $respCadastro = null, 
			$dataAltCadastro = null, $respAltCadastro = null, $obsImpressora = null, $idFuncionario = null, $idSetor = null) 
			
                {
					$this->idImpressora		= $idImpressora;
					$this->nomeImpressora   = $nomeImpressora;
					$this->numSerie			= $numSerie;
					$this->ipImpressora		= $ipImpressora;
					$this->macImpressora    = $macImpressora;
					$this->tipoToner		= $tipoToner;
					$this->colorida			= $colorida;
					$this->statusImpressora = $statusImpressora;
					$this->conexaoImp 		= $conexaoImp;
					$this->modeloImpressora = $modeloImpressora;
					$this->dataCadastro    	= $dataCadastro;
					$this->respCadastro		= $respCadastro;
					$this->dataAltCadastro	= $dataAltCadastro;
					$this->respAltCadastro	= $respAltCadastro;
					$this->obsImpressora	= $obsImpressora;					
					$this->idFuncionario	= $idFuncionario;
					$this->idSetor			= $idSetor;
				}
				
				 ///metodos get e metodos set
			//ID DO IMPRESSORA
			public function getIdImpressora() 
				{     
					return $this->idImpressora;
				}
			public function setIdImpressora($idImpressora) 
				{     
					$this->idImpressora = $idImpressora;
				}
				
            //NOME DA IMPRESSORA
			public function getNomeImpressora() 
				{     
					return $this->nomeImpressora;
				}				
			public function setNomeImpressora($nomeImpressora) 
				{     
					$this->nomeImpressora = $nomeImpressora;
				}
						
			//NUMERO DE SERIE
			public function getNumSerie() 
				{     
					return $this->numSerie;
				}
			public function setNumSerie($numSerie) 
				{     
					$this->numSerie = $numSerie;
				}
				            			
             //IP DA IMPRESSORA
			public function getIpImpressora() 
				{     
					return $this->ipImpressora;
				}
			public function setIpImpressora($ipImpressora) 
				{     
					$this->ipImpressora = $ipImpressora;
				}
				
            //MAC DA IMPRESSORA
			public function getMacImpressora() 
				{     
					return $this->macImpressora;
				}
			public function setMacImpressora($macImpressora) 
				{     
					$this->macImpressora = $macImpressora;
				}
				
             //TIPO DE TONER
			public function getTipoToner() 
				{     
					return $this->tipoToner;
				}
			public function setTipoToner($tipoToner) 
				{     
					$this->tipoToner = $tipoToner;
				}

			 //TIPO DE TONER
			public function getColorida() 
				{     
					return $this->colorida;
				}
			public function setColorida($colorida) 
				{     
					$this->colorida = $colorida;
				}
				
			//Status DA IMPRESSORA
			public function getStatusImpressora() 
				{     
					return $this->statusImpressora;
				}
			public function setStatusImpressora($statusImpressora) 
				{     
					$this->statusImpressora = $statusImpressora;
				}
			
			//conexao DA IMPRESSORA
			public function getConexaoImp() 
				{     
					return $this->conexaoImp;
				}
			public function setConexaoImp($conexaoImp) 
				{     
					$this->conexaoImp = $conexaoImp;
				}

			//Modelo DA IMPRESSORA
			public function getModeloImpressora() 
				{     
					return $this->modeloImpressora;
				}
			public function setModeloImpressora($modeloImpressora) 
				{     
					$this->modeloImpressora = $modeloImpressora;
				}
				
			 //DATA DE CADASTRO
			public function getDataCadastro() 
				{     
					return $this->dataCadastro;
				}
			public function setDataCadastro($dataCadastro) 
				{     
					$this->dataCadastro = $dataCadastro;
				}
				
            //RESPONSAVEL CADASTRO
			public function getRespCadastro() 
				{     
					return $this->respCadastro;
				}
			public function setRespCadastro($respCadastro) 
				{     
					$this->respCadastro = $respCadastro;
				}
				
			//DATA ALTERA CADASTRO
			public function getDataAltCadastro() 
				{     
					return $this->dataAltCadastro;
				}
			public function setDataAltCadastro($dataAltCadastro) 
				{     
					$this->dataAltCadastro = $dataAltCadastro;
				}
			  
			//RESPONSAVEL ALTERA CADASTRO
			public function getRespAltCadastro() 
				{     
					return $this->respAltCadastro;
				}
			public function setRespAltCadastro($respAltCadastro) 
				{     
					$this->respAltCadastro = $respAltCadastro;
				}
				
			//OBS
			public function getObsImpressora() 
				{     
					return $this->obsImpressora;
				}
			public function setObsImpressora($obsImpressora) 
				{     
					$this->obsImpressora = $obsImpressora;
				}			
                      
            //ID DO Funcionario
			public function getIdFuncionario() 
				{     
					return $this->idFuncionario;
				}
			public function setIdFuncionario($idFuncionario) 
				{     
					$this->idFuncionario = $idFuncionario;
				}	
				
			//ID DO SETOR
			public function getIdSetor() 
				{     
					return $this->idSetor;
				}
			public function setIdSetor($idSetor) 
				{     
					$this->idSetor = $idSetor;
				}	
			
            // Método para exibir
			public function exibir() 
				{
                    echo '-- INFORMACOES DA IMPRESSORA --';
                    echo '</br>ID -> ';
					echo $this-> idImpressora . '<br>';	
					
					echo '</br>Nome-> ';
					echo $this->nomeImpressora . '<br>';
					
					//echo '</br>Nº de Patrimônio -> ';
					//echo $this->numPatrimonio . '<br>';
					
					echo '</br>Nº de série -> ';
					echo $this->numSerie . '<br>';
					
					//echo '</br>N° da cir -> ';
					//echo $this->numCir . '<br>';
					
					echo '</br>Ip -> ';
					echo $this->ipImpressora . '<br>';
					
					echo '</br>Mac-> ';
					echo $this->macImpressora . '<br>';
					
					echo '</br>Tipo do tonner -> ';
					echo $this->tipoToner . '<br>';

					echo '</br>Tipo do tonner2 -> ';
					echo $this->colorida . '<br>';
					
					echo '</br>StatusImpressora -> ';
					echo $this->statusImpressora . '<br>';

					echo '</br>$conexaoImp -> ';
					echo $this->conexaoImp . '<br>';
					
					echo '</br> ModeloImpressora -> ';
					echo $this->modeloImpressora . '<br>';
					
					echo '</br>Data de cadastro -> ';
					echo $this->dataCadastro . '<br>';
					
					echo '</br>Resp Cadastro -> ';
					echo $this->respCadastro . '<br>';
					
					echo '</br>Data Alt Cadastro -> ';
					echo $this->dataAltCadastro . '<br>';
					
					echo '</br>Resp Alt Cadastro -> ';
					echo $this->respAltCadastro . '<br>';					
					
					echo '</br>Obs. ->';
					echo $this->obsImpressora	. '<br>';

					echo '</br>Id do Funcionario-> ';
					echo $this->idFuncionario . '<br>';

					echo '</br>Id do Setor-> ';
					echo $this->idSetor . '<br>';
				}
		}
?>
