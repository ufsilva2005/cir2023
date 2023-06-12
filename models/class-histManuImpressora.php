<?php
	class ConsertoImp
		{
			private $idConserto;
			private $dataPedido;
			private $respPedido;
			private $defeito;
			private $emailEnviado;
			private $obs;
			private $servExecutado;
			private $respFechaPedido;
			private $dataFechaPedido;
			private $idImpressora;
			private $pedidoFechado;
			 // Recebe dados como parametros
			public function __construct ($idConserto = "", $dataPedido = null, $respPedido = null, $defeito = null, $emailEnviado = null,  $obs = null, $servExecutado = null, $respFechaPedido = null, $dataFechaPedido = null, $idImpressora = null, $PedidoFechado = null) 
			
				{
					$this->idConserto      = $idConserto;
					$this->dataPedido      = $dataPedido;
					$this->respPedido      = $respPedido;
					$this->defeito         = $defeito;					
					$this->emailEnviado    = $emailEnviado;			
					$this->obs             = $obs;					
					$this->servExecutado   = $servExecutado;					
					$this->respFechaPedido = $respFechaPedido;					
					$this->dataFechaPedido = $dataFechaPedido;
					$this->idImpressora    = $idImpressora;
                    $this->pedidoFechado   = $PedidoFechado;
				}
				
			//metodos get
			public function getIdConserto() 
				{     
					return $this->idConserto;
				}
							
			public function getDataPedido() 
				{     
					return $this->dataPedido;
				}
				
			public function getRespPedido() 
				{
					return $this->respPedido;
				}
		 
			public function getDefeito()
				{
					return $this->defeito;
				}    
				
			public function getEmailEnviado()
				{
					return $this->emailEnviado;
				}    
				
			
            public function getObs()
				{
					return $this->obs;
				} 
				
				
            public function getServExecutado()
				{
					return $this->servExecutado;
				} 
				
            public function getRespFechaPedido()
				{
					return $this->respFechaPedido;
				} 
				
            public function getDataFechaPedido()
				{
					return $this->dataFechaPedido;
				}
				
            public function getIdImpressora()
				{
					return $this->idImpressora;
				} 
				
            public function getPedidoFechado()
				{
					return $this->pedidoFechado;
				} 
				
				
			//metodos set
			public function setIdConserto($idConserto) 
				{     
					$this->idConserto = $idConserto;
				}
							
			public function setDataPedido($dataPedido) 
				{     
					 $this->dataPedido = $dataPedido;
				}
				
			public function setRespPedido($respPedido) 
				{
					 $this->respPedido = $respPedido;
				}
		 
			public function setDefeito($defeito)
				{
					 $this->defeito = $defeito;
				}    
				
			public function setEmailEnviado($emailEnviado)
				{
					 $this->emailEnviado = $emailEnviado;
				}    
				
            public function setObs($obs)
				{
					 $this->obs = $obs;
				}
				
            public function setServExecutado($servExecutado)
				{
					 $this->servExecutado = $servExecutado;
				} 
				
            public function setRespFechaPedido($respFechaPedido)
				{
					 $this->respFechaPedido = $respFechaPedido;
				}
				
            public function setDataFechaPedido($dataFechaPedido)
				{
					 $this->dataFechaPedido = $dataFechaPedido;
				} 
				
            public function setIdImpressora($idImpressora)
				{
					 $this->idImpressora = $idImpressora;
				} 
				
             public function setPedidoFechado($pedidoFechado)
				{
					 $this->pedidoFechado = $pedidoFechado;
				} 
			
			// Método para exibir
			public function exibir() 
				{
					echo '</br> id Conserto: </br>';
					echo $this->idConserto . '<br>';
					
					echo '</br>data Pedido: </br>';
					echo $this->dataPedido . '<br>';
					
					echo '</br>resp Pedido:</br> ';
					echo $this->respPedido . '<br>';
					
					echo '</br>defeito: </br>';
					echo $this->defeito . '<br>';
					
					echo '</br>email enviado: </br>';
					echo $this->emailEnviado . '<br>';
					
					echo '</br>obs:</br> ';
					echo $this->obs . '<br>';
					
					echo '</br>serv Executado: </br>';
					echo $this->servExecutado . '<br>';
					
					echo '</br>resp Fecha Pedido:</br> ';
					echo $this->respFechaPedido . '<br>';
					
					echo '</br>data Fecha Pedido: </br>';
					echo $this->dataFechaPedido . '<br>';
					
					echo '</br>id Impressora : </br>';
					echo $this->idImpressora . '<br>';
					
					echo '</br>pedido foi Fechado : </br>';
					echo $this->pedidoFechado . '<br>';
                }
			
		}
?>		
