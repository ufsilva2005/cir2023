<?php
	class Cargos
		{
            private $idCargo;
			private $statusCargos;
			private $nomeCargos;            
			
			 // Recebe dados como parametros
			public function __construct ($idCargo = "", $statusCargos = null, $nomeCargos = null) 
			
				{
					$this->idCargo   = $idCargo;
					$this->nomeCargos = $nomeCargos;   
					$this->statusCargos = $statusCargos;                			
				}
				
			//metodos get
			public function getIdCargo()
				{     
					return $this->idCargo;
				}
			
			public function getStatusCargos()
				{
					return $this->statusCargos;
				} 
				
			public function getNomeCargos()
				{
					return $this->nomeCargos;
				} 
				
			//metodos set
			public function setIdCargo($idCargo) 
				{     
					$this->idCargo = $idCargo;
				}
							
			public function setStatusCargos($statusCargos)
				{
					 $this->statusCargos = $statusCargos;
                } 
			
			public function setNomeCargos($nomeCargos)
				{
					 $this->nomeCargos = $nomeCargos;
				}
			
			// Método para exibir
			public function exibir() 
				{
					echo 'idCargo: ';
					echo $this->idCargo . '<br>';		

					echo 'nomeCargos: ';
					echo $this->nomeCargos . '<br>';		
					
					echo 'statusCargos: ';
					echo $this->statusCargos . '<br>';	
				}
			
		}
		
?>
