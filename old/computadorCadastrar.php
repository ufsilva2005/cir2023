<?php
    //include "../template/menuPrincipal.php";
    //include "../scripts/mascara.php";

    //if ($_SESSION['computador'] != "sim") {
        //echo "<script type='text/javascript'>alert('USUÁRIO NÃO AUTORIZADO');</script>";
        //echo "<script>location = '../template/menuPrincipal.php';</script>";
    //}

    //$idFuncionario = $_SESSION['idFuncionario'];  
    //$nomeFuncionario = $_SESSION['nomeFuncionario'];  

    //include "../scripts/validarNumImp.php";
    //include "../scripts/validarNumImp.php";
    //include "../scripts/mascara.php";
    include_once("../dao/conexao.php"); 
?>
<script src="../js/jquery.min.3-1.js"></script>
<!--script src="../js/typeahead.js"></!--script-->
 <script src="../js/bootstrap3-typeahead.min.js"></script>  

        <hr>
        <nav class="navbar navbar-dark">
            <div class="line col-md-12 p-5 position-absolute start-5 top-0 bottom-50 end-250">
                <i class="icon-tasks icon-blue"></i>
                <h3 class="text-success">Cadastro de Computador</h3>
                <div class="panel-content">
                    <div class="col-md-12">
                    <form  method="post" action="../controllers/computadorCadastrar.php">
                                    <fieldset>	
                                        <div class="row">										
											<label><a>1-> Informações Sobre o Computador</a></label>
										</div>	
                                        
                                        <div class="row">
                                            <div class="col px-md-1 col-md-3">
                                                <label for="inputSuccess" class="control-label" >Número da Cir:</label>
                                                <input type="text" class="form-control" name = "numCir" id = "numCir" pattern="[0-9]+$" oninvalid="setCustomValidity('Somente Numeros!')" onchange="try{setCustomValidity('')}catch(e){}" placeholder="0000000000"  required>
                                            </div>  
                                                
                                            <div class="col px-md-1 col-md-3">
												<label for="inputSuccess" class="control-label">Patrimônio Reitoria:</label>
												<input type="text" class="form-control" name="DadosComputador[]" pattern="[0-9]+$" oninvalid="setCustomValidity('Somente Numeros!')" onchange="try{setCustomValidity('')}catch(e){}" placeholder="0000000000" required>
											</div>

                                            <div class="col px-md-1 col-md-3">
												<label for="inputSuccess" class="control-label">Patrimônio HU:</label>
												<input type="text" class="form-control" name="DadosComputador[]" pattern="[0-9]+$" oninvalid="setCustomValidity('Somente Numeros!')" onchange="try{setCustomValidity('')}catch(e){}" placeholder="0000000000" required>
											</div>

											<div class="col px-md-1 col-md-3">
												<label for="inputSuccess" class="control-label">Nome do Computador:</label>
												<input type="text" class="form-control" id = "nomeCir" name = "nomeCir" required>
											</div>												                                      
                                        </div>		
                                            
                                        <div class="row">
											<div class="col px-md-1 col-md-2">
												<label for="inputSuccess" class="control-label">Sistema Operacional:</label>
												<select class="form-control"  name = "DadosComputador[]" required>
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

											<div class="col px-md-1 col-md-3">
												<label for="inputSuccess" class="control-label">Modelo/Marca:</label>
												<!--input type="text" class="form-control" name="DadosComputador[]" required-->
												<input type="text" class="form-control" name="modelo" id = "modelo" />
											</div>
																	
											<div class="col px-md-1 col-md-5">
												<label for="inputSuccess" class="control-label">Tipo de Processador:</label>
												<!--input type="text" class="form-control" name="DadosComputador[]" required-->
												<input type="text" class="form-control" name="tipoProcessador" id="tipoProcessador"   autocomplete="off" />
											</div>
																	
											<div class="col px-md-1 col-md-2">
												<label for="inputSuccess" class="control-label">Memória:</label>
												<select class="form-control" name="DadosComputador[]"required>
                                                    <option> </option>
                                                    <option>512 Mb</option>
                                                    <option>1 Gb</option>
                                                    <option>2 Gb</option>
                                                    <option>3 Gb</option>
                                                    <option>4 Gb</option>
                                                    <option>8 Gb</option>
                                                    <option>16 Gb</option>
                                                    <option>32 Gb</option>
                                                </select>
											</div>
										</div>
                                            
                                        <div class="row">
											<div class="col px-md-1 col-md-3">
												<label for="inputSuccess" class="control-label">Número de IP:</label>
												<input type="text" class="form-control"  name="DadosComputador[]" pattern="((^|\.)((25[0-5])|(2[0-4]\d)|(1\d\d)|([1-9]?\d))){4}$" placeholder="000.000.000.000" oninvalid="setCustomValidity('Endereco ip invalido!')" onchange="try{setCustomValidity('')}catch(e){}" >
											</div>
																
											<div class="col px-md-1 col-md-3">
												<label for="inputSuccess" class="control-label">Número MAC:</label>
												<input type="text" maxlength="17" OnKeyPress="formatar('##:##:##:##:##:##', this)" pattern="([a-fA-F0-9]{2}[:]){5}([a-fA-F0-9]{2})$" oninvalid="setCustomValidity('Numero Mac inválido!')" onchange="try{setCustomValidity('')}catch(e){}"  class="form-control" name="DadosComputador[]" required>
											</div>
																	
											<div class="col px-md-1 col-md-3">
												<label for="inputSuccess" class="control-label">Capacidade do HD:</label>
												 <select class="form-control"  name = "DadosComputador[]" required>
                                                    <option> </option>
                                                    <option>40 GB</option>
                                                    <option>60 GB</option>
                                                    <option>80 GB</option>
                                                    <option>100 GB</option>
                                                    <option>120 Gb</option>
                                                    <option>160 GB</option>
                                                    <option>200 GB</option>
                                                    <option>250 GB</option>
                                                    <option>300 GB</option>
                                                    <option>320 GB</option>
                                                    <option>500 GB</option>
                                                    <option>640 GB</option>
                                                    <option>750 GB</option>
                                                    <option>1 TB</option>
                                                    <option>1.5 TB</option>
                                                    <option>2 TB</option>
                                                    <option>2.5 TB</option>
                                                    <option>3 TB</option>
                                                    <option></option>
                                                </select>
												<!--input type="text" class="form-control" name="Computador[]" required-->
											</div>
																	
											<div class="col px-md-1 col-md-3">
                                                <label for="inputSuccess" class="control-label">Status:</label> <br>
                                                <div class="form-check form-check-inline">
                                                    <input class="form-check-input" type="radio" name="DadosComputador[7]" id="status1" value="ativo" checked>
                                                    <label class="form-check-label" for="status1">Ativo</label>
                                                </div>
                                                <div class="form-check form-check-inline">
                                                    <input class="form-check-input" type="radio" name="DadosComputador[7]" id="status2" value="inativo">
                                                    <label class="form-check-label" for="status2">Inativo</label>
                                                </div>
											</div>
										</div>
                                            
                                        <p></p>
											
										<div class="row">										
											<label><a>2-> Informações do local onde esta a máquina</a></label>
										</div>
											
										<div class="row">																						
											<div class="col px-md-1 col-md-2">
												<label for="inputSuccess" class="control-label">Divisão:</label>
												<select class="form-control" name = "LocalComputador[]" required>
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
												<!--input type="text" class="form-control"  name="Computador['divisao']" required-->
											</div>
																
											<div class="col px-md-1 col-md-2">
                                                <label for="inputSuccess" class="control-label">Localização:</label>
                                                <!--select class="selectpicker show-menu-arrow" name = "Computador['localizacao']"-->
                                                <select class="form-control" name = "LocalComputador[]" required>
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
																	
											<div class="col px-md-1 col-md-2">
												<label for="inputSuccess" class="control-label">Ramal:</label>
												<input type="text" class="form-control" name="LocalComputador[]" pattern="[0-9]{4}+$" oninvalid="setCustomValidity('Somente Numeros!')" onchange="try{setCustomValidity('')}catch(e){}" placeholder="0000" maxlength="4">
											</div>
																
											<div class="col px-md-1 col-md-6">
												<label for="inputSuccess" class="control-label">Responsável pelo Setor:</label>
												<input type="text" class="form-control" name="LocalComputador[]">
											</div>
										</div>
                                           
                                        <div class="row">
											<div class="col px-md-1 col-md-6">
                                                <label for="inputSuccess" class="control-label">Local do Computador:</label>
                                                <!--input type="text" class="form-control" name="LocalComputador[]" required-->
                                                <input type="text" class="form-control" name="LocalComputador1" id="LocalComputador1" />
											</div>
											
											<div class="col px-md-1 col-md-6">
												<label for="inputSuccess" class="control-label">Observação:</label>
												<input type="text" class="form-control" name="DadosComputador[]">
											</div>
										</div>

										<div class="row">										
											<label><a>3-> Informações do responsavel pelo cadastro</a></label>
										</div>

                                        <div class="row">
                                            <div class="col px-md-1 col-md-2">
												<label for="inputSuccess" class="control-label">Data do Cadastro:</label>
												<input type="text" class="form-control"  value = "<?php $date = date('d/m/Y'); echo $date; $_SESSION['data']=$date; ?>" disabled>
											</div>
											
											<div class="col px-md-1 col-md-10">
												<label for="inputSuccess" class="control-label">Responsável pelo Cadastro:</label>
												<input type="text" class="form-control" value = "<?=$nomeFuncionario; $_SESSION['respCadastro']=$nomeFuncionario ?>"  disabled>
											</div>  
										</div>

										<p></p>	
											
										<div id="actions" class="row">
											<div class="col-md-12">
												<button type="submit" class="btn btn-primary">Salvar</button>
												<button class="btn" type="reset">Cancelar</button>													
											</div>
												
										    <div class="col px-md-1 col-md-12" id="MostraPesq">	</div>
										    <div class="col px-md-1 col-md-12" id="MostraPesq1"> </div>					
										</div>                                           
                                    </fieldset>
                                </form>  
                    </div>
                    <p></p>
                    <p></p>
                    <footer>
                        <p>&copy; <a href="">CADASTRO DE COMPUTADORES</a></p>
                    </footer>
                </div>
            </div>
        </nav>
    </body>
       <script>
        $(document).ready(function(){
            $('#tipoProcessador').typeahead({
                source: function(query, result)
                    {
                        $.ajax({
                            url:"../scripts/pesquisaProcessador.php",
                            method:"POST",
                            data:{query:query},
                            dataType:"json",
                            success:function(data)
                                {
                                    result($.map(data, function(item){
                                        return item;
                                    }));
                                }
                        })
                    }
            });
        });
    </script>
</html>