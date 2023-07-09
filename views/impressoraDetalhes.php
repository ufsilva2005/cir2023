<?php
    include "../template/menuPrincipal.php";
    include "../scripts/mascara.php"; 

    if($_SESSION['impressora'] != "sim")
        {
            echo "<script type='text/javascript'>alert('USUÁRIO NÃO AUTORIZADO');</script>";
            echo "<script>location = '../template/menuPrincipal.php';</script>";  
        }

    require_once '../controllers/impressoraBuscar.php';    
    $_SESSION['idSetor'] = $idSetor;   
    $_SESSION['idFuncionario'] = $idFuncionario; 
?>	

                <div class="container">
                    <div id="page-content-wrapper">
                        <div class="panel-header">
                            <i class="icon-tasks icon-blue"></i>
                            <h3 class="text-success">Informações da Impressora</h3>
                        </div>
							
                        <div class="panel-content">                                
							<div class="col-md-12">	  							
                                <form name="cadastro" id="cadastro" method="post" action="../controllers/impressoraUpdate.php">
                                    <fieldset>	
                                        <div class="row">										
                                            <label><h5 class="text-primary">1-> Informações Sobre a Impressora</h5></label>
                                        </div>	
                                                
                                        <div class="row">
                                            <div class="col px-md-1 col-md-1">
                                                <label for="inputSuccess" class="control-label">Id:</label>
                                                <input type="text" class="form-control" value = "<?=$idImpressora; $_SESSION['idImpressora']=$idImpressora;?>"  disabled>
                                            </div>
                                                
                                            <div class="col px-md-1 col-md-2">
                                                <label for="inputSuccess" class="control-label" >Nome da Impressora:</label>
                                                <input type="text" class="form-control" value = "<?=$nomeImpressora; $_SESSION['antNomeImp']=$nomeImpressora;?>" disabled>
                                            </div>  
                                                        
                                            <div class="col px-md-1 col-md-2">
                                                <label for="inputSuccess" class="control-label">Nº de Série: </label>
                                                <input type="text" class="form-control" value = "<?=$numSerie; $_SESSION['antNumSerie']=$numSerie?>" disabled>
                                            </div>

                                            <div class="col px-md-1 col-md-3">
                                                <label for="inputSuccess" class="control-label">IP: </label>
                                                <input type="text" class="form-control" value = "<?=$ipImpressora; $_SESSION['antNumIp']=$ipImpressora?>"  disabled>
                                            </div>

                                            <div class="col px-md-1 col-md-3">
                                                <label for="inputSuccess" class="control-label">MAC:</label>
                                                <input type="text" class="form-control" value = "<?=$macImpressora; $_SESSION['antNumMac']=$macImpressora?>"  disabled >
                                            </div>	
                                        </div>                               
                                                    
                                        <hr>											
                                                    
                                        <div class="row">
                                            <div class="col px-md-1 col-md-3">                                                
                                                <label for="inputSuccess" class="control-label">Modelo:</label>
                                                <input type="text" class="form-control" value = "<?php echo $modeloImpressora;?>" disabled >                                            	
                                            </div>
                                            <div class="col px-md-1 col-md-3">
                                                <label for="inputSuccess" class="control-label">Tipo do Tonner: </label>
                                                <input type="text" class="form-control" value="<?php echo $tipoToner;?>" disabled>
                                            </div>

                                            <div class="col px-md-1 col-md-3">
                                                <div class="custom-control custom-radio">
                                                    <label for="inputSuccess" class="control-label">Status:</label>													
                                                    <input type="text" class="form-control" value="<?php echo $statusImpressora;?>" disabled>
                                                </div>
                                            </div>			
                                        </div>                               
                                                    
                                        <hr>
                                                    
                                        <div class="row">										
                                            <label><h5 class="text-primary">2-> Informações do local onde esta a máquina</h5></label>
                                        </div>
                                                    
                                        <div class="row">																						
                                            <div class="col px-md-1 col-md-2">
                                                <label for="inputSuccess" class="control-label">Divisão:</label>
                                                <input type="text" class="form-control" value="<?php echo $divisao1;?>" disabled>
                                            </div>
                                                                        
                                            <div class="col px-md-1 col-md-3">
                                                <label for="inputSuccess" class="control-label">Localização:</label>
                                                 <input type="text" class="form-control" value="<?php echo $localizacao1;?>" disabled>
                                            </div>
                                                                            
                                            <div class="col px-md-1 col-md-2">
                                                <label for="inputSuccess" class="control-label">Ramal: </label>
                                                <input type="text" class="form-control" value="<?php echo $ramal1;?>" disabled>
                                            </div>

                                            <div class="col px-md-1 col-md-5">
                                                <label for="inputSuccess" class="control-label">Responsável:  </label>
                                                <input type="text" class="form-control" value = "<?=$respSetComp1;?>" disabled>
                                            </div>
                                        </div>
                                                
                                        <div class="row">
                                            <div class="col px-md-1 col-md-12">
                                                <label for="inputSuccess" class="control-label">Local da Máquina:  </label>
                                                <input type="text" class="form-control" value = "<?=$nomeLocal1;?>" disabled>
                                            </div>
                                        </div>
                                        
                                        <hr></hr>	

                                        <div id="actions" class="row">
                                            <div class="col-md-2">								
                                                <a  href="../template/menuPrincipal.php"><button type="button" class="btn btn-outline-warning">Voltar</button></a>
                                            </div>				
										</div>            

                                        <hr></hr>	
                                        <div class="row">										
                                            <label><h5 class="text-primary">3-> Informações Restritas</h5></label>
                                        </div>
                                        <div class="row">
                                            <div class="col px-md-1 col-md-2">
                                                <label for="inputSuccess" class="control-label">Data do Cadastro:</label>
                                                <input type="date" class="form-control"  value = "<?=$dataCadastroA;  $_SESSION['datacadastro']=$dataCadastroA?>" disabled>
                                            </div>
                                                        
                                            <div class="col px-md-1 col-md-4">
                                                <label for="inputSuccess" class="control-label">Responsável pelo Cadastro:</label>
                                                <input type="text" class="form-control" value = "<?=$respCadastro; $_SESSION['respCadastro']=$respCadastro?>"  disabled>
                                            </div>            
                                                    
                                            <div class="col px-md-1 col-md-2">
                                                <label for="inputSuccess" class="control-label">Data da alteração:</label>
                                                <input type="date" class="form-control"  value = "<?php $date = date('Y-m-d'); echo $date; $_SESSION['data']=$date ?>" disabled>
                                            </div>
                                                        
                                            <div class="col px-md-1 col-md-4">
                                                <label for="inputSuccess" class="control-label">Responsável pela alteração:</label>
                                                <input type="text" class="form-control" value = "<?=$_SESSION['nomeFuncionario'] ?>"  disabled>
                                            </div>                                                
                                        </div>								                               
                                    </fieldset>
                                </form >
                            </div> 	
                        </div> 	  
                    </div> 	
                </div> 	
            </div> 
        </div> 	
	</body>  	
</html> 