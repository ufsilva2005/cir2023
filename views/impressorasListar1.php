<?php
	include "../template/menuPrincipal.php";
    include "../scripts/mascara.php"; 
   
    if($_SESSION['impressora'] != "sim")
        {
            echo "<script type='text/javascript'>alert('USUÁRIO NÃO AUTORIZADO');</script>";
            echo "<script>location = '../template/menuPrincipal.php';</script>";  
        }

	$inativo = 0;
	$ativo = 0;

    //$idFuncionario = $_SESSION['idFuncionario'];  
    //$nomeFuncionario = $_SESSION['nomeFuncionario'];  
?>	
			<hr>
			<nav class="navbar navbar-dark">
				<div class="line p-5 position-absolute top-50 bottom-150 end-150">
                    <div class="col-md-12 py-5 px-2">	     
						<h3 class="text-success">Menu Opção:</h3>
                        <div class="panel-header">
							<table class="table table-borderless">
								<thead>
									<tr>
										<th>&emsp;&emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;&emsp;</th>
										<th>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;</th>
										<th>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;</th>
										<th>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;</th>
										<th>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;</th>
										<th>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;
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

											<div class="btn-group pull-left">
												<a class='nav-link' href='./pesquisaImpressoras.php'><button type='button' class='btn btn-outline-warning'>voltar</button> </a>
											</div>
										</th>
									</tr>

								</thead>   
							</table>    
                           
                        </div> 

						<table class="table table-striped table-bordered table-condensed">
							<thead>
								<tr>
									<th>Modelo</th>
									<th>Número Série</th>
									<th>Divisão</th>
									<th>Setor da Máquina</th>
									<th>Localização</th>
									<th>Status</th>
									<th>OPÇÃO</th>
								</tr>

							</thead>
							<tbody> 
								<?php
									//header('Content-Type: text/html; charset=utf-8');
									$nomeTabela = "impressoras";								
									require_once '../dao/DAO-controleCir.php';
									$impAltDAO = new ControleCirDAO();
									foreach($impAltDAO-> ListarTudo($nomeTabela)  as $imp)
										{ ?>													
											<tr>
												<td>
													<?php  
														$idImpressora = $imp->idImpressora;
														$modelo1 = $imp->modeloImpressora;
														$modeloDAO = new ControleCirDAO();
														foreach($modeloDAO->BuscaModelo($modelo1, $idImpressora) as $resp)
															{ 	
																$modelo = $resp->modeloImpressora;
																echo $modelo;
															}
															
													?>
												</td>
												<td><?php echo $imp->numSerie ?></td>	
												<td>
													<?php   $idSetor = $imp->idSetor; 
															$setorDAO = new ControleCirDAO();
															foreach($setorDAO->Buscalocal($idSetor) as $Setor)
																{ 	
																	$divisao1= $Setor->divisao;
																	$nomeLocal1 = $Setor->nomeLocal;
																	$localizacao1 = $Setor->localizacao;
																	echo $divisao1; 
																}
															
													?>
												</td>															
												<td><?php echo $nomeLocal1?></td>	
												<td><?php echo $localizacao1?></td>		
												<td><?php echo $statusImpressora = $imp->statusImpressora?></td>
												<td class='operations'>
                                                    <div class="btn-group pull-left" >
                                                        <a href="./impressoraAlterar.php?action=1&id=<?php echo $imp->idImpressora;?> " class="btn btn-small btn-warning table-edit">A<i class="icon-edit"></i></a>
                                                    </div>
                                                    <div class="btn-group pull-left">
                                                    	<a href="./historicoImp.php?action=1&id=<?php echo $imp->idImpressora; ?>"  class="btn btn-primary">H<i class="icon-remove"></i></a>
                                                    </div>
                                                    <div class="btn-group pull-left">
                                                        <a href="./impressoraDetalhes.php?action=1&id=<?php echo $imp->idImpressora; ?>" class="btn btn-info">D<i class="icon-remove"></i></a>
                                                    </div>
                                                    <div class="btn-group pull-left">
														<?php                                    
                                                            if($statusImpressora != "ativo") 
                                                                {
                                                                    $html = "<a href='../controllers/ativarDesativar.php?action=1&id=$idImpressora' class='btn btn-small btn-success'>I<i class='icon-remove'></i></a>";
                                                                    $inativo++;
																	echo $html;
                                                                }  
															else
                                                                {
                                                                    $html = "<a href='../controllers/ativarDesativar.php?action=2&id=$idImpressora' class='btn btn-small btn-danger'>I<i class='icon-remove'></i></a>";
                                                                    $ativo++;
																	echo $html;
                                                                }                                    
                                                        ?>  
                                                    </div>
													<div class="btn-group pull-left">
                                                        <a href="../.php?action=2&id=<?php echo $imp->idImpressora; ?>" class="btn btn-small btn-ufs">P<i class="icon-remove"></i></a>
                                                    </div>
                                                </td>			
											<tr>									
										<?php 
										} ?>							
							</tbody>
								
					</table>
				</div>
			</div>
		</nav>
		<div class="fixed-bottom p-1 px-md-5 col-md-12 bg-primary text-white">
			<div class="row">
				<div class="col px-md-1 col-md-2"> 
					<label for="inputSuccess" class="control-label">Total de Impressoras:</label>
					<input type="text" class="form-control" value="<?php echo $_SESSION['numUser'];?>" >
				</div>   
				<div class="col px-md-1 col-md-2"> 
					<label for="inputSuccess" class="control-label">Impressoras ativas:</label>
					<input type="text" class="form-control" value="<?php echo $ativo;?>" >
				</div>        
				<div class="col px-md-1 col-md-2"> 
					<label for="inputSuccess" class="control-label">Impressoras desativadas:</label>
					<input type="text" class="form-control" value="<?php echo $inativo;?>" >
				</div>    
			</div>         
		</div>		
	</body>
</html>
