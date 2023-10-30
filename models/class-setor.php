<?php
	class Setor
		{
			private $idSetor;
			private $idDivisao;
			private $localizacao;
			private $ramal;
			private $respSetor;
			private $nomeLocal;
						
			// Recebe  parametros 
			public function __construct ($idSetor="", $idDivisao = null, $localizacao = null, $ramal = null, $respSetor = null, $nomeLocal = null) 
				{
					$this->idSetor	   = $idSetor;
					$this->idDivisao   = $idDivisao;
					$this->localizacao = $localizacao;
					$this->ramal	   = $ramal;
					$this->respSetor = $respSetor;
					$this->nomeLocal   = $nomeLocal;
				}
				
			///metodos get e metodos set
			//ID DO LOCAL DO COMPUTADOR
			public function getIdSetor() 
				{     
					return $this->idSetor;
				}
			public function setIdSetor($idSetor) 
				{     
					$this->idSetor = $idSetor;
				}
				
			//DIVISAO ONDE ESTA A MAQUINA
			public function getIdDivisao() 
				{     
					return $this->idDivisao;
				}
			public function setIdDivisao($idDivisao) 
				{     
					$this->idDivisao = $idDivisao;
				}
			
			//NOME DO LOCAL
			public function getLocalizacao() 
				{     
					return $this->localizacao;
				}
			public function setLocalizacao($localizacao) 
				{     
					$this->localizacao = $localizacao;
				}
			
			//RAMAL DO SETOR
			public function getRamal() 
				{     
					return $this->ramal;
				}
			public function setRamal($ramal) 
				{     
					$this->ramal = $ramal;
				}
			
			//RESPONSAVEL PELA MAQUINA
			public function getRespSetor() 
				{     
					return $this->respSetor;
				}
			public function setRespSetor($respSetor) 
				{     
					$this->respSetor = $respSetor;
				}
			
			//NOME DO LOCAL		
			public function getNomeLocal() 
				{     
					return $this->nomeLocal;
				}
			public function setNomeLocal($nomeLocal) 
				{     
					$this->nomeLocal = $nomeLocal;
				}
			
			// Método para exibir
			public function exibir() 
				{
                    echo '-- INFORMACOES DO LOCAL --';
                    echo '</br>ID -> ';
					echo $this->idSetor . '<br>';	
					echo '</br>Divisão -> ';
					echo $this->idDivisao . '<br>';
					echo '</br>Localização -> ';
					echo $this->localizacao . '<br>';	
					echo '</br>Ramal-> ';
					echo $this->ramal . '<br>';	
					echo '</br>Responsavel -> ';
					echo $this->respSetor . '<br>';
					echo '</br>Local -> ';
					echo $this->nomeLocal . '<br>';
				}
		}
?>
