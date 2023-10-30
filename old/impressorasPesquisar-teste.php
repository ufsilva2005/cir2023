<?php
	include "../template/menuPrincipal.php";
    include "../scripts/escodeInput.php";
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
						<h5>Selecione o Tipo de Pesquisa:</h5>
                        <div class="panel-header">
                             <form id="pesquisaComp" class="form-horizontal" action="./listarPesquisaComputador.php" method="POST">
                            <nav>
                                <div class="nav nav-tabs nav-fill" id="nav-tab" role="tablist">
                                    <a class="nav-item nav-link active" id="nav-Numero-tab" data-toggle="tab" href="#nav-Numero" role="tab" aria-controls="nav-Numero" aria-selected="true">Número da Cir</a>
                                    <a class="nav-item nav-link" id="nav-Ip-tab" data-toggle="tab" href="#nav-Ip" role="tab" aria-controls="nav-Ip" aria-selected="false">Número Ip</a>
                                    <a class="nav-item nav-link" id="nav-Mac-tab" data-toggle="tab" href="#nav-Mac" role="tab" aria-controls="nav-Mac" aria-selected="false">Número Mac</a>
                                    <a class="nav-item nav-link" id="nav-Patrimonio-tab" data-toggle="tab" href="#nav-Patrimonio" role="tab" aria-controls="nav-Patrimônio" aria-selected="false">Patrimônio</a>
                                    <a class="nav-item nav-link" id="nav-Nome-tab" data-toggle="tab" href="#nav-Nome" role="tab" aria-controls="nav-Nome" aria-selected="true">Nome</a>
                                    <a class="nav-item nav-link" id="nav-Divisao-tab" data-toggle="tab" href="#nav-Divisao" role="tab" aria-controls="nav-Divisao" aria-selected="false">Divisão</a>
                                    <a class="nav-item nav-link" id="nav-Local-tab" data-toggle="tab" href="#nav-Local" role="tab" aria-controls="nav-Local" aria-selected="false">Local ou Andar</a>
                                    <a class="nav-item nav-link" id="nav-Sistema-tab" data-toggle="tab" href="#nav-Sistema" role="tab" aria-controls="nav-Sistema" aria-selected="false">Sistema Operacional</a>
						        </div>
                            </nav>	

                           
                            <div class="tab-content py-3 px-3 px-sm-5" id="nav-tabContent">
                                <!-- SELECIONA NUMERO DA CIR -->	
                                <div class="tab-pane fade show active" id="nav-Numero" role="tabpanel" aria-labelledby="nav-Numero-tab">
                                    <div class="row">
                                        <div class="col px-md-1 col-md-5">
                                            <label for="inputEmail3" class="col-sm-6 control-label">Número da CIR:</label>
                                            <input type="text" class="form-control" name = "numCir" id = "numCir" pattern="[0-9]+$" oninvalid="setCustomValidity('Somente Numeros!')" onchange="try{setCustomValidity('')}catch(e){}" placeholder="0000000000">
                                        </div>                                                               
                                    </div>
                                </div>
                                <!-- SELECIONA NUMERO DE IP -->
                                <div class="tab-pane fade" id="nav-Ip" role="tabpanel" aria-labelledby="nav-Ip-tab">
                                    <div class="row">
                                        <div class="col px-md-1 col-md-5">
                                            <label for="inputEmail3" class="col-sm-6 control-label">Ip do Computador:</label>
                                            <input type="text" class="form-control"  name="numeroIp" pattern="((^|\.)((25[0-5])|(2[0-4]\d)|(1\d\d)|([1-9]?\d))){4}$" placeholder="000.000.000.000" oninvalid="setCustomValidity('Endereco ip invalido!')" onchange="try{setCustomValidity('')}catch(e){}">
										</div>                                        
                                    </div>
                                </div> 
                                <!-- SELECIONA NUMERO DE MAC --> 
                                <div class="tab-pane fade" id="nav-Mac" role="tabpanel" aria-labelledby="nav-Mac-tab">
                                    <div class="row">
                                        <div class="col px-md-1 col-md-5">
                                            <label for="inputEmail3" class="col-sm-6 control-label">MAC do Computador:</label>
                                            <input type="text" maxlength="17" OnKeyPress="formatar('##:##:##:##:##:##', this)" pattern="([a-fA-F0-9]{2}[:]){5}([a-fA-F0-9]{2})$" oninvalid="setCustomValidity('Numero Mac inválido!')" onchange="try{setCustomValidity('')}catch(e){}"  class="form-control" name="numeroMac">
										</div>                                        
                                    </div>
                                </div> 
                                <!-- SELECIONA NUMERO DE PATRIMONIO --> 
                                <div class="tab-pane fade" id="nav-Patrimonio" role="tabpanel" aria-labelledby="nav-Patrimonio-tab">
                                    <div class="row">
                                        <div class="col px-md-1 col-md-5">
                                            <label for="inputEmail3" class="col-sm-6 control-label">Patrimônio da Reitoria:</label>
                                            <input type="text" class="form-control" name="patrimonioReit">
                                        </div>       
                                        <div class="col px-md-1 col-md-5">
                                            <label for="inputEmail3" class="col-sm-6 control-label">Patrimônio do HU:</label>
                                            <input type="text" class="form-control" name="patrimonioHu">
                                        </div>                                        
                                    </div>
                                </div> 
                                <!-- SELECIONA NOME --> 
                                <div class="tab-pane fade" id="nav-Nome" role="tabpanel" aria-labelledby="nav-Nome-tab">
                                    <div class="row">
                                        <div class="col px-md-1 col-md-5">
                                            <label for="inputEmail3" class="col-sm-6 control-label">Nome do Computador:</label>
                                            <input type="text" class="form-control" id = "nomeCir" name = "nomeCir" >
                                        </div>                                        
                                    </div>
                                </div> 
                                <!-- SELECIONA DIVISÃO --> 
                                <div class="tab-pane fade" id="nav-Divisao" role="tabpanel" aria-labelledby="nav-Divisao-tab">
                                    <div class="row">
                                        <div class="col px-md-1 col-md-6">
                                            <label for="inputEmail3" class="col-sm-6 control-label">Divisão do Computador:</label>
                                                <select class="form-control" name = "divisao" >
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
                                <!-- SELECIONA LOCAL DO HU --> 
                                <div class="tab-pane fade" id="nav-Local" role="tabpanel" aria-labelledby="nav-Local-tab">
                                    <div class="row">
                                        <div class="col px-md-1 col-md-5">
                                            <label for="inputEmail3" class="col-sm-6 control-label">Local do Computador:</label>
                                            <input type="text" class="form-control" name="local">
                                        </div>   
                                        <div class="col px-md-1 col-md-5">
                                            <label for="inputEmail3" class="col-sm-6 control-label">Andar do Computador:</label>
                                            <select class="form-control" name = "andar">
                                                    <option> </option>
                                                    <option>subsolo</option>
                                                    <option>1° andar</option>
                                                    <option>2° andar</option>
                                                    <option>3° andar</option>
                                                    <option>4° andar</option>
                                                    <option>5° andar</option>
                                                    <option>6° andar</option>
                                                    <option>7° andar</option>
                                                    <option>8° andar</option>
                                                    <option>9° andar</option>
                                                    <option>10° andar</option>
                                                    <option>11° andar</option>
                                                    <option>12° andar</option>
                                                    <option>13° andar</option>
                                                </select>
                                        </div>                                      
                                    </div>
                                </div> 
                                <!-- SELECIONA SISTEMA OPERACIONAL --> 
                                <div class="tab-pane fade" id="nav-Sistema" role="tabpanel" aria-labelledby="nav-Sistema-tab">
                                    <div class="row">
                                        <div class="col px-md-1 col-md-5">
                                            <label for="inputEmail3" class="col-sm-6 control-label">Sistema Operacional:</label>
                                                <select class="form-control"  name = "sistema" >
                                                    <option> </option>
                                                    <option>WINDOWS XP</option>
                                                    <option>WINDOWS VISTA</option>
                                                    <option>WINDOWS 7</option>
                                                    <option>WINDOWS 8</option>
                                                    <option>WINDOWS 10</option>
                                                    <option>MAC OS</option>
                                                    <option>LINUX</option>
                                                    <option>OPEN BSD</option>
                                                    <option>NOVELL</option>
                                                </select>
                                        </div>                                        
                                    </div>
                                </div> 
                            </div>  
                            <hr>
                            <div id="actions" class="row">
                                <div class="col-md-12">
                                    <button type="submit" class="btn btn-primary">Pesquisar</button>
                                    <button class="btn" type="reset">Cancelar</button>													
                                </div>																							
                            </div>     
                            
                            <ul class="nav nav-tabs" id="myTab" role="tablist">
  <li class="nav-item" role="presentation">
    <button class="nav-link active" id="home-tab" data-bs-toggle="tab" data-bs-target="#home" type="button" role="tab" aria-controls="home" aria-selected="true">Home</button>
  </li>
  <li class="nav-item" role="presentation">
    <button class="nav-link" id="profile-tab" data-bs-toggle="tab" data-bs-target="#profile" type="button" role="tab" aria-controls="profile" aria-selected="false">Profile</button>
  </li>
  <li class="nav-item" role="presentation">
    <button class="nav-link" id="contact-tab" data-bs-toggle="tab" data-bs-target="#contact" type="button" role="tab" aria-controls="contact" aria-selected="false">Contact</button>
  </li>
</ul>
<div class="tab-content" id="myTabContent">
  <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">...</div>
  <div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">...</div>
  <div class="tab-pane fade" id="contact" role="tabpanel" aria-labelledby="contact-tab">...</div>
</div>

                 
                        </form>		
                        
                         <form name="cadastro" id="cadastro" class="form-horizontal" action="../controllers/pacienteEditarPesquisa.php?op=1" onsubmit="ValidarCPF(cadastro.dadosCpf);" method="POST">	
                <div class="row">
                    <div class="col px-md-1 col-md-6">															
                        <label for="inputSuccess" class="control-label">Selecione o Tipo de Pesquisa</label> <br><br>

                        <div class="form-check form-check-inline">
                            <input class="form-check-input" type="radio" name="pesquisa" value="nomePaciente" id="pesquisa1">
                            <label class="form-check-label" for="pesquisa1">Nome Paciente</label>  
                        </div>	

                        <div class="form-check form-check-inline">
                            <input class="form-check-input" type="radio" name="pesquisa" value="cpf" id="pesquisa2">
                            <label class="form-check-label" for="pesquisa2">CPF</label>
                        </div>	

                        <div class="form-check form-check-inline">
                            <input class="form-check-input" type="radio" name="pesquisa" value="numSus" id="pesquisa3">
                            <label class="form-check-label" for="pesquisa3">SUS</label>
                        </div>		
                        
                        <div class="form-check form-check-inline">
                            <input class="form-check-input" type="radio" name="pesquisa" value="prontuario" id="pesquisa4">
                            <label class="form-check-label" for="pesquisa4">Nº Prontuário</label>
                        </div>
                    </div>	
                </div>	

                <div id="palco" class="row">									
                    <div id="nomePaciente" >
                        <a>Nome do Paciente:</a>
                        <input type="text" class="form-control" name="nomePaciente" >
                        <hr>
                        <button type="submit" class="btn btn-primary">OK</button>
                        <a href="../template/menuPrincipal.php" type="reset" class="btn btn-small btn-outline-warning">Cancelar<i class="icon-remove"></i></a>
                    </div>

                    <div id="cpf" >
                        <a>Nº do CPF:</a>
                        <input type="text" class="form-control" name="dadosCpf" id="dadosCpf" onblur = "ValidarCPF(cadastro.dadosCpf)">
                        <hr>
                        <button type="submit" class="btn btn-primary">OK</button>
                        <a href="../template/menuPrincipal.php" type="reset" class="btn btn-small btn-outline-warning">Cancelar<i class="icon-remove"></i></a>
                    </div>

                    <div id="numSus" >
                        <a>Nº Cartão SUS:</a>
                        <input type="text" class="form-control" name="numSus" >
                        <hr>
                        <button type="submit" class="btn btn-primary">OK</button>
                        <a href="../template/menuPrincipal.php" type="reset" class="btn btn-small btn-outline-warning">Cancelar<i class="icon-remove"></i></a>
                    </div>

                    <div id="prontuario" >
                        <a>Nº Prontuário:</a>
                        <input type="text" class="form-control" name="numProtuario" >
                        <hr>
                        <button type="submit" class="btn btn-primary">OK</button>
                        <a href="../template/menuPrincipal.php" type="reset" class="btn btn-small btn-outline-warning">Cancelar<i class="icon-remove"></i></a>
                    </div>
                </div>		
			</form>	

                        </div> 						
					</div>
				</div>
			</div>	
		</div>		
	</body>
</html>
