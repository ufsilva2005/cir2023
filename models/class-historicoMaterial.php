<?php
	class HistoricoMaterial
		{
			private $idHistoricoMaterial;
			private $idMatComp;
			private $dataAltera;
			private $respAlteracoes;
			private $idComputador;
            private $idImpressora;
            private $idDivisao;
			private $idSetor;
			
			 // Recebe dados como parametros
			public function __construct ($idHistoricoMaterial = "", $alteracoes = null, $dataAltera = null, $respAlteracoes = null,  $idComputador = null, $idImpressora = null) 
			
				{
					$this->idHistoricoMaterial    = $idHistoricoMaterial;
					$this->alteracoes     = $alteracoes;					
					$this->dataAltera     = $dataAltera;
					$this->respAlteracoes = $respAlteracoes;
                    $this->idComputador   = $idComputador;
                    $this->idImpressora   = $idImpressora;
				}
				
			//metodos get
			public function getIdHistoricoMaterial() 
				{     
					return $this->idHistoricoMaterial;
				}
							
			public function getAlteracoes() 
				{     
					return $this->alteracoes;
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
			//metodos set
			public function setIdHistoricoMaterial($idHistoricoMaterial) 
				{     
					$this->idHistoricoMaterial = $idHistoricoMaterial;
				}
							
			public function setAlteracoes($alteracoes) 
				{     
					 $this->alteracoes = $alteracoes;
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
			
			// Método para exibir
			public function exibir() 
				{
					echo '</br> idHistoricoMaterial: </br>';
					echo $this->idHistoricoMaterial . '<br>';
					
					echo '</br>alteracoes: </br>';
					echo $this->alteracoes . '<br>';
					
					echo '</br>data Alteração: </br>';
					echo $this->dataAltera . '<br>';
					
					echo '</br>responsavel Alteracoes: </br>';
					echo $this->respAlteracoes . '<br>';
					
					echo '</br>idComputador:</br> ';
                    echo $this->idComputador . '<br>';
                    
                    echo '</br>idImpressora:</br> ';
					echo $this->idImpressora . '<br>';

					echo '</br>  </br>';
				}
			
		}
		
?>
