<?php
	include "../template/menuPrincipal.php";
    include "../scripts/mascara.php"; 
   
    if($_SESSION['impressora'] != "sim")
        {
            echo "<script type='text/javascript'>alert('USUÁRIO NÃO AUTORIZADO');</script>";
            echo "<script>location = '../template/menuPrincipal.php';</script>";  
        }

    $idFuncionario = $_SESSION['idFuncionario'];  
    $nomeFuncionario = $_SESSION['nomeFuncionario'];  
?>	

				<p></p><p></p>	
				<div class="line">
                    <div class="col-md-12">	       						
						<table class="table table-striped table-bordered table-condensed">
							<thead>
								<tr>
									<th>Nome</th>
									<th>Número Série</th>
									<th>Divisão</th>
									<th>Setor da Máquina</th>
									<th>Localização</th>
								</tr>

							</thead>
						
							<tbody> 
								<?php
									//header('Content-Type: text/html; charset=utf-8');
									$nomeTabela = "impressoras";
									$opcao1 = "statusImpressora";									
									require_once '../dao/DAO-controleCir.php';
									$impAltDAO = new ControleCirDAO();
									foreach($impAltDAO-> ListarOpcao($nomeTabela, $opcao1, $valor1)  as $imp)
										{ ?>													
											<tr>
												<td><?php echo $imp->nomeImpressora?></td>
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
