<?php
	class Funcionario
		{
            private $idFuncionario;
			private $nomeFuncionario;		
			private $statusFuncionario;			
			private $login;
			private $senha;    
			private $dataCadastro;			
			private $dataAltCadastro;				
			private $idCargo;
			private $idAcesso;
				
			

			 // Recebe dados como parametros
			public function __construct 
									($idFuncionario = "", $nomeFuncionario = null, $statusFuncionario = null, $login = null, $senha = null, $dataCadastro = null, $dataAltCadastro = null, $idCargo = null, $idAcesso = null) 
			
				{
					$this->idFuncionario     = $idFuncionario;
					$this->nomeFuncionario   = $nomeFuncionario; 					
					$this->statusFuncionario = $statusFuncionario;				
					$this->login             = $login;  
					$this->senha             = $senha;  
					$this->dataCadastro      = $dataCadastro;
					$this->dataAltCadastro   = $dataAltCadastro;					
					$this->idCargo		     = $idCargo;					
					$this->idAcesso		     = $idAcesso;                    
					
								
				}
				
			//metodos get e set
			//ID DO Funcionario
			public function getIdFuncionario() 
				{     
					return $this->idFuncionario;
				}
			public function setIdFuncionario($idFuncionario) 
				{     
					$this->idFuncionario = $idFuncionario;
				}	

			//NOME				
			public function getNomeFuncionario() 
				{     
					return $this->nomeFuncionario;
				}				
			public function setNomeFuncionario($nomeFuncionario) 
				{     
					 $this->nomeFuncionario = $nomeFuncionario;
				}
				
            //STATUS
			public function getStatusFuncionario() 
				{
					return $this->statusFuncionario;
				}
			public function setStatusFuncionario($statusFuncionario) 
				{
					$this->statusFuncionario = $statusFuncionario;
				}
				
            //LOGIN
			public function getLogin() 
				{
					return $this->login;
				}
			public function setLogin($login) 
				{
					$this->login = $login;
				}

			//SENHA
			public function getSenha() 
				{
					return $this->senha;
				} 
			public function setSenha($senha) 
				{
					$this->senha = $senha;
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

			//DATA DE ALTERAÇÃO DO CADASTRO
			public function getDataAltCadastro() 
				{
					return $this->dataAltCadastro;
				}
			public function setDataAltCadastro($dataAltCadastro) 
				{
					 $this->dataAltCadastro = $dataAltCadastro;
				}
		
			//CARGO
			public function getIdCargo()
				{
					return $this->idCargo;
				} 
			public function setIdCargo($idCargo)
				{
					 $this->idCargo = $idCargo;
				} 				

			//NIVEL DE ACESSO
			public function getIdAcesso() 
				{
					return $this->idAcesso;
				}
			public function setIdAcesso($idAcesso) 
				{
					$this->idAcesso = $idAcesso;
				}			
			
			// Método para exibir
			public function exibir() 
				{
					echo 'idFuncionario: ';
					echo $this->idFuncionario . '<br>';
					
					echo 'nomeFuncionario: ';
					echo $this->nomeFuncionario . '<br>';
				
					echo 'statusFuncionario: ';
					echo $this->statusFuncionario . '<br>';	

					echo 'login: ';
					echo $this->login . '<br>';
                    
                    echo 'senha: ';
					echo $this->senha . '<br>';

					echo 'dataCadastro: ';
					echo $this->dataCadastro . '<br>';
					
					echo 'dataAltCadastro: ';
					echo $this->dataAltCadastro . '<br>';					

					echo 'idCargo: ';
					echo $this->idCargo . '<br>';					

					echo 'idAcesso: ';
					echo $this->idAcesso . '<br>';            
				}			
		}
		
?>
