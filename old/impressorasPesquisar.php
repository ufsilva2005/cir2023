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
						<div class="panel-header">
							<i class="icon-tasks icon-blue"></i>
                            <h2>Informações da Impressora</h2>
						</div>
                        <hr>																									
                        <div class="col-md-12">
                            <h5>Menu Opção :</h5>
                            <div class="panel-header">
                                <i class="icon-list-alt icon-blue"></i>
                            
                                <div class="btn-group pull-left" >&nbsp
                                    <a class="btn btn-small btn-warning table-edit">Alterar<i class="icon-edit"></i></a>
                                </div>
                                
                                <div class="btn-group pull-left">&nbsp
                                    <a class="btn btn-primary">Historico<i class="icon-remove"></i></a>
                                </div>
                                
                                <div class="btn-group pull-left">&nbsp
                                    <a class="btn btn-info">Detalhes<i class="icon-remove"></i></a>
                                </div>
                                
                                <div class="btn-group pull-left">&nbsp
                                    <a class="btn btn-small btn-danger">eXcluir<i class="icon-remove"></i></a>
                                </div>

                                <div class="btn-group pull-left">&nbsp
                                    <a class='nav-link' href='./pesquisaImpressoras.php'><button type='button' class='btn btn-outline-warning'>voltar</button> </a>
                                </div>
                            </div>
					    </div>		

                        <hr>
                        
                        <table class="table table-striped table-bordered table-condensed">						
                            <thead>
                                <tr>
                                    <th>Número Série </th>
                                    <th>Nome</th>                                    
                                    <th>Divisão</th>
                                    <th>Localização</th>
                                    <th>Setor da maquina</th>
                                    <th>OPÇÃO</th>
                                </tr>
                            </thead>
                            <tbody> 
                                <?php
                                    if ($opcaoPesq == 0)
                                        {
                                            include_once "../dao/DAO-controleCir.php";
                                            $impAltDAO = new ControleCirDAO();
                                            foreach ($impAltDAO->Verificar($nomeTabela, $tipoDado, $valorDado) as $imp)
                                                { 
                                                    ?>													
                                                        <tr>
                                                            <td>
                                                                <?php echo $imp->numSerie?>
                                                            </td>
                                                            <td><?php echo $imp->nomeImpressora?></td>
                                                            <td>
                                                            <?php   $idSetor = $imp->idSetor; 
															$setorDAO = new ControleCirDAO();
															foreach($setorDAO->Buscalocal($idSetor) as $Setor)
																{ 	
																	$divisao1= $Setor->divisao;
																	$localizacao1 = $Setor->localizacao;
																	$nomeLocal1 = $Setor->nomeLocal;
																	echo $divisao1; 
																}
															
													?>
                                                            </td> 
                                                            <td><?php echo $localizacao1 ?></td>
                                                            <td><?php echo $nomeLocal1 ?></td>


                                                            <td class='operations'>
                                                                <div class="btn-group pull-left" >
                                                                    <a href="./alterarImpressora.php?action=1&id=<?php echo $imp->idImpressora;?> " class="btn btn-small btn-warning table-edit">A<i class="icon-edit"></i></a>
                                                                </div>
                                                                <div class="btn-group pull-left">
                                                                    <a href="./.php?action=1&id=<?php echo $imp->idImpressora; ?>" class="btn btn-primary">H<i class="icon-remove"></i></a>
                                                                </div>
                                                                <div class="btn-group pull-left">
                                                                    <a href="./.php?action=1&id=<?php echo $imp->idImpressora; ?>" class="btn btn-info">D<i class="icon-remove"></i></a>
                                                                </div>
                                                                <div class="btn-group pull-left">
                                                                    <a href="../.php?action=2&id=<?php echo $imp->idImpressora; ?>" class="btn btn-small btn-danger">X<i class="icon-remove"></i></a>
                                                                </div>
                                                            </td>
													    <tr>	
												    <?php 
											    }
										
                                        }

                                    elseif ($opcaoPesq == 1)
                                        {
                                            include_once "../dao/DAO-controleCir.php";
                                            $impAltDAO = new ControleCirDAO();
                                            foreach ($impAltDAO->BuscaDivisaoImp($valorDado) as $imp)
                                                { 
                                                    ?>													
                                                        <tr>
                                                            <td><?php echo $imp->numSerie?></td>
                                                            <td><?php echo $imp->nomeImpressora?></td>
                                                            <td>
                                                                <?php   $idSetor = $imp->idSetor; 
                                                                $setorDAO = new ControleCirDAO();
                                                                foreach($setorDAO->Buscalocal($idSetor) as $Setor)
                                                                    { 	
                                                                        $divisao1= $Setor->divisao;
                                                                        $localizacao1 = $Setor->localizacao;
                                                                        $nomeLocal1 = $Setor->nomeLocal;
                                                                        echo $divisao1; 
                                                                    }
                                                                
													            ?>
                                                            </td> 
                                                            <td><?php echo $localizacao1 ?></td>
                                                            <td><?php echo $nomeLocal1 ?></td>

                                                            <td class='operations'>
                                                                <div class="btn-group pull-left" >
                                                                    <a href="./.php?action=1&id=<?php echo $imp->idImpressora;?> " class="btn btn-small btn-warning table-edit">A<i class="icon-edit"></i></a>
                                                                </div>
                                                                <div class="btn-group pull-left">
                                                                    <a href="./.php?action=1&id=<?php echo $imp->idImpressora; ?>" class="btn btn-primary">H<i class="icon-remove"></i></a>
                                                                </div>
                                                                <div class="btn-group pull-left">
                                                                    <a href="./.php?action=1&id=<?php echo $imp->idImpressora; ?>" class="btn btn-info">D<i class="icon-remove"></i></a>
                                                                </div>
                                                                <div class="btn-group pull-left">
                                                                    <a href="../.php?action=2&id=<?php echo $imp->idImpressora; ?>" class="btn btn-small btn-danger">X<i class="icon-remove"></i></a>
                                                                </div>
                                                            </td>
                                                        <tr>	
                                                    <?php 
                                                }
                                        
                                        }   
                                        
                                        else 
                                            {
                                                include_once "../dao/DAO-controleCir.php";
                                                $impAltDAO = new ControleCirDAO();
                                                foreach ($impAltDAO->BuscaAndarImp($valorDado) as $imp)
                                                    { 
                                                        ?>													
                                                            <tr>
                                                                <td><?php echo $imp->numSerie?></td>
                                                                <td><?php echo $imp->nomeImpressora?></td>
                                                                <td>
                                                                    <?php   $idSetor = $imp->idSetor; 
                                                                    $setorDAO = new ControleCirDAO();
                                                                    foreach($setorDAO->Buscalocal($idSetor) as $Setor)
                                                                        { 	
                                                                            $divisao1= $Setor->divisao;
                                                                            $localizacao1 = $Setor->localizacao;
                                                                            $nomeLocal1 = $Setor->nomeLocal;
                                                                            echo $divisao1; 
                                                                        }
                                                                    
                                                                    ?>
                                                                </td> 
                                                                <td><?php echo $localizacao1 ?></td>
                                                                <td><?php echo $nomeLocal1 ?></td>

                                                                <td class='operations'>
                                                                    <div class="btn-group pull-left" >
                                                                        <a href="./.php?action=1&id=<?php echo $imp->idImpressora;?> " class="btn btn-small btn-warning table-edit">A<i class="icon-edit"></i></a>
                                                                    </div>
                                                                    <div class="btn-group pull-left">
                                                                        <a href="./.php?action=1&id=<?php echo $imp->idImpressora; ?>" class="btn btn-primary">H<i class="icon-remove"></i></a>
                                                                    </div>
                                                                    <div class="btn-group pull-left">
                                                                        <a href="./.php?action=1&id=<?php echo $imp->idImpressora; ?>" class="btn btn-info">D<i class="icon-remove"></i></a>
                                                                    </div>
                                                                    <div class="btn-group pull-left">
                                                                        <a href="../.php?action=2&id=<?php echo $imp->idImpressora; ?>" class="btn btn-small btn-danger">X<i class="icon-remove"></i></a>
                                                                    </div>
                                                                </td>
                                                            <tr>	
                                                        <?php 
                                                    }
                                            
                                            }  
								?>
                            </tbody>
				    </div>                   
                </div>
			</div>
		</div> 			
	</body>  	
</html>