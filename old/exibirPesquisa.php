
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
                                                            <div class='btn-group pull-left' >
                                                                <a href='./impressoraAlterar.php?action=1&id=<?php echo $imp->idImpressora;?> ' class='btn btn-small btn-warning table-edit'>A<i class='icon-edit'></i></a>
                                                            </div>
                                                            <div class='btn-group pull-left'>
                                                                <a href='./.php?action=1&id=<?php echo $imp->idImpressora; ?>' class='btn btn-primary'>H<i class='icon-remove'></i></a>
                                                            </div>
                                                            <div class='btn-group pull-left'>
                                                                <a href='./.php?action=1&id=<?php echo $imp->idImpressora; ?>' class='btn btn-info'>D<i class='icon-remove'></i></a>
                                                            </div>
                                                            <div class='btn-group pull-left'>
                                                                <a href='../.php?action=2&id=<?php echo $imp->idImpressora; ?>' class='btn btn-small btn-danger'>I<i class='icon-remove'></i></a>
                                                            </div>
                                                            <div class='btn-group pull-left'>
                                                                <a href='../.php?action=2&id=<?php echo $imp->idImpressora; ?>' class='btn btn-small btn-ufs'>P<i class='icon-remove'></i></a>
                                                            </div>
                                                        </td>			
                                                    <tr>									
                                                <?php 
                                                } ?>	