<?php
    //echo "1" . $tipoPesquisa . " - " . $valorPesquisa;
    //echo $tipoPesquisa;
    //echo $valorPesquisa;
    //$_SESSION['tipoP'] = $tipoPesquisa;
    //$_SESSION['valorP'] = $valorPesquisa;

    if($tipoPesquisa == "" && $valorPesquisa == "")
        {
            $tipoPesquisa =  $_SESSION['tipoP1'];
            $valorPesquisa = $_SESSION['valorP1'];
        }
    $_SESSION['tipoP'] = $tipoPesquisa;
    $_SESSION['valorP'] = $valorPesquisa;
?>

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
                                            $nomeTabela = "impressoras";								
                                            require_once '../dao/DAO-controleCir.php';
                                            $impAltDAO = new ControleCirDAO();
                                            foreach($impAltDAO->BuscaPorDivisao($valorPesquisa) as $imp)   
                                                                                      
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
                                                                <a href="./impressoraAlterar.php?action=3&id=<?php echo $imp->idImpressora;?> " class="btn btn-small btn-warning table-edit">A<i class="icon-edit"></i></a>
                                                            </div>
                                                            <div class="btn-group pull-left">
                                                                <a href="./historicoImp.php?action=1&id=<?php echo $imp->idImpressora; ?>"  class="btn btn-primary">H<i class="icon-remove"></i></a>
                                                            </div>
                                                            <div class="btn-group pull-left">
                                                                <a href="./impressoraDetalhes.php?action=4&id=<?php echo $imp->idImpressora; ?>" class="btn btn-info">D<i class="icon-remove"></i></a>
                                                            </div>
                                                            <div class="btn-group pull-left">
                                                                <?php                                    
                                                                    if($statusImpressora != "ativo") 
                                                                        {
                                                                            $html = "<a href='../controllers/ativarDesativar.php?action=3&id=$idImpressora' class='btn btn-small btn-success'>I<i class='icon-remove'></i></a>";
                                                                            $inativo++;
                                                                            echo $html;
                                                                        }  
                                                                    else
                                                                        {
                                                                            $html = "<a href='../controllers/ativarDesativar.php?action=4&id=$idImpressora' class='btn btn-small btn-danger'>I<i class='icon-remove'></i></a>";
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
                                  