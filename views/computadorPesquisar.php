<?php
    include "../template/menuPrincipal.php";
    include "../scripts/mascara.php";

    if ($_SESSION['computador'] != "sim") {
        echo "<script type='text/javascript'>alert('USUÁRIO NÃO AUTORIZADO');</script>";
        echo "<script>location = '../template/menuPrincipal.php';</script>";
    }

    //$idFuncionario = $_SESSION['idFuncionario'];  
    //$nomeFuncionario = $_SESSION['nomeFuncionario'];  
?>

        <hr>
        <nav class="navbar navbar-dark">
            <div class="line col-md-12 p-5 position-absolute start-5 top-0 bottom-50 end-250">
                <h3 class="text-success">Selecione o Tipo de Pesquisa:</h3>
                <div class="panel-header">
                    <form class="form-horizontal" action="computadorPesquisarResultado.php" method="POST">
                        <ul class="nav nav-pillsUfs mb-3" id="pillsUfs-tab" role="tablist">
                            <li class="nav-item" role="presentation">
                                <button class="nav-link active" id="pillsUfs-numCir-tab" data-bs-toggle="pill" data-bs-target="#pillsUfs-numCir" type="button" role="tab" aria-controls="pillsUfs-numCir" aria-selected="true">Número da Cir</button>
                            </li>
                            <li class="nav-item" role="presentation">
                                <button class="nav-link" id="pillsUfs-divisao-tab" data-bs-toggle="pill" data-bs-target="#pillsUfs-divisao" type="button" role="tab" aria-controls="pillsUfs-divisao" aria-selected="false">Divisão</button>
                            </li>
                            <li class="nav-item" role="presentation">
                                <button class="nav-link" id="pillsUfs-nomeCir-tab" data-bs-toggle="pill" data-bs-target="#pillsUfs-nomeCir" type="button" role="tab" aria-controls="pillsUfs-nomeCir" aria-selected="false">Nome</button>
                            </li>
                            <li class="nav-item" role="presentation">
                                <button class="nav-link" id="pillsUfs-ip-tab" data-bs-toggle="pill" data-bs-target="#pillsUfs-ip" type="button" role="tab" aria-controls="pillsUfs-Ip" aria-selected="false">Nº IP</button>
                            </li>
                            <li class="nav-item" role="presentation">
                                <button class="nav-link" id="pillsUfs-mac-tab" data-bs-toggle="pill" data-bs-target="#pillsUfs-mac" type="button" role="tab" aria-controls="pillsUfs-Ip" aria-selected="false">Número MAC</button>
                            </li>
                        </ul>

                        <div class="tab-content" id="pillsUfs-tabContent">
                            <div class="tab-pane fade show active" id="pillsUfs-numCir" role="tabpanel" aria-labelledby="pillsUfs-numCir-tab">
                                <div class="col px-md-1 col-md-5">
                                    <label for="inputSuccess" class="control-label">Número da Cir:</label>
                                    <input type="text" class="form-control" name="numCir" id="numCir"  placeholder="000000000000">
                                </div>
                            </div>

                            <div class="tab-pane fade" id="pillsUfs-divisao" role="tabpanel" aria-labelledby="pillsUfs-divisao-tab">
                                <div class="col px-md-1 col-md-5">
                                    <label for="inputSuccess" class="control-label">Divisão:</label>
                                    <select class="form-control" id="divisao" name="divisao">
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

                            <div class="tab-pane fade" id="pillsUfs-nomeCir" role="tabpanel" aria-labelledby="pillsUfs-ip-tab">
                                <div class="col px-md-1 col-md-5">
                                    <label for="inputSuccess" class="control-label">Nome do Computador:</label>
                                    <input type="text" class="form-control" name="nomeCir" placeholder="hu0000" >
                                </div>
                            </div>
                            <div class="tab-pane fade" id="pillsUfs-ip" role="tabpanel" aria-labelledby="pillsUfs-ip-tab">
                                <div class="col px-md-1 col-md-5">
                                    <label for="inputSuccess" class="control-label">Número de IP:</label>
                                    <input type="text" class="form-control" name="numIp" pattern="((^|\.)((25[0-5])|(2[0-4]\d)|(1\d\d)|([1-9]?\d))){4}$" placeholder="000.000.000.000" oninvalid="setCustomValidity('Endereco ip invalido!')" onchange="try{setCustomValidity('')}catch(e){}">
                                </div>
                            </div>
                            <div class="tab-pane fade" id="pillsUfs-mac" role="tabpanel" aria-labelledby="pillsUfs-mac-tab">
                                <div class="col px-md-1 col-md-5">
                                    <label for="inputSuccess" class="control-label">Número MAC:</label>
                                    <input type="text" maxlength="17" OnKeyPress="formatar('##:##:##:##:##:##', this)" pattern="([a-fA-F0-9]{2}[:]){5}([a-fA-F0-9]{2})$" oninvalid="setCustomValidity('Numero Mac inválido!')" onchange="try{setCustomValidity('')}catch(e){}" class="form-control" name="numMac">
                                </div>
                            </div>
                        </div>
                        <hr>
                        <div id="actions" class="row">
                            <div class="col-md-2">
                                <button type="submit" class="btn btn-success">Pesquisar</button>
                            </div>

                            <div class="col-md-2">
                                <a href="../template/menuPrincipal.php"><button type="button" class="btn btn-outline-warning">Voltar</button></a>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </nav>
    </body>
</html>