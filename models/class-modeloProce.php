<?php
	class ModeloProce
		{
			private $idTipoProcessador;
            private $descricao;
			private $statusTipo;
			
						
			// Recebe  parametros 
			public function __construct ($idTipoProcessador="", $descricao = null, $statusTipo = null) 
				{
					$this->idTipoProcessador = $idTipoProcessador;
                    $this->descricao         = $descricao;
					$this->statusTipo        = $statusTipo;
					
				}
				
			///metodos get e metodos set
			public function getIdTipoProcessador() 
				{     
					return $this->idTipoProcessador;
				}
			public function setIdTipoProcessador($idTipoProcessador) 
				{     
					$this->idTipoProcessador = $idTipoProcessador;
				}

            public function getDescricao() 
				{     
					return $this->descricao;
				}
			public function setDescricao($descricao) 
				{     
					$this->descricao = $descricao;
				}
			

			public function getStatusTipo() 
				{     
					return $this->statusTipo;
				}
			public function setStatusTipo($statusTipo) 
				{     
					$this->statusTipo = $statusTipo;
				}			
                                
			
			// Método para exibir
			public function exibir() 
				{
                    echo '-- INFORMAÇÕES DO MODELO --';
                    echo '</br>ID -> ';
					echo $this->idTipoProcessador . '<br>';	
					echo '</br>status -> ';
					echo $this->statusTipo . '<br>';
					echo '</br>modelo PROCESSADOR -> ';
					echo $this->descricao . '<br>';	
				}
		}
?>
