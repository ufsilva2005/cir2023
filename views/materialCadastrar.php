<?php
	include "../template/menuPrincipal.php";
    include "../scripts/mascara.php"; 

    if($_SESSION['entMaterial'] != "sim")
        {
            echo "<script type='text/javascript'>alert('USUÁRIO NÃO AUTORIZADO');</script>";
            echo "<script>location = '../template/menuPrincipal.php';</script>";  
        }

        //SELECT codigo FROM `material` WHERE codigo LIKE 'cir%' ORDER BY codigo DESC LIMIT 1 

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
                                                <div class="col px-md-1 col-md-5">
                                                    <input type="text" class="form-control" name = "imp" id = "imp"  pattern=".{5,}"  placeholder="000000000000" oninvalid="setCustomValidity('O Número de Série deve ter no Minimo 12 digitos !')" onchange="try{setCustomValidity('')}catch(e){}" >
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
