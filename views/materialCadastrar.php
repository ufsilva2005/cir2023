<?php
	include "../template/menuPrincipal.php";
    include "../scripts/mascara.php"; 
    include_once "../funcao/funcao.php";
	include_once "../dao/DAO-controleCir.php";

    if($_SESSION['entMaterial'] != "sim")
        {
            echo "<script type='text/javascript'>alert('USUÁRIO NÃO AUTORIZADO');</script>";
            echo "<script>location = '../template/menuPrincipal.php';</script>";  
        }

    //Buscar código cir
	$codigoDAO = new ControleCirDAO();
	foreach ($codigoDAO->BuscarCodigo() as $resp)
		{ 
			$codigo1 = $resp->codigo;				          
		}
    
    //echo strlen($codigo1);
    $codigo2 = soNumero($codigo1);
    $tamCodigo2 = strlen($codigo2);
    $codigo2 = $codigo2+1;
    $tamCodigo1 = strlen($codigo1);
    $result = strstr($codigo1, "-", true); 
    $fimCodigo = str_pad($codigo2, $tamCodigo2, "0", STR_PAD_LEFT);
    $codigo = $result ."-".$fimCodigo;

    //echo "<br>codigo2 => " . $codigo2;
    //echo "<br>tamanho codigo1 => " . $tamCodigo1;
    //echo "<br>tamanho codigo2 => " . $tamCodigo2;
    //echo "<br>result => " . $result;
    //echo "<br>fimCodigo => " . $fimCodigo;
    //echo "<br>codigo final => " . $codigo;

    //$idFuncionario = $_SESSION['idFuncionario'];  
    //$nomeFuncionario = $_SESSION['nomeFuncionario'];  
?>	


                <div class="container">
                    <div id="page-content-wrapper">                        						
                        <div class="panel-content">  
                            <div class="col-md-12">	     
						        <h3 class="text-success">Cadastro de Materiais:</h3>
                                <div class="panel-header">
                                    <form class="form-horizontal" action="../controllers/materialCadastro.php" method="POST">   
                                        <ul class="nav nav-pillsUfs mb-3" id="pillsUfs-tab" role="tablist">
                                            <li class="nav-item" role="presentation">
                                                <button class="nav-link active" id="pillsUfs-imp-tab" data-bs-toggle="pill" data-bs-target="#pillsUfs-imp" type="button" role="tab" aria-controls="pillsUfs-imp" aria-selected="true">Impressoras</button>
                                            </li>
                                            <li class="nav-item" role="presentation">
                                                <button class="nav-link" id="pillsUfs-comp-tab" data-bs-toggle="pill" data-bs-target="#pillsUfs-comp" type="button" role="tab" aria-controls="pillsUfs-comp" aria-selected="false">Computador</button>
                                            </li>
                                        </ul> 

                                        <div class="tab-content" id="pillsUfs-tabContent">
                                            <div class="tab-pane fade show active" id="pillsUfs-imp" role="tabpanel" aria-labelledby="pillsUfs-imp-tab">
                                                <div class="row">
                                                    <div class="col px-md-1 col-md-3">
                                                        <label for="inputSuccess" class="control-label">Código:</label>
                                                        <input type="text" class="form-control" name = "codigoImp" id = "codigoImp" value = "<?=$codigo; $_SESSION['codigo']=$codigo?>" readonly />
                                                    </div> 
                                                    <div class="col px-md-1 col-md-5">
                                                        <label for="inputSuccess" class="control-label">Descrição:</label>
                                                        <input type="text" class="form-control" name = "descImp" >
                                                    </div> 
                                                </div> 
                                            </div>

                                            <div class="tab-pane fade" id="pillsUfs-comp" role="tabpanel" aria-labelledby="pillsUfs-comp-tab">
                                                <div class="col px-md-1 col-md-5">
                                                    <select class="form-control" id="comp" name = "comp" >
                                                        <option> </option>
                                                        <option>CAE</option>
                                                        <option>CIR</option>
                                                        <option>DAA</option>
                                                        <option>DAG</option>
                                                        <option>DEG</option>
                                                        <option>DEN</option>
                                                        <option>DFN</option>
                                                        <option>DRH</option>
                                                        <option>DG</option>
                                                        <option>DMD</option>
                                                        <option>DSC</option>
                                                        <option>FM</option>
                                                        <option>IDT</option>
                                                        <option></option>
                                                    </select>								
                                                </div> 
                                            </div>
                                        </div>  
                                        <hr>
                                        <div id="actions" class="row">
                                            <div class="col-md-2">
                                                <button type="submit" class="btn btn-success">Salvar</button>								
                                            </div>

                                            <div class="col-md-2">								
                                                <a  href="../template/menuPrincipal.php"><button type="button" class="btn btn-outline-warning">Voltar</button></a>
                                            </div>	
                                        </div>                
                                    </form>	
                                </div>
                            </div>  
                        </div> 						
					</div>
				</div>
			</div>	
		</div>		
	</body>
</html>
