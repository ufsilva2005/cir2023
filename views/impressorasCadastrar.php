<?php
    include "../template/menuPrincipal.php";
    include "../scripts/mascara.php";

    if ($_SESSION['impressora'] != "sim") {
        echo "<script type='text/javascript'>alert('USUÁRIO NÃO AUTORIZADO');</script>";
        echo "<script>location = '../template/menuPrincipal.php';</script>";
    }

    //$idFuncionario = $_SESSION['idFuncionario'];  
    //$nomeFuncionario = $_SESSION['nomeFuncionario'];  

    include "../scripts/validarNumImp.php";
    //include "../scripts/validarNumImp.php";
    include "../scripts/mascara.php";
?>
<script type="text/javascript" src="../javaScripts/typeahead.js"></script>

        <hr>
        <nav class="navbar navbar-dark">
            <div class="line col-md-12 p-5 position-absolute start-5 top-0 bottom-50 end-250">
                <i class="icon-tasks icon-blue"></i>
                <h3 class="text-success">Cadastro de Impressora</h3>
                <div class="panel-content">
                    <div class="col-md-12">
                        <form name="cadastro" id="cadastro" class="form-horizontal" method="POST" action="../controllers/impressoraCadastrar.php">
                            <fieldset>
                                <div class="row">
                                    <label>
                                        <h5 class="text-primary">1-> Informações da Impressora </h5>
                                    </label>
                                </div>

                                <div class="row">
                                    <div class="col px-md-1  col-md-3">
                                        <label for="inputSuccess" class="control-label">Nome da Impressora:</label>
                                        <input type="text" class="form-control" name="nomeImpressora" id="nomeImpressora">
                                    </div>

                                    <div class="col px-md-1  col-md-3">
                                        <label for="inputSuccess" class="control-label">Número de série:</label>
                                        <input type="text" class="form-control" name="numSerie" id="numSerie" pattern=".{5,}" placeholder="000000000000" oninvalid="setCustomValidity('O Número de Série deve ter no Minimo 12 digitos !')" onchange="try{setCustomValidity('')}catch(e){}" required>
                                    </div>

                                    <div class="col px-md-1  col-md-2">
                                        <label for="inputSuccess" class="control-label">Número de IP:</label>
                                        <input type="text" class="form-control" name="numIp" pattern="((^|\.)((25[0-5])|(2[0-4]\d)|(1\d\d)|([1-9]?\d))){4}$" placeholder="000.000.000.000" oninvalid="setCustomValidity('Endereco ip invalido!')" onchange="try{setCustomValidity('')}catch(e){}">
                                    </div>

                                    <div class="col px-md-1  col-md-2">
                                        <label for="inputSuccess" class="control-label">Número MAC:</label>
                                        <input type="text" maxlength="17" OnKeyPress="formatar('##:##:##:##:##:##', this)" pattern="([a-fA-F0-9]{2}[:]){5}([a-fA-F0-9]{2})$" oninvalid="setCustomValidity('Numero Mac inválido!')" onchange="try{setCustomValidity('')}catch(e){}" class="form-control" name="numMac">
                                    </div>

                                    <div class="col px-md-1 col-md-2">
                                        <label for="inputSuccess" class="control-label">Colorida:</label> <br>
                                        <div class="form-check form-check-inline">
                                            <input class="form-check-input" type="radio" name="colorida0" id="colorida1" value="sim" >
                                            <label class="form-check-label" for="colorida1">SIM</label>
                                        </div>
                                        <div class="form-check form-check-inline">
                                            <input class="form-check-input" type="radio" name="colorida0" id="colorida2" value="não" checked>
                                            <label class="form-check-label" for="colorida2">NÃO</label>
                                        </div>
                                    </div>
                                </div>

                                <hr>
                                <div class="row">
                                    <div class="col px-md-1 col-md-3">
                                        <label for="toner1" class="control-label">Modelo:</label>
                                        <select class="form-control" name="modelo" required>
                                            <option value=""> </option>
                                            <?php
                                            include_once "../dao/DAO-controleCir.php";
                                            $impreDAO = new ControleCirDAO();
                                            $nomeTabela = "modeloImpressora";
                                            $tipoOpcao = "statusModelo";
                                            $valorOpcao = "ativo";

                                            foreach ($impreDAO->ListarOpcao($nomeTabela, $tipoOpcao, $valorOpcao) as $res) {
                                            ?>
                                                <option value="<?php echo $res->idModelo; ?>"> <?php echo $res->modeloImpressora; ?> </option>
                                            <?php
                                            }
                                            ?>
                                        </select>
                                    </div>
                                    
                                    <div class="col px-md-1 col-md-2">
                                        <label class="control-label">Tipo do Tonner 1:</label>
                                        <select class="form-control" name="tonner1[]" required>
                                            <option value=""> </option>
                                            <?php
                                                include_once "../dao/DAO-controleCir.php";
                                                $tonnerDAO = new ControleCirDAO();
                                                $nomeTabela = "material";
                                                $tipoOpcao = "descricao";
                                                $status = "statusMat";
                                                $valorStatus = "ativo";
                                                $valorOpcao = "TONNER";
                                                $valorOpcao2 = "CARTUCHO DE TINTA";
                                                foreach ($tonnerDAO->ListarOpcaoAtivo2($nomeTabela, $tipoOpcao, $valorOpcao, $valorOpcao2, $status, $valorStatus) as $res) 
                                                    {
                                                        ?>
                                                            <option value="<?php echo $res->idMaterial; ?>"> <?php echo $res->descricao; ?> </option>
                                                        <?php
                                                    }
                                            ?>
                                        </select>
                                    </div>
                                    <div class="col px-md-1 col-md-2">
                                        <label class="control-label">Tipo do Tonner 2:</label>
                                        <select class="form-control" name="tonner2[]" >
                                            <option value=""> </option>
                                            <?php
                                            include_once "../dao/DAO-controleCir.php";
                                            $tonnerDAO = new ControleCirDAO();
                                            $nomeTabela = "material";
                                            $tipoOpcao = "descricao";
                                            $status = "statusMat";
                                            $valorStatus = "ativo";
                                            $valorOpcao = "TONNER";
                                            $valorOpcao2 = "CARTUCHO DE TINTA";
                                            foreach ($tonnerDAO->ListarOpcaoAtivo2($nomeTabela, $tipoOpcao, $valorOpcao, $valorOpcao2, $status, $valorStatus) as $res) 
                                                {
                                                    ?>
                                                        <option value="<?php echo $res->idMaterial; ?>"> <?php echo $res->descricao; ?> </option>
                                                    <?php
                                                }
                                            ?>
                                        </select>
                                    </div>
                                    <div class="col px-md-1 col-md-2">
                                        <label class="control-label">Tipo do Tonner 3:</label>
                                        <select class="form-control" name="tonner3[]" >
                                            <option value=""> </option>
                                            <?php
                                            include_once "../dao/DAO-controleCir.php";
                                            $tonnerDAO = new ControleCirDAO();
                                            $nomeTabela = "material";
                                            $tipoOpcao = "descricao";
                                            $status = "statusMat";
                                            $valorStatus = "ativo";
                                            $valorOpcao = "TONNER";
                                            $valorOpcao2 = "CARTUCHO DE TINTA";
                                            foreach ($tonnerDAO->ListarOpcaoAtivo2($nomeTabela, $tipoOpcao, $valorOpcao, $valorOpcao2, $status, $valorStatus) as $res) 
                                                {
                                                    ?>
                                                        <option value="<?php echo $res->idMaterial; ?>"> <?php echo $res->descricao; ?> </option>
                                                    <?php
                                                }
                                            ?>
                                        </select>
                                    </div>
                                    <div class="col px-md-1 col-md-2">
                                        <label class="control-label">Tipo do Tonner 4:</label>
                                        <select class="form-control" name="tonner4[]" >
                                            <option value=""> </option>
                                            <?php
                                            include_once "../dao/DAO-controleCir.php";
                                            $tonnerDAO = new ControleCirDAO();
                                            $nomeTabela = "material";
                                            $tipoOpcao = "descricao";
                                            $status = "statusMat";
                                            $valorStatus = "ativo";
                                            $valorOpcao = "TONNER";
                                            $valorOpcao2 = "CARTUCHO DE TINTA";
                                            foreach ($tonnerDAO->ListarOpcaoAtivo2($nomeTabela, $tipoOpcao, $valorOpcao, $valorOpcao2, $status, $valorStatus) as $res) 
                                                {
                                                    ?>
                                                        <option value="<?php echo $res->idMaterial; ?>"> <?php echo $res->descricao; ?> </option>
                                                    <?php
                                                }
                                            ?>
                                        </select>
                                    </div>
                                </div>

                                <hr>

                                <div class="row">

                                    <div class="col px-md-1 col-md-3">
                                        <label for="inputSuccess" class="control-label">Status:</label> <br>
                                        <div class="form-check form-check-inline">
                                            <input class="form-check-input" type="radio" name="statusImp" id="status1" value="ativo" checked>
                                            <label class="form-check-label" for="status1">Ativo</label>
                                        </div>
                                        <div class="form-check form-check-inline">
                                            <input class="form-check-input" type="radio" name="statusImp" id="status2" value="inativo">
                                            <label class="form-check-label" for="status2">Inativo</label>
                                        </div>
                                    </div>

                                     <div class="col px-md-1 col-md-3">
                                        <label for="inputSuccess" class="control-label">Conexão:</label> <br>
                                        <div class="form-check form-check-inline">
                                            <input class="form-check-input" type="radio" name="conexaoImp" id="conexao1" value="Rede" checked>
                                            <label class="form-check-label" for="conexao1">Rede</label>
                                        </div>
                                        <div class="form-check form-check-inline">
                                            <input class="form-check-input" type="radio" name="conexaoImp" id="conexao2" value="Usb">
                                            <label class="form-check-label" for="conexao2">Usb</label>
                                        </div>
                                    </div>
                                </div>

                                <hr>

                                <div class="row">
                                    <label>
                                        <h5 class="text-primary">2-> Informações do Local da Impressora</h5>
                                    </label>
                                </div>

                                <div class="row">
                                    <div class="col px-md-1  col-md-2">
                                        <label for="inputSuccess" class="control-label">Divisão:</label>
                                        <select class="form-control" id="divisao" name="localImpressora[]">
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

                                    <div class="col px-md-1  col-md-2">
                                        <label for="inputSuccess" class="control-label">localização:</label>
                                        <select class="form-control" id="localização" name="localImpressora[]">
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
                                            <option>13° andar</option>>
                                        </select>
                                    </div>

                                    <div class="col px-md-1  col-md-2">
                                        <label for="inputSuccess" class="control-label">Ramal:</label>
                                        <input type="text" class="form-control" name="localImpressora[]">
                                    </div>

                                    <div class="col px-md-1 col-md-6">
                                        <label for="inputSuccess" class="control-label">Responsável pelo Setor:</label>
                                        <input type="text" class="form-control" name="localImpressora[]">
                                    </div>

                                    <div class="col px-md-1  col-md-12">
                                        <label for="inputSuccess" class="control-label">Local da Impressora:</label>
                                        <input type="text" class="form-control" name="nomLocImpressora" id="nomLocImpressora" class="typeahead" />
                                    </div>

                                    <div class="col px-md-1  col-md-12">
                                        <label for="inputSuccess" class="control-label">Observação:</label>
                                        <input type="text" class="form-control" name="localImpressora[]">
                                    </div>
                                </div>

                                <p></p>

                                <div class="row">
                                    <label>
                                        <h5 class="text-primary">3-> Informações do Sistema </h5>
                                    </label>
                                </div>
                                <div class="row">
                                    <div class="col px-md-1  col-md-2">
                                        <label for="inputSuccess" class="control-label">Data do Cadastro:</label>
                                        <input type="text" class="form-control" value="<?php $date = date('d/m/Y');
                                                                                        echo $date;
                                                                                        $_SESSION['data'] = $date ?>" disabled>
                                    </div>

                                    <div class="col px-md-1 col-md-10">
                                        <label for="inputSuccess" class="control-label">Responsável pelo Cadastro:</label>
                                        <input type="text" class="form-control" value="<?= $_SESSION['nomeFuncionario'] ?>" disabled>
                                    </div>
                                </div>

                                <p></p>

                                <div id="actions" class="row">
                                    <div class="col-md-2">
                                        <button type="submit" class="btn btn-success">Salvar</button>
                                    </div>

                                    <div class="col-md-2">
                                        <a href="../template/menuPrincipal.php"><button type="button" class="btn btn-outline-warning">Voltar</button></a>
                                    </div>

                                    <div class="col px-md-1 col-md-12" id="MostraPesq"> </div>
                                    <div class="col px-md-1 col-md-12" id="MostraPesq1"> </div>
                                </div>
                            </fieldset>
                        </form>
                    </div>
                    <p></p>
                    <p></p>
                    <footer>
                        <p>&copy; <a href="">CADASTRO DE IMPRESSORAS</a></p>
                    </footer>
                </div>
            </div>
        </nav>
    </body>
</html>