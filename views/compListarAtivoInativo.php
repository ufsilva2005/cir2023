<?php
	include "../template/menuPrincipal.php";
    include "../scripts/mascara.php"; 
   
    if($_SESSION['computador'] != "sim")
        {
            echo "<script type='text/javascript'>alert('USUÁRIO NÃO AUTORIZADO');</script>";
            echo "<script>location = '../template/menuPrincipal.php';</script>";  
        }

	$inativo = 0;
	$ativo = 0;
    $atiDes=  $_GET['action'];
    $_SESSION['atiDes'] = $atiDes;
    if($atiDes == 1)
        {
            $valorOpcao	= "ativo";
        }
    else
        {
            $valorOpcao	= "inativo";
        }
 	$_SESSION['numUser'] = "";
    //$idFuncionario = $_SESSION['idFuncionario'];  
    //$nomeFuncionario = $_SESSION['nomeFuncionario'];  
?>	



				<hr>
		
			<nav class="fixed  navbar navbar-dark">
				<div class="line col-md-12 p-5 position-absolute top-50 bottom-150 end-150">
                    <div class="col-md-12 py-5 px-2">	  
						<table class="table table-striped table-bordered table-condensed">
							<thead>
								<tr>
									<th>Modelo</th>
									<th>Número Série</th>
									<th>Divisão</th>
									<th>Setor da Máquina</th>
									<th>Localização</th>
									<th>Status</th>
									<th>Conexão</th>
									<th>OPÇÃO</th>
								</tr>

							</thead>
							<tbody> 
								<?php
									//header('Content-Type: text/html; charset=utf-8');
									$nomeTabela = "computador";	
                                    $tipoOpcao = "statusComp";                                     						
									require_once '../dao/DAO-controleCir.php';
									$compAltDAO = new ControleCirDAO();
									foreach($compAltDAO-> ListarOpcao($nomeTabela,  $tipoOpcao, $valorOpcao)  as $comp)
									{ ?>													
											<tr>
												<td>
													<?php  
														echo $idComputador = $comp->idComputador;											
													?>
												</td>

												<td>
													<?php  
														echo $numCir = $comp->numCir;															
													?>
												</td>
												<td><?php echo $comp->nomeComputador ?></td>	
												<td>
													<?php   $idSetor = $comp->idSetor; 
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
												<td><?php echo $statusComp = $comp->statusComp?></td>
												<td class='operations'>
                                                    <div class="btn-group pull-left" >
                                                        <a href="./computadorAlterar.php?action=1&id=<?php echo $comp->idComputador;?> " class="btn btn-small btn-warning table-edit">A<i class="icon-edit"></i></a>
                                                    </div>
                                                    <div class="btn-group pull-left">
                                                    	<a href="./historicoComp.php?action=1&id=<?php echo $comp->idComputador; ?>" class="btn btn-primary">H<i class="icon-remove"></i></a>
                                                    </div>
                                                    <div class="btn-group pull-left">
                                                        <a href="./computadorDetalhes.php?action=1&id=<?php echo $comp->idComputador; ?>" class="btn btn-info">D<i class="icon-remove"></i></a>
                                                    </div>
                                                    <div class="btn-group pull-left">
														<?php                                    
                                                            if($statusComp != "ativo") 
                                                                {
                                                                    $html = "<a href='../controllers/ativarDesativarComp.php?action=5&id=$idComputador' class='btn btn-small btn-success'>I<i class='icon-remove'></i></a>";
                                                                    $inativo++;
																	echo $html;
                                                                }  
															else
                                                                {
                                                                    $html = "<a href='../controllers/ativarDesativarComp.php?action=6&id=$idComputador' class='btn btn-small btn-danger'>I<i class='icon-remove'></i></a>";
                                                                    $ativo++;
																	echo $html;
                                                                }                                    
                                                        ?>  
                                                    </div>
													<div class="btn-group pull-left">
                                                        <a href="../gerarPdf/ComputadorImprimirDados.php?action=1&id=<?php echo $comp->idComputador; ?>" class="btn btn-small btn-ufs">P<i class="icon-remove"></i></a>
                                                    </div>
                                                </td>			
											<tr>									
										<?php 
									} 
                                ?>		
							</tbody>								
						</table>
					</div>
				</div>
			</nav>
	

		<div class="fixed-bottom p-1 px-md-5 col-md-12 bg-ufs text-black1">
			<div class="row">
				<div class="col px-md-1 col-md-2"> 
					<label for="inputSuccess" class="control-label">Total de Computadores:</label>
					<input type="text" class="form-control" value="<?php echo $_SESSION['numUser'];?>" readonly >
				</div>   
				<div class="col px-md-1 col-md-2"> 
					<label for="inputSuccess" class="control-label">Computadores ativos:</label>
					<input type="text" class="form-control" value="<?php echo $ativo;?>" readonly>
				</div>        
				<div class="col px-md-1 col-md-2"> 
					<label for="inputSuccess" class="control-label">Computadores desativados:</label>
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
