<?php
include "../template/menuPrincipal.php";
include "../scripts/mascara.php";

if ($_SESSION['impressora'] != "sim") {
    echo "<script type='text/javascript'>alert('USUÁRIO NÃO AUTORIZADO');</script>";
    echo "<script>location = '../template/menuPrincipal.php';</script>";
}

//$idFuncionario = $_SESSION['idFuncionario'];  
//$nomeFuncionario = $_SESSION['nomeFuncionario'];  

//include "../scripts/validarSerieImp.php"; 
//include "../scripts/validarNomeImp.php";
//include "../scripts/mascara.php";
require_once '../controllers/impressoraBuscar.php';
$_SESSION['idSetor'] = $idSetor;
$_SESSION['idFuncionario'] = $idFuncionario;
?>

        <hr>
        <nav class="navbar navbar-dark">
            <div class="line col-md-12 p-5 position-absolute start-5 top-0 bottom-50 end-250">
                <h3 class="text-success">Informações da Impressora</h3>
                <form name="cadastro" id="cadastro" method="post" action="../controllers/impressoraUpdate.php">
                    <fieldset>
                        <div class="row">
                            <label>
                                <h5 class="text-primary">1-> Informações Sobre a Impressora</h5>
                            </label>
                        </div>

                        <div class="row">
                            <div class="col px-md-1 col-md-1">
                                <label for="inputSuccess" class="control-label">Id:</label>
                                <input type="text" class="form-control" value="<?= $idImpressora;
                                                                                $_SESSION['idImpressora'] = $idImpressora; ?>" disabled>
                            </div>

                            <div class="col px-md-1 col-md-2">
                                <label for="inputSuccess" class="control-label">Nome da Impressora:</label>
                                <input type="text" class="form-control" value="<?= $nomeImpressora;
                                                                                $_SESSION['antNomeImp'] = $nomeImpressora; ?>" name="nomeImp">
                            </div>

                            <div class="col px-md-1 col-md-2">
                                <label for="inputSuccess" class="control-label">Nº de Série: </label>
                                <input type="text" class="form-control" value="<?= $numSerie;
                                                                                $_SESSION['antNumSerie'] = $numSerie ?>" name="numSerie">
                            </div>

                            <div class="col px-md-1 col-md-3">
                                <label for="inputSuccess" class="control-label">IP: </label>
                                <input type="text" class="form-control" value="<?= $ipImpressora;
                                                                                $_SESSION['antNumIp'] = $ipImpressora ?>" name="ipImpressora" pattern="((^|\.)((25[0-5])|(2[0-4]\d)|(1\d\d)|([1-9]?\d))){4}$" placeholder="000.000.000.000" oninvalid="setCustomValidity('Endereco ip invalido!')" onchange="try{setCustomValidity('')}catch(e){}">
                            </div>

                            <div class="col px-md-1 col-md-3">
                                <label for="inputSuccess" class="control-label">MAC:</label>
                                <input type="text" class="form-control" value="<?= $macImpressora;
                                                                                $_SESSION['antNumMac'] = $macImpressora ?>" name="numMac" maxlength="17" OnKeyPress="formatar('##:##:##:##:##:##', this)" pattern="([a-fA-F0-9]{2}[:]){5}([a-fA-F0-9]{2})$" oninvalid="setCustomValidity('Numero Mac inválido!')" onchange="try{setCustomValidity('')}catch(e){}">
                            </div>
                        </div>

                        <hr>

                        <div class="row">
                            <div class="col px-md-1 col-md-3">
                                <label for="inputSuccess" class="control-label">Modelo: </label>
                                <select class="form-control" id="modelo" name="modelo">
                                    <option value="<?php echo $idModelo;
                                                    $_SESSION['antModelImp'] = $idModelo; ?>"> <?php echo $modeloImpressora; ?></option>
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

                            <div class="col px-md-1 col-md-3">
                                <label for="inputSuccess" class="control-label">Tipo do Tonner: </label>
                                <select class="form-control" id="tipoTonner" name="tipoTonner">
                                    <option value="<?php echo $tipoTonerBd;
                                                    $_SESSION['tipoTonerBd'] = $tipoTonerBd; ?>"> <?php echo $tipoToner; ?></option>
                                    <option> </option>
                                    <?php
                                    include_once "../dao/DAO-controleCir.php";
                                    $tonnerDAO = new ControleCirDAO();
                                    $nomeTabela = "material";
                                    $tipoOpcao = "descricao";
                                    $valorOpcao = "TONNER";

                                    foreach ($tonnerDAO->ListarOpcao($nomeTabela, $tipoOpcao, $valorOpcao) as $res) {
                                    ?>
                                        <option value="<?php echo $res->idMaterial; ?>"> <?php echo $res->descricao; ?> </option>
                                    <?php
                                    }
                                    ?>
                                </select>
                            </div>

                            <div class="col px-md-1 col-md-3">
                                <div class="custom-control custom-radio">
                                    <label for="inputSuccess" class="control-label">Status: <?= $statusImpressora;
                                                                                            $_SESSION['antStatusImp'] = $statusImpressora ?></label></br>
                                    <div class="form-check form-check-inline">
                                        <input class="form-check-input" type="radio" name="impStatus" id="status1" value="ativo" checked>
                                        <label class="form-check-label" for="status1">ativo</label>
                                    </div>
                                    <div class="form-check form-check-inline">
                                        <input class="form-check-input" type="radio" name="impStatus" id="status2" value="inativo">
                                        <label class="form-check-label" for="status2">Inativo</label>
                                    </div>
                                </div>
                            </div>

                            <div class="col px-md-1 col-md-3">
                                <div class="custom-control custom-radio">
                                    <label for="inputSuccess" class="control-label">Conexão: <?= $conexaoImp;
                                                                                            $_SESSION['antConexaoImp'] = $conexaoImp ?></label></br>
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
                        </div>

                        <hr>

                        <div class="row">
                            <label>
                                <h5 class="text-primary">2-> Informações do local onde esta a máquina</h5>
                            </label>
                        </div>

                        <div class="row">
                            <div class="col px-md-1 col-md-2">
                                <label for="inputSuccess" class="control-label">Divisão:</label>
                                <select class="form-control" id="divisao" name="divisao">
                                    <option value="<?php echo $idDivisao1;
                                                    $_SESSION['antDivisao'] = $idDivisao1; ?>"> <?php echo $divisao1; ?></option>
                                    <option> </option>
                                    <?php
                                    include_once "../dao/DAO-controleCir.php";
                                    $divisaoDAO = new ControleCirDAO();
                                    $nomeTabela = "divisao";
                                    foreach ($divisaoDAO->ListarTudo($nomeTabela) as $res) {
                                    ?>
                                        <option value="<?php echo $res->idDivisao; ?>"> <?php echo $res->divisao; ?></option>
                                    <?php
                                    }
                                    ?>
                                </select>
                            </div>

                            <div class="col px-md-1 col-md-3">
                                <label for="inputSuccess" class="control-label">Localização:</label>
                                <select class="form-control" id="local" name="local">
                                    <option><?= $localizacao1;
                                            $_SESSION['antLocalizacao'] = $localizacao1 ?></option>
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
                                <label for="inputSuccess" class="control-label">Ramal: </label>
                                <input type="text" class="form-control" value="<?= $ramal1;
                                                                                $_SESSION['antRamal'] = $ramal1 ?>" name="ramal" pattern="[0-9]{4}+$" oninvalid="setCustomValidity('Somente Numeros!')" onchange="try{setCustomValidity('')}catch(e){}" placeholder="0000" maxlength="4">
                            </div>

                            <div class="col px-md-1 col-md-5">
                                <label for="inputSuccess" class="control-label">Responsável: </label>
                                <input type="text" class="form-control" value="<?= $respSetComp1;
                                                                                $_SESSION['antRespSetComp'] = $respSetComp1 ?>" name="respSetComp">
                            </div>
                        </div>

                        <div class="row">
                            <div class="col px-md-1 col-md-12">
                                <label for="inputSuccess" class="control-label">Local da Máquina: </label>
                                <input type="text" class="form-control" value="<?= $nomeLocal1;
                                                                                $_SESSION['antNomeLocal'] = $nomeLocal1 ?>" name="nomeLocal" id="nomeLocal" class="typeahead" />
                            </div>
                        </div>

                        <div class="row">
                            <div class="col px-md-1 col-md-12">
                                <label for="inputSuccess" class="control-label">Observação: <?= $obsImpressora;
                                                                                            $_SESSION['antObsImp'] = $obsImpressora ?></label>
                                <input type="text" class="form-control" name="ObsImp" required>
                            </div>
                        </div>

                        <hr>
                        </hr>

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

                        <hr>
                        </hr>
                        <div class="row">
                            <label>
                                <h5 class="text-primary">3-> Informações Restritas</h5>
                            </label>
                        </div>
                        <div class="row">
                            <div class="col px-md-1 col-md-2">
                                <label for="inputSuccess" class="control-label">Data do Cadastro:</label>
                                <input type="date" class="form-control" value="<?= $dataCadastroA;
                                                                                $_SESSION['datacadastro'] = $dataCadastroA ?>" disabled>
                            </div>

                            <div class="col px-md-1 col-md-4">
                                <label for="inputSuccess" class="control-label">Responsável pelo Cadastro:</label>
                                <input type="text" class="form-control" value="<?= $respCadastro;
                                                                                $_SESSION['respCadastro'] = $respCadastro ?>" disabled>
                            </div>

                            <div class="col px-md-1 col-md-2">
                                <label for="inputSuccess" class="control-label">Data da alteração:</label>
                                <input type="date" class="form-control" value="<?php $date = date('Y-m-d');
                                                                                echo $date;
                                                                                $_SESSION['data'] = $date ?>" disabled>
                            </div>

                            <div class="col px-md-1 col-md-4">
                                <label for="inputSuccess" class="control-label">Responsável pela alteração:</label>
                                <input type="text" class="form-control" value="<?= $_SESSION['nomeFuncionario'] ?>" disabled>
                            </div>
                        </div>
                    </fieldset>
                </form>
            </div>
        </nav>
    </body>
</html>