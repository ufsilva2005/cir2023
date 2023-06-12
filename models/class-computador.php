<?php
	class Computador
		{
			private $idComputador;
			private $numCir;
			private $numPatrimonio;
			private $numPatReitoria;
			private $nomeComputador;
			private $dataCadastro;
			private $respCadastro;
			private $respAltCadastro;
			private $dataAltCadastro;
			private $sistemaOpera;
			private $modelMaquina;
			private $tipProcessador;
			private $memoria;
			private $numIp;
			private $numMac;
			private $capHD;
			private $statusComp;
			private $obs;
			private $idFuncionario;
			private $idSetor;
		
			
			// Recebe  parametros 
			public function __construct ($idComputador = "", $numCir = null, $numPatrimonio = null, $numPatReitoria = null, 
			$nomeComputador = null, $dataCadastro = null, $respCadastro = null, $respAltCadastro = null, $dataAltCadastro= null, 
			$sistemaOpera = null, $modelMaquina = null, $tipProcessador = null, $memoria = null, $numIp = null, $numMac = null, $capHD = null, 
			$statusComp = null, $obs = null, $idFuncionario = null, $idSetor = null) 
			
				{
					$this->idComputador		= $idComputador;
					$this->numCir			= $numCir;
					$this->numPatrimonio	= $numPatrimonio;
					$this->numPatReitoria   = $numPatReitoria;
					$this->nomeComputador	= $nomeComputador;
					$this->dataCadastro		= $dataCadastro;
					$this->respCadastro		= $respCadastro;
					$this->respAltCadastro  = $respAltCadastro;
                    $this->dataAltCadastro  = $dataAltCadastro;
					$this->sistemaOpera		= $sistemaOpera;
					$this->modelMaquina		= $modelMaquina;
					$this->tipProcessador	= $tipProcessador;
					$this->memoria			= $memoria;
					$this->numIp			= $numIp;
					$this->numMac			= $numMac;
					$this->capHD			= $capHD;
					$this->statusComp		= $statusComp;
					$this->obs				= $obs;
					$this->idFuncionario  	= $idFuncionario;
					$this->idSetor			= $idSetor;
				}
				
			///metodos get e metodos set
			//ID DO COMPUTADOR
			public function getIdComputador() 
				{     
					return $this->idComputador;
				}
			public function setIdComputador($idComputador) 
				{     
					$this->idComputador = $idComputador;
				}
				
			//NUMERO DA CIR
			public function getNumCir() 
				{     
					return $this->numCir;
				}
			public function setNumCir($numCir) 
				{     
					$this->numCir = $numCir;
				}
			
			//NUMERO DE PATRIMONIO
			public function getNumPatrimonio() 
				{     
					return $this->numPatrimonio;
				}
			public function setNumPatrimonio($numPatrimonio) 
				{     
					$this->numPatrimonio = $numPatrimonio;
				}
				
			public function getNumPatReitoria() 
				{     
					return $this->numPatReitoria;
				}
			public function setNumPatReitoria($numPatReitoria) 
				{     
					$this->numPatReitoria = $numPatReitoria;
				}
				

			//NOME DO COMPUTADOR
			public function getNomeComputador() 
				{     
					return $this->nomeComputador;
				}
			public function setNomeComputador($nomeComputador) 
				{     
					$this->nomeComputador = $nomeComputador;
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
			
			//RESPONSAVEL PÉLO CADASTRO			
			public function getRespCadastro() 
				{     
					return $this->respCadastro;
				}
			public function setRespCadastro($respCadastro) 
				{     
					$this->respCadastro = $respCadastro;
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
			
			//RESPONSAVEL PÉLO ALT CADASTRO			
			public function getRespAltCadastro() 
				{     
					return $this->respAltCadastro;
				}
			public function setRespAltCadastro($respAltCadastro) 
				{     
					$this->respAltCadastro = $respAltCadastro;
				}
			
			//SISTEMA OPERACIONAL
			public function getSistemaOpera() 
				{     
					return $this->sistemaOpera;
				}
			public function setSistemaOpera($sistemaOpera) 
				{     
					$this->sistemaOpera = $sistemaOpera;
				}
			
			//MODELO DA MAQUINA			
			public function getModelMaquina() 
				{     
					return $this->modelMaquina;
				}
			public function setModelMaquina($modelMaquina) 
				{     
					$this->modelMaquina = $modelMaquina;
				}
			
			//TIPO DO PROCESSADOR
			public function getTipProcessador() 
				{     
					return $this->tipProcessador;
				}
			public function setTipProcessador($tipProcessador) 
				{     
					$this->tipProcessador = $tipProcessador;
				}
			
			//INFORMACOES SOBRE A MEMORIA
			public function getMemoria() 
				{     
					return $this->memoria;
				}
			public function setMemoria($memoria) 
				{     
					$this->memoria = $memoria;
				}
			
			//NUMERO DE IP
			public function getNumIp() 
				{     
					return $this->numIp;
				}
			public function setNumIp($numIp) 
				{     
					$this->numIp = $numIp;
				}
				
			//NUMERO DO MAC ADDRESS
			public function getNumMac() 
				{     
					return $this->numMac;
				}
			public function setNumMac($numMac) 
				{     
					$this->numMac = $numMac;
				}
				
			//CAPACIDADE DO HD
			public function getCapHD() 
				{     
					return $this->capHD;
				}
			public function setCapHD($capHD) 
				{     
					$this->capHD = $capHD;
				}
				
			//STATUS DO COMPUTADOR
			public function getStatusComp() 
				{     
					return $this->statusComp;
				}
			public function setStatusComp($statusComp) 
				{     
					$this->statusComp = $statusComp;
				}
				
			//OBSERVAÇOES	
			public function getObs() 
				{     
					return $this->obs;
				}
			public function setObs($obs) 
				{     
					$this->obs = $obs;
				}

			//ID DO LOCAL DO FUNCIONARIO
			public function getIdFuncionario() 
				{     
					return $this->idFuncionario;
				}
			public function setIdFuncionario($idFuncionario) 
				{     
					$this->idFuncionario = $idFuncionario;
				}
				
			//ID DO LOCAL DA MAQUINA
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
                    echo '-- INFORMACOES DA MAQUINA --';
                    echo '</br>ID -> ';
					echo $this->idComputador . '<br>';	
					echo '</br>Nº da cir -> ';
					echo $this->numCir . '<br>';
					echo '</br>Nº Pat HU -> ';
					echo $this->numPatrimonio . '<br>';
					echo '</br>Nº Pat Reitoria -> ';
					echo $this->numPatReitoria . '<br>';	
					echo '</br>Nome -> ';
					echo $this->nomeComputador . '<br>';
					echo '</br>Data -> ';
					echo $this->dataCadastro . '<br>';
					echo '</br>Responsavel -> ';
					echo $this->respCadastro . '<br>';
					echo '</br>Data alt-> ';
					echo $this->dataAltCadastro . '<br>';
					echo '</br>Responsavel alt -> ';
					echo $this->respAltCadastro . '<br>';
					echo '</br>Sistema Operacional-> ';
					echo $this->sistemaOpera . '<br>';
					echo '</br>Modelo -> ';
					echo $this->modelMaquina . '<br>';
					echo '</br>Processador -> ';
					echo $this->tipProcessador . '<br>';
					echo '</br>Memória ->';
					echo $this->memoria	. '<br>';
					echo '</br>Nº Ip -> ';
					echo $this->numIp . '<br>';
					echo '</br>Nº Mac -> ';
					echo $this->numMac . '<br>';
					echo '</br>HD -> ';
					echo $this->capHD . '<br>';
					echo '</br>Status -> ';
					echo $this->statusComp . '<br>';
					echo '</br>Obs -> ';
					echo $this->obs . '<br>';
					echo '</br>Id do Funcionario-> ';
					echo $this->idFuncionario . '<br>';					
					echo '</br>Id do Setor-> ';
					echo $this->idSetor . '<br>';
				}
		}
?>
