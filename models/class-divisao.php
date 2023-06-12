<?php
	class Divisao
		{
			private $idDivisao;
			private $divisao;
						
			// Recebe  parametros 
			public function __construct ($idDivisao = "", $divisao = null) 
				{
					$this->idDivisao = $idDivisao;
					$this->divisao	 = $divisao;
				}
				
			///metodos get e metodos set
			//ID DO LOCAL DO COMPUTADOR
			public function getIdDivisao() 
				{     
					return $this->idDivisao;
				}
			public function setIdDivisao($idDivisao) 
				{     
					$this->idDivisao = $idDivisao;
				}
				
			//DIVISAO ONDE ESTA A MAQUINA
			public function getDivisao() 
				{     
					return $this->divisao;
				}
			public function setDivisao($divisao) 
				{     
					$this->divisao = $divisao;
				}
			
			// Método para exibir
			public function exibir() 
				{
                    echo '-- INFORMACOES DO DIVISÃO --';
                    echo '</br>ID -> ';
					echo $this->idDivisao . '<br>';	
					echo '</br>Divisão -> ';
					echo $this->divisao . '<br>';
				}
		}
?>
