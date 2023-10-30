<?php
	class Monitor
		{
			private $idMonitor;
			private $numSerie;
            private $modeloMonitor;
			private $numPatMonitor;
			private $enpenhoTRH;
			private $numTermo;
			private $numPatReitMonitor;
            private $obsMonitor;
            private $statusMonitor;
            private $idComputador;
            private $respCadastro;
			private $dataCadastro;
			private $respAltCadastro;
			private $dataAltCadastro;		
			
			// Recebe  parametros 
			public function __construct ($idMonitor = "", $numSerie = null, $modeloMonitor = null, $numPatMonitor = null, $enpenhoTRH = null,
            $numTermo = null, $numPatReitMonitor = null, $obsMonitor = null, $statusMonitor = null, $idComputador = null, $respCadastro = null,            
			$dataCadastro = null, $respAltCadastro = null, $dataAltCadastro= null) 
			
				{
					$this->idMonitor		 = $idMonitor;
					$this->numSerie			 = $numSerie;
                    $this->modeloMonitor	 = $modeloMonitor;
					$this->numPatMonitor	 = $numPatMonitor;
					$this->enpenhoTRH 		 = $enpenhoTRH;
					$this->numTermo			 = $numTermo;
					$this->numPatReitMonitor = $numPatReitMonitor;
					$this->obsMonitor		 = $obsMonitor;
                    $this->statusMonitor	 = $statusMonitor;
                    $this->idComputador		 = $idComputador;
                    $this->respCadastro  	 = $respCadastro;                    
					$this->dataCadastro		 = $dataCadastro;
					$this->respAltCadastro   = $respAltCadastro;
                    $this->dataAltCadastro   = $dataAltCadastro;					
				}
				
			///metodos get e metodos set
			//ID DO Monitor
			public function getIdMonitor() 
				{     
					return $this->idMonitor;
				}
			public function setIdMonitor($idMonitor) 
				{     
					$this->idMonitor = $idMonitor;
				}
				
			//NUMERO DA CIR
			public function getNumSerie() 
				{     
					return $this->numSerie;
				}
			public function setNumSerie($numSerie) 
				{     
					$this->numSerie = $numSerie;
				}
			
            //MODELO DA MONITOR			
			public function getModeloMonitor() 
                {     
                    return $this->modeloMonitor;
                }
            public function setModeloMonitor($modeloMonitor) 
                {     
                    $this->modeloMonitor = $modeloMonitor;
                }
			//NUMERO DE PATRIMONIO HUCFF
			public function getNumPatMonitor() 
				{     
					return $this->numPatMonitor;
				}
			public function setNumPatMonitor($numPatMonitor) 
				{     
					$this->numPatMonitor = $numPatMonitor;
				}

			//NUMERO DE EMPENHO TRH
			public function getEnpenhoTRH() 
				{     
					return $this->enpenhoTRH;
				}
			public function setEnpenhoTRH($enpenhoTRH) 
				{     
					$this->enpenhoTRH = $enpenhoTRH;
				}

			//NUMERO DO TERMO
			public function getNumTermo() 
				{     
					return $this->numTermo;
				}
			public function setNumTermo($numTermo) 
				{     
					$this->numTermo = $numTermo;
				}
			
			//NUMERO DE PATRIMONIO REITORIA
			public function getNumPatReitMonitor() 
				{     
					return $this->numPatReitMonitor;
				}
			public function setNumPatReitMonitor($numPatReitMonitor) 
				{     
					$this->numPatReitMonitor = $numPatReitMonitor;
				}
				
            //Obs Monitor
			public function getObsMonitor() 
                {     
                    return $this->obsMonitor;
                }
            public function setObsMonitor($obsMonitor) 
                {     
                    $this->obsMonitor = $obsMonitor;
                }

            //STATUS DO Monitor
            public function getStatusMonitor() 
                {     
                    return $this->statusMonitor;
                }
            public function setStatusMonitor($statusMonitor) 
                {     
                    $this->statusMonitor = $statusMonitor;
                }
            //ID DO COMPUTADOR
            public function getIdComputador() 
                {     
                    return $this->idComputador;
                }
            public function setIdComputador($idComputador) 
                {     
                    $this->idComputador = $idComputador;
                }

            //ID DO FUNCIONARIO RESPONSAVEL PELO CADASTRO
            public function getRespCadastro() 
                {     
                    return $this->respCadastro;
                }
            public function setRespCadastro($respCadastro) 
                {     
                    $this->respCadastro = $respCadastro;
                }
			
			//DATA DO CADASTRO			
			public function getDataCadastro() 
				{     
					return $this->dataCadastro;
				}
			public function setDataCadastro($dataCadastro) 
				{     
					$this->dataCadastro = $dataCadastro;
				}
			
			//RESPONSAVEL PELO ALT CADASTRO			
			public function getRespAltCadastro() 
				{     
					return $this->respAltCadastro;
				}
			public function setRespAltCadastro($respAltCadastro) 
				{     
					$this->respAltCadastro = $respAltCadastro;
				}			

			//DATA ALT DO CADASTRO			
			public function getDataAltCadastro() 
				{     
					return $this->dataAltCadastro;
				}
			public function setDataAltCadastro($dataAltCadastro) 
				{     
					$this->dataAltCadastro = $dataAltCadastro;
				}
				
			// Método para exibir
			public function exibir() 
				{
                    echo '-- INFORMACOES DA MAQUINA --';
                    echo '</br>ID -> ';
					echo $this->idMonitor . '<br>';	

					echo '</br>Nº de Série -> ';
					echo $this->numSerie . '<br>';
					
                    echo '</br>Modelo -> ';
					echo $this->modeloMonitor . '<br>';

                    echo '</br>Nº Pat HU -> ';
					echo $this->numPatMonitor . '<br>';

                    echo '</br>Nº empenho TRH -> ';
                    echo $this->enpenhoTRH . '<br>';

					echo '</br>Nº Termo -> ';
					echo $this->numTermo . '<br>';

					echo '</br>Nº Pat Reitoria -> ';
					echo $this->numPatReitMonitor . '<br>';	

                    echo '</br>ObsMonitor -> ';
					echo $this->obsMonitor . '<br>';

					echo '</br>Status -> ';
					echo $this->statusMonitor . '<br>';

                    echo '</br>Id do Computador-> ';
					echo $this->idComputador . '<br>';
					
					echo '</br> Funcionario-> ';
					echo $this->respCadastro . '<br>';					

                    echo '</br>Data Cadastro -> ';
					echo $this->dataCadastro . '<br>';					
					
					echo '</br>Data alt-> ';
					echo $this->dataAltCadastro . '<br>';

					echo '</br>Responsavel alt -> ';
					echo $this->respAltCadastro . '<br>';					
				}
		}
?>
