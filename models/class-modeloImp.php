<?php
	class ModeloImp
		{
			private $idModelo;
			private $statusModelo;
			private $modeloImpressora;
						
			// Recebe  parametros 
			public function __construct ($idModelo="", $statusModelo = null, $modeloImpressora = null) 
				{
					$this->idModelo	        = $idModelo;
					$this->statusModelo     = $statusModelo;
					$this->modeloImpressora = $modeloImpressora;
				}
				
			///metodos get e metodos set
			public function getIdModelo() 
				{     
					return $this->idModelo;
				}
			public function setIdModelo($idModelo) 
				{     
					$this->idModelo = $idModelo;
				}

			public function getStatusModelo() 
				{     
					return $this->statusModelo;
				}
			public function setStatusModelo($statusModelo) 
				{     
					$this->statusModelo = $statusModelo;
				}			
                                
			public function getModeloImpressora() 
				{     
					return $this->modeloImpressora;
				}
			public function setModeloImpressora($modeloImpressora) 
				{     
					$this->modeloImpressora = $modeloImpressora;
				}
			
			// Método para exibir
			public function exibir() 
				{
                    echo '-- INFORMAÇÕES DO MODELO --';
                    echo '</br>ID -> ';
					echo $this->idModelo . '<br>';	
					echo '</br>status -> ';
					echo $this->statusModelo . '<br>';
					echo '</br>modelo Impressora -> ';
					echo $this->modeloImpressora . '<br>';	
				}
		}
?>
