<?php
	class Historico
		{
			private $idHistorico;
			private $nomeAlteracoes;			
			private $dataAltera;
			private $respAlteracoes;
			private $idComputador;
			private $idImpressora;
			private $idFuncionario;

			 // Recebe dados como parametros
			public function __construct ($idHistorico = "", $nomeAlteracoes = null, $dataAltera = null, $respAlteracoes = null,  $idComputador = null,  $idImpressora = null, $idFuncionario = null) 
			
				{
					$this->idHistorico 	  = $idHistorico;
					$this->nomeAlteracoes = $nomeAlteracoes;
					$this->dataAltera  	  = $dataAltera;
					$this->respAlteracoes = $respAlteracoes;
					$this->idComputador   = $idComputador;
					$this->idImpressora   = $idImpressora;
					$this->idFuncionario   = $idFuncionario;
				}
				
			//metodos get
			public function getIdHistorico() 
				{     
					return $this->idHistorico;
				}
							
			public function getNomeAlteracoes() 
				{     
					return $this->nomeAlteracoes;
				}				
			
			public function getDataAltera()
				{
					return $this->dataAltera;
				}    
				
			public function getRespAlteracoes()
				{
					return $this->respAlteracoes;
				}    
				
			public function getIdComputador()
				{
					return $this->idComputador;
				} 

			public function getIdImpressora() 
				{
					return $this->idImpressora;
				}
		 
			public function getIdFuncionario() 
				{
					return $this->idFuncionario;
				}

			//metodos set
			public function setIdHistorico($idHistorico) 
				{     
					$this->idHistorico = $idHistorico;
				}
							
			public function setNomeAlteracoes($nomeAlteracoes) 
				{     
					 $this->nomeAlteracoes = $nomeAlteracoes;
				}				
			
			public function setDataAltera($dataAltera)
				{
					 $this->dataAltera = $dataAltera;
				}    
				
			public function setRespAlteracoes($respAlteracoes)
				{
					 $this->respAlteracoes = $respAlteracoes;
				}    
				
			public function setIdComputador($idComputador)
				{
					 $this->idComputador = $idComputador;
				} 

			public function setIdImpressora($idImpressora) 
				{
					 $this->idImpressora = $idImpressora;
				}
		 
			public function setIdFuncionario($idFuncionario) 
				{
					 $this->idFuncionario = $idFuncionario;
				}
		 			
			// Método para exibir
			public function exibir() 
				{
					echo '</br> idHistorico: </br>';
					echo $this->idHistorico . '<br>';
					
					echo '</br>nomeAlteracoes: </br>';
					echo $this->nomeAlteracoes . '<br>';
					
					echo '</br>data Alteração: </br>';
					echo $this->dataAltera . '<br>';
					
					echo '</br>responsavel Alteracoes: </br>';
					echo $this->respAlteracoes . '<br>';
					
					echo '</br>idComputador:</br> ';
					echo $this->idComputador . '<br>';

					echo '</br>idImpressora:</br> ';
					echo $this->idImpressora . '<br>';

					echo '</br>idFuncionario:</br> ';
					echo $this->idFuncionario . '<br>';

					echo '</br>  </br>';
				}
			
		}
		
?>
