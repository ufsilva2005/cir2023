<?php
    session_start();
    include "../template/menuPrincipal.php";

    if ($_SESSION['computador'] != "sim") {
        echo "<script type='text/javascript'>alert('USUÁRIO NÃO AUTORIZADO');</script>";
        echo "<script>location = '../template/menuPrincipal.php';</script>";
    }
    require_once '../controllers/computadorBuscar.php';
    include_once "../dao/DAO-controleCir.php";
    //echo $idComputador;
?>

      
        <script src="../js/bootstrap.min.js"></script>

        <hr>
        <nav class="navbar navbar-dark">
            <div class="line col-md-12 p-5 position-absolute start-5 top-0 bottom-50 end-250">
                <i class="icon-tasks icon-blue"></i>
                <h3 class="text-success">Cadastro de Computador</h3>
                <div class="panel-content">
                    <div class="col-md-12">
                        <!--form name="cadastro" id="cadastro" method="post" action="./computadorCadastrar2.php"-->
                            <fieldset>	
                                <div class="row">		
                                    <label>
                                        <h5 class="text-primary">1-> Informações do local do Computador</h5>
                                    </label>	
                                </div>
                                <div class="row">																						
                                    <div class="col px-md-1 col-md-2">
                                        <label for="inputSuccess" class="control-label">Divisão:</label>
                                        <input type="text" class="form-control" value="<?= $nomeDivisao ?>" disabled>
                                    </div>
                                                                    
                                    <div class="col px-md-1 col-md-2">
                                        <label for="inputSuccess" class="control-label">Localização:</label>
                                        <input type="text" class="form-control" value="<?= $localizacao ?>" disabled>
                                    </div>
                                                                        
                                    <div class="col px-md-1 col-md-2">
                                        <label for="inputSuccess" class="control-label">Ramal:</label>
                                        <input type="text" class="form-control" value="<?= $ramal ?>" disabled>
                                    </div>
                                                                    
                                    <div class="col px-md-1 col-md-6">
                                        <label for="inputSuccess" class="control-label">Responsável pelo Setor:</label>
                                        <input type="text" class="form-control" value="<?= $respSetor ?>" disabled>
                                    </div>
                                </div>
                                            
                                <div class="row">
                                    <div class="col px-md-1 col-md-6">
                                        <label for="inputSuccess" class="control-label">Local do Computador:</label>
                                        <input type="text" class="form-control" value="<?= $nomeLocal ?>" disabled>
                                    </div>
                                                
                                    <div class="col px-md-1 col-md-6">
                                        <label for="inputSuccess" class="control-label">Observação:</label>
                                        <input type="text" class="form-control" value="<?= $obs ?>" disabled>
                                    </div>
                                </div>

                                <hr>
                                            
                                <div class="row">		
                                    <label>
                                        <h5 class="text-primary">2-> Informações Sobre o Computador </h5>
                                    </label>	
                                </div>	
                                            
                                <div class="row">
                                    <div class="col px-md-1 col-md-3">
                                        <label for="inputSuccess" class="control-label" >Número da Cir:</label>
                                        <input type="text" class="form-control" value="<?= $numCir ?>" disabled>
                                    </div>  
                                                    
                                    <div class="col px-md-1 col-md-3">
                                        <label for="inputSuccess" class="control-label">Patrimônio Reitoria:</label>
                                        <input type="text" class="form-control" value="<?= $numPatReitoria ?>" disabled>
                                    </div>

                                    <div class="col px-md-1 col-md-3">
                                        <label for="inputSuccess" class="control-label">Patrimônio HU:</label>
                                        <input type="text" class="form-control" value="<?= $numPatrimonio ?>" disabled>
                                    </div>

                                    <div class="col px-md-1 col-md-3">
                                        <label for="inputSuccess" class="control-label">Nome do Computador:</label>
                                        <input type="text" class="form-control" value="<?= $nomeComputador ?>" disabled>
                                    </div>												                                      
                                </div>		
                                                
                                <div class="row">
                                    <div class="col px-md-1 col-md-2">
                                        <label for="inputSuccess" class="control-label">Sistema Operacional:</label>
                                        <input type="text" class="form-control" value="<?= $sistemaOpera ?>" disabled>
                                    </div>

                                    <div class="col px-md-1 col-md-3">
                                        <label for="inputSuccess" class="control-label">Modelo/Marca:</label>
                                       <input type="text" class="form-control" value="<?= $modelMaquina ?>" disabled>
                                    </div>
                                                                        
                                    <div class="col px-md-1 col-md-5">
                                        <label for="inputSuccess" class="control-label">Tipo de Processador:</label>
                                        <input type="text" class="form-control" value="<?= $desProcessador ?>" disabled>
                                    </div>

                                    <div class="col px-md-1 col-md-2">
                                        <label for="inputSuccess" class="control-label">Memória:</label>
                                        <input type="text" class="form-control" value="<?= $memoria ?>" disabled>
                                    </div>
                                </div>
                                                
                                <div class="row">
                                    <div class="col px-md-1 col-md-3">
                                        <label for="inputSuccess" class="control-label">Número de IP:</label>
                                        <input type="text" class="form-control" value="<?= $numIp ?>" disabled>
                                    </div>
                                                                    
                                    <div class="col px-md-1 col-md-3">
                                        <label for="inputSuccess" class="control-label">Número MAC:</label>
                                        <input type="text" class="form-control" value="<?= $numMac ?>" disabled>
                                    </div>	

                                    <div class="col px-md-1 col-md-6">
                                        <label for="inputSuccess" class="control-label">Nome Usuário:</label> <br>
                                        <input type="text" class="form-control" value="<?= $nomeUsuario ?>" disabled>    
                                    </div>
                                </div>

                                <hr>                               
                                <div class="col-md-12">	
                                    <table class="table table-striped table-bordered table-condensed table-hover table-light">
                                        <thead>
                                            <tr>
                                                HD's no Computador:                                    
                                            </tr>
                                        </thead>
                                        <tbody> 
                                            <td class="align-left">
                                                <?php
                                                    $t = sizeof($tipoHD);
                                                    $nomeTabela = "hdTipos";
                                                    $tipoOpcao = "id";                                 
                                                    for ($i = 0; $i < $t; $i++) 
                                                        {
                                                            $id = $tipoHD[$i];
                                                            $tipoHDDAO = new ControleCirDAO();
                                                            foreach ($tipoHDDAO->ListarOpcao($nomeTabela, $tipoOpcao, $id)as $resp)
                                                                { 
                                                                    $x = $i + 1;
                                                                    echo "&emsp; hd(" . $x .") =>" . $descricao = $resp->descricao;  
                                                                } 
                                                        }          
                                                ?>    
                                            </td>
                                        </tbody>
                                    </table>
                                </div>
                                <hr>
                                    
                                <div class="row">	
                                    <label>
                                        <h5 class="text-primary">3-> Informações do responsavel pelo cadastro</h5>
                                    </label>	
                                </div>

                                <div class="row">
                                    <div class="col px-md-1  col-md-2">
                                        <label for="inputSuccess" class="control-label">Data do Cadastro:</label>
                                        <input type="text" class="form-control" value="<?php $date = date('d/m/Y'); echo $date; $data = $date ?>" disabled>
                                    </div>

                                    <div class="col px-md-1 col-md-10">
                                        <label for="inputSuccess" class="control-label">Responsável pelo Cadastro:</label>
                                        <input type="text" class="form-control" value="<?= $respCadastro ?>" disabled>
                                    </div>
                                </div> 

                                <hr>
                                                
                                <div id="actions" class="row">
                                    <div class="col-md-12">
                                         <a href="../views/computadorListar.php" ><button type="button" class="btn btn-outline-warning">Voltar</button></a>
                                    </div>				
                                </div>                                           
                            </fieldset>
                        <!--/form-->  
                    </div>
                    <p></p>
                    <p></p>
                    <footer>
                        <p>&copy; <a href="">CADASTRO DE COMPUTADORES</a></p>
                    </footer>
                </div>
            </div>
        </nav>
        <?php
        $i = 0;
			if($i == 0){ ?>
				<script>
					$(document).ready(function(){
						$('#exampleModalToggle').modal('show');
					});
				</script>
			<?php } ?>
    </body>
</html>