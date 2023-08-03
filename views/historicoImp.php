<?php
	include "../template/menuPrincipal.php";
   
    if($_SESSION['impressora'] != "sim")
        {
            echo "<script type='text/javascript'>alert('USUÁRIO NÃO AUTORIZADO');</script>";
            echo "<script>location = '../template/menuPrincipal.php';</script>";  
        }
	
    $hist =  $_GET['action'];
   include "../controllers/impressoraBuscar.php"; 

    //$idFuncionario = $_SESSION['idFuncionario'];  
    //$nomeFuncionario = $_SESSION['nomeFuncionario'];  
?>	

<hr>
		
			<nav class="fixed  navbar navbar-dark">
				<div class="line col-md-12 p-5 position-absolute top-50 bottom-150 end-150">
                    <div class="col-md-12 py-5 px-2">	  
                        <h5 class="text-success"><?php echo "Histórico da impressora " . $nomeImpressora . " Número de Série " . $numSerie . " " . $idImpressora; ?></h5>
                        <?php
                            $nomeTabela = "historico";	
							$tipoOpcao = "idImpressora";						
							require_once '../dao/DAO-controleCir.php';
							$impAltDAO = new ControleCirDAO();
							foreach($impAltDAO->ListarOpcao3($nomeTabela, $tipoOpcao, $idImpressora)    as $hist)
								{
                                    ?>	
                                    <div class="row">
                                        <div class="col px-md-1  col-md-12">
                                            <label for="inputSuccess" class="control-label"><?php echo "Data da Alteração: " . $hist->dataAltera . " Funcionário " . $hist->respAlteracoes; ?></label>
                                        </div>

                                        <div class='area-texto'> 
                                            <label for='inputSuccess' class='control-label'>Aleração Efetuada:</label>    
                                            <div>                                        
                                                <textarea  text-align='left' style='resize: none' name='histDAtual' rows='5' cols='80' maxlength='2500'  wrap='hard' white-space: nowrap >
                                                            <?php echo $hist->nomeAlteracoes ?>            
                                                </textarea>                                    
                                            </div>
                                        </div>
                                    </div>				
								    <?php 
							    }
                        ?> 
                    </div>
				</div>
			</nav>

	    <div class="fixed-bottom p-1 px-md-5 col-md-12 bg-ufs text-black1">
			<div class="row">
				<div class="col px-md-1 col-md-2"> 
					<label for="inputSuccess" class="control-label">Total de Impressoras:</label>
					<input type="text" class="form-control" value="<?php echo $_SESSION['numUser'];?>" readonly >
				</div>   
				<div class="col px-md-1 col-md-2"> 
					<label for="inputSuccess" class="control-label">Impressoras ativas:</label>
					<input type="text" class="form-control" value="<?php echo $ativo;?>" readonly>
				</div>        
				<div class="col px-md-1 col-md-2"> 
					<label for="inputSuccess" class="control-label">Impressoras desativadas:</label>
					<input type="text" class="form-control" value="<?php echo $inativo;?>" readonly>
				</div>  
				<div class="col px-md-1 col-md-6"> 
					<label for="inputSuccess" class="control-label">Menu Opção:</label>
					<table class="table table-borderless">
						<thead>
							<tr>
								<th>
									<div class="btn-group pull-left" >
										<a class="btn btn-small btn-warning table-edit">Alterar<i class="icon-edit"></i></a>
									</div>
											
									<div class="btn-group pull-left">
										<a class="btn btn-primary">Historico<i class="icon-remove"></i></a>
									</div>
												
									<div class="btn-group pull-left">
										<a class="btn btn-info">Detalhes<i class="icon-remove"></i></a>
									</div>
												
									<div class="btn-group pull-left">
										<a class="btn btn-small btn-success">atIvar<i class="icon-remove"></i></a>
										<a class="btn btn-small btn-danger">destIvar<i class="icon-remove"></i></a>
									</div>

									<div class="btn-group pull-left">
										<a class="btn btn-small btn-ufs">imPrimir<i class="icon-remove"></i></a>
									</div>
								</th>
							</tr>
						</thead>   
					</table>                            
				</div>  				  
			</div>         
		</div>		
	</body>
</html>
