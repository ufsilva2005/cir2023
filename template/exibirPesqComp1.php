<?php
    //session_start();
    //echo "1" . $tipoPesquisa . " - " . $valorPesquisa;
    //echo $tipoPesquisa;
    //cho $valorPesquisa;
    //$_SESSION['tipoP'] = $tipoPesquisa;
    //$_SESSION['valorP'] = $valorPesquisa;
    //echo "<br>tipo1 valor1 => " . $_SESSION['tipoP1'] . " - " . $_SESSION['valorP1'];
    if($tipoPesquisa == "" && $valorPesquisa == "")
        {
            $tipoPesquisa =  $_SESSION['tipoP1'];
            $valorPesquisa = $_SESSION['valorP1'];
        }
    echo $_SESSION['tipoP'] = $tipoPesquisa;
    echo $_SESSION['valorP'] = $valorPesquisa;
?>

                                <table class="table table-striped table-bordered table-condensed">
                                    <thead>
                                        <tr>
                                            <th>ID</th>
                                            <th>Nº CIR</th>
                                            <th>Nome do Computador</th>
                                            <th>Divisão</th>
                                            <th>Setor da Máquina</th>
                                            <th>Localização</th>
                                            <th>Status</th>
                                            <th>OPÇÃO</th> 
                                        </tr>
                                    </thead>  
                                    <tbody> 
                                        <?php
                                            $nomeTabela = "computador";								
                                            require_once '../dao/DAO-controleCir.php';
                                            $compAltDAO = new ControleCirDAO();
                                            foreach($compAltDAO->ListarOpcao2($nomeTabela, $tipoPesquisa, $valorPesquisa) as $comp)                                             
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
                                                                    $html = "<a href='../controllers/ativarDesativarComp.php?action=3&id=$idComputador' class='btn btn-small btn-success'>I<i class='icon-remove'></i></a>";
                                                                    $inativo++;
																	echo $html;
                                                                }  
															else
                                                                {
                                                                    $html = "<a href='../controllers/ativarDesativarComp.php?action=4&id=$idComputador' class='btn btn-small btn-danger'>I<i class='icon-remove'></i></a>";
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
										} ?>					
                                    </tbody>                                        
                                </table> 