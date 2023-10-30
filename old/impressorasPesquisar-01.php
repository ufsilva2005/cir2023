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


                <script type="text/javascript" src="../Js/typeahead.js"></script>  
				<p></p><p></p>	
				<div class="line">
                    <div class="col-md-12">	     
						<h3 class="text-success">Selecione o Tipo de Pesquisa:</h3>
                        <div class="panel-header">
                            <form id="pesquisaComp" class="form-horizontal" action="./listarPesquisaComputador.php" method="POST">    
                                <ul class="nav nav-tabs" id="myTab" role="tablist">
                                    <li class="nav-item" role="presentation">
                                        <button class="nav-link active" id="home-tab" data-bs-toggle="tab" data-bs-target="#home" type="button" role="tab" aria-controls="home" aria-selected="true">Número de Série</button>
                                    </li>

                                    <li class="nav-item" role="presentation">
                                        <button class="nav-link" id="divisao-tab" data-bs-toggle="tab" data-bs-target="#divisao" type="button" role="tab" aria-controls="divisao" aria-selected="false">Divisão</button>
                                    </li>

                                    <li class="nav-item" role="presentation">
                                        <button class="nav-link" id="modelo-tab" data-bs-toggle="tab" data-bs-target="#modelo" type="button" role="tab" aria-controls="modelo" aria-selected="false">Modelo</button>
                                    </li>
                                </ul>
                            
                                <div class="tab-content" id="myTabContent">
                                    <hr>
                                    <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">   
                                        <div class="col px-md-1 col-md-5">
                                            <input type="text" class="form-control" name = "numSerie" id = "numSerie"  pattern=".{5,}"  placeholder="000000000000" oninvalid="setCustomValidity('O Número de Série deve ter no Minimo 12 digitos !')" onchange="try{setCustomValidity('')}catch(e){}" >
                                        </div> 
                                    </div>

                                    <div class="tab-pane fade" id="divisao" role="tabpanel" aria-labelledby="divisao-tab">
                                        <div class="col px-md-1 col-md-5">
											<select class="form-control" id="divisao" name = "divisao" >
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

                                    <div class="tab-pane fade" id="modelo" role="tabpanel" aria-labelledby="modelo-tab">
                                         <div class="col px-md-1 col-md-5">
                                            <select class="form-control" id="modelo" name = "modelo">
                                                <option  value=""> </option> 
                                                <?php
                                                    include_once "../dao/DAO-controleCir.php";                                    
                                                    $impreDAO = new ControleCirDAO();   
                                                    $nomeTabela = "modeloImpressora";
                                                    $tipoOpcao = "statusModelo";
                                                    $valorOpcao = "ativo";
                                                                                        
                                                    foreach ($impreDAO->ListarOpcao($nomeTabela, $tipoOpcao, $valorOpcao) as $res)
                                                        {
                                                            ?>     
                                                                <option value="<?php echo $res->idModelo;?>"> <?php echo $res->modeloImpressora;?> </option> 
                                                            <?php      
                                                        }                                          
                                                ?>
                                            </select>
                                        </div> 
                                    </div>
                                </div>
                            </form>	

                            <ul class="nav nav-pills mb-3" id="pills-tab" role="tablist">
                                <li class="nav-item" role="presentation">
                                    <button class="nav-link active" id="pills-home-tab" data-bs-toggle="pill" data-bs-target="#pills-home" type="button" role="tab" aria-controls="pills-home" aria-selected="true">Home</button>
                                </li>
                                <li class="nav-item" role="presentation">
                                    <button class="nav-link" id="pills-profile-tab" data-bs-toggle="pill" data-bs-target="#pills-profile" type="button" role="tab" aria-controls="pills-profile" aria-selected="false">Profile</button>
                                </li>
                                <li class="nav-item" role="presentation">
                                    <button class="nav-link" id="pills-contact-tab" data-bs-toggle="pill" data-bs-target="#pills-contact" type="button" role="tab" aria-controls="pills-contact" aria-selected="false">Contact</button>
                                </li>
                            </ul>
                            <div class="tab-content" id="pills-tabContent">
                                <div class="tab-pane fade show active" id="pills-home" role="tabpanel" aria-labelledby="pills-home-tab">...</div>
                                <div class="tab-pane fade" id="pills-profile" role="tabpanel" aria-labelledby="pills-profile-tab">...</div>
                                <div class="tab-pane fade" id="pills-contact" role="tabpanel" aria-labelledby="pills-contact-tab">...</div>
                            </div>

                        </div> 						
					</div>
				</div>
			</div>	
		</div>		
	</body>
</html>
