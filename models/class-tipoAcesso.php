<?php
	class TipoAcesso
		{
			private $idAcesso;
			private $gerenFuncionarios;
			private $gerenCargos;			
			private $gerenEntMaterial;			
			private $gerenSaiMaterial;				
			private $gerenRelaMaterial;
			private $gerenComputador;	
			private $gerenImpressora;           
         
			 // Recebe dados como parametros
			public function __construct ($idAcesso = "",  $gerenFuncionarios  = null, $gerenCargos = null, $gerenEntMaterial = null, 
			$gerenSaiMaterial  = null, $gerenRelaMaterial = null,  $gerenComputador = null,	$gerenImpressora = null) 
			
				{
					$this->idAcesso   = $idAcesso;
					$this->gerenFuncionarios  = $gerenFuncionarios; 
					$this->gerenCargos   = $gerenCargos;
               		$this->gerenEntMaterial = $gerenEntMaterial;                  		
					$this->gerenSaiMaterial  = $gerenSaiMaterial;   
					$this->gerenRelaMaterial  = $gerenRelaMaterial ; 
					$this->gerenComputador = $gerenComputador;	
					$this->gerenImpressora = $gerenImpressora;   
				}
				
			//metodos GET E SET
			public function getIdAcesso()
				{     
					return $this->idAcesso;
				}
			public function setIdAcesso($idAcesso) 
				{     
					$this->idAcesso = $idAcesso;
				}

			public function getGerenFuncionarios()
				{
					return $this->gerenFuncionarios ;
				} 
         	public function setGerenFuncionarios($gerenFuncionarios)
				{
					$this->gerenFuncionarios  = $gerenFuncionarios ;
				}
				
			public function getGerenCargos()
				{     
					return $this->gerenCargos;
				}
			public function setGerenCargos($gerenCargos) 
				{     
					$this->gerenCargos = $gerenCargos;
				}    
                
			public function getGerenEntMaterial()
				{
					return $this->gerenEntMaterial;
				} 
         	public function setGerenEntMaterial($gerenEntMaterial)
				{
					$this->gerenEntMaterial = $gerenEntMaterial;
            	}  			
                
			public function getGerenSaiMaterial()
				{
					return $this->gerenSaiMaterial ;
				} 
         	public function setGerenSaiMaterial($gerenSaiMaterial) 
				{     
					$this->gerenSaiMaterial  = $gerenSaiMaterial ;
            	}
			
			public function getGerenRelaMaterial()
				{
					return $this->gerenRelaMaterial ;
				} 
         	public function setGerenRelaMaterial($gerenRelaMaterial) 
				{     
					$this->gerenRelaMaterial  = $gerenRelaMaterial ;
				}				

			public function getGerenComputador()
				{
					return $this->gerenComputador ;
				} 
         	public function setGerenComputador($gerenComputador) 
				{     
					$this->gerenComputador  = $gerenComputador ;
				}
				
			public function getGerenImpressora()
				{
					return $this->gerenImpressora ;
				} 
         	public function setGerenImpressora($gerenImpressora) 
				{     
					$this->gerenImpressora  = $gerenImpressora ;
            	}
			// Método para exibir
			public function exibir() 
				{
					echo 'idAcesso: ';
					echo $this->idAcesso . '<br>';		

					echo 'gerenFuncionarios : ';
					echo $this->gerenFuncionarios  . '<br>';	
					
					echo 'gerenCargos: ';
					echo $this->gerenCargos . '<br>';	
					
					echo 'gerenEntMaterial: ';
                    echo $this->gerenEntMaterial . '<br>';                   	

					echo 'gerenSaiMaterial : ';
					echo $this->gerenSaiMaterial  . '<br>';					
				
					echo 'gerenRelaMaterial : ';
					echo $this->gerenRelaMaterial  . '<br>';	
					
					echo 'gerenComputador: ';
					echo $this->gerenComputador . '<br>';	
					
					echo 'gerenImpressora: ';
					echo $this->gerenImpressora . '<br>';	
				
				}
			
		}
		
?>
