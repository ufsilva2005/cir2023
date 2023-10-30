<?php
	class Material
		{
			private $idMaterial;
			private $codigo;
			private $descricao;
			private $numSerie;
			private $unidade;
			private $quantidade;
			private $statusMat;
			
			
			// Recebe  parametros 
			public function __construct ($idMaterial = "", $codigo = null, $descricao = null, $numSerie = null, $unidade = null, $quantidade = null, $statusMat = null) 
			
				{
					$this->idMaterial = $idMaterial;
					$this->codigo	  = $codigo;
					$this->descricao  = $descricao;
					$this->numSerie   = $numSerie;
					$this->unidade    = $unidade;
					$this->quantidade = $quantidade;	
					$this->statusMat = $statusMat;				
				}
				
			///metodos get e metodos set
			//ID DO MATERIAL
			public function getIdMaterial() 
				{     
					return $this->idMaterial;
				}
			public function setIdMaterial($idMaterial) 
				{     
					$this->idMaterial = $idMaterial;
				}
				
			//CÓDIGO
			public function getCodigo() 
				{     
					return $this->codigo;
				}
			public function setCodigo($codigo) 
				{     
					$this->codigo = $codigo;
				}
			
			//DESCRIÇÃO
			public function getDescricao() 
				{     
					return $this->descricao;
				}
			public function setDescricao($descricao) 
				{     
					$this->descricao = $descricao;
				}
            
            //NÚMERO DE SÉRIE
			public function getNumSerie() 
				{     
					return $this->numSerie;
				}
			public function setNumSerie($numSerie) 
				{     
					$this->numSerie = $numSerie;
				}
				
			//UNIDADE 
			public function getUnidade() 
				{     
					return $this->unidade;
				}
			public function setUnidade($unidade) 
				{     
					$this->unidade = $unidade;
				}

			//QUANTIDADE
			public function getQuantidade() 
				{     
					return $this->quantidade;
				}
			public function setQuantidade($quantidade) 
				{     
					$this->quantidade = $quantidade;
				}			
			
			//statusMat
			public function getStatusMat() 
				{     
					return $this->statusMat;
				}
			public function setStatusMat($statusMat) 
				{     
					$this->statusMat = $statusMat;
				}			
			
				
			// Método para exibir
			public function exibir() 
				{
                    echo '-- INFORMACOES DO MATERIAL --';
                    echo '</br>ID -> ';
					echo $this->idMaterial . '<br>';	
					echo '</br>codigo -> ';
					echo $this->codigo . '<br>';
					echo '</br>descricao -> ';
					echo $this->descricao . '<br>';
					echo '</br>Nº Serie -> ';
					echo $this->numSerie . '<br>';	
					echo '</br>unidade -> ';
					echo $this->unidade . '<br>';	
					echo '</br>quantidade -> ';
					echo $this->quantidade . '<br>';		
					echo '</br>statusMat -> ';
					echo $this->statusMat . '<br>';				
				}
		}
?>
