<?php
	include "../template/menuPrincipal.php";
    include "../scripts/mascara.php"; 
   
    if($_SESSION['impressora'] != "sim")
        {
            echo "<script type='text/javascript'>alert('USUÁRIO NÃO AUTORIZADO');</script>";
            echo "<script>location = '../template/menuPrincipal.php';</script>";  
        }

    //$idFuncionario = $_SESSION['idFuncionario'];  
    //$nomeFuncionario = $_SESSION['nomeFuncionario'];  
?>	

				<p></p><p></p>	
				<div class="line">
                    <div class="col-md-12">	     
						<h3 class="text-success">Menu Opção:</h3>
                        <div class="panel-header">
							<table class="table table-borderless">
								<thead>
									<tr>
										<th>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;&emsp;</th>
										<th>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;&emsp;</th>
										<th>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;&emsp;</th>
										<th>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;&emsp;</th>
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
												<a class="btn btn-small btn-danger">dEsativar<i class="icon-remove"></i></a>
											</div>

											<div class="btn-group pull-left">
												<a class="btn btn-small btn-ufs">Imprimir<i class="icon-remove"></i></a>
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
												<td><?php echo $imp->statusImpressora?></td>
												<td class='operations'>
                                                    <div class="btn-group pull-left" >
                                                        <a href="./impressoraAlterar.php?action=1&id=<?php echo $imp->idImpressora;?> " class="btn btn-small btn-warning table-edit">A<i class="icon-edit"></i></a>
                                                    </div>
                                                    <div class="btn-group pull-left">
                                                    	<a href="./.php?action=1&id=<?php echo $imp->idImpressora; ?>" class="btn btn-primary">H<i class="icon-remove"></i></a>
                                                    </div>
                                                    <div class="btn-group pull-left">
                                                        <a href="./.php?action=1&id=<?php echo $imp->idImpressora; ?>" class="btn btn-info">D<i class="icon-remove"></i></a>
                                                    </div>
                                                    <div class="btn-group pull-left">
                                                        <a href="../.php?action=2&id=<?php echo $imp->idImpressora; ?>" class="btn btn-small btn-danger">E<i class="icon-remove"></i></a>
                                                    </div>
													<div class="btn-group pull-left">
                                                        <a href="../.php?action=2&id=<?php echo $imp->idImpressora; ?>" class="btn btn-small btn-ufs">I<i class="icon-remove"></i></a>
                                                    </div>
                                                </td>			
											<tr>									
										<?php 
										} ?>							
							</tbody>
								
						</table>
					</div>
				</div>
			</div>	
		</div>		
	</body>
</html>
