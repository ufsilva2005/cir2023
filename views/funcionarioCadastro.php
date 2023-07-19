<?php
include "../template/menuPrincipal.php";
include "../scripts/mascara.php";
include "../scripts/validarCpf.php";
include "../scripts/pesquisaNumCpf.php";
include "../scripts/pesquisaLogin.php";

if ($_SESSION['funcionarios'] != "sim") {
    echo "<script type='text/javascript'>alert('USUÁRIO NÃO AUTORIZADO');</script>";
    echo "<script>location = '../template/menuPrincipal.php';</script>";
}

//$idFuncionario = $_SESSION['idFuncionario'];  
//$nomeFuncionario = $_SESSION['nomeFuncionario'];  
?>
        <hr>
        <nav class="navbar navbar-dark">
            <div class="line col-md-12 p-5 position-absolute start-5 top-0 bottom-50 end-250">
                <h3 class="text-success">Cadastro de Funcionários</h3>
                <form id="cadastro" name="cadastro" class="form-horizontal" action="../controllers/funcionariosCadastrar.php" method="POST">
                    <div class="row">
                        <div class="col px-md-1 col-md-10">
                            <label for="inputSuccess" class="control-label">Nome:</label>
                            <input type="text" class="form-control" name="nomeFuncionario1" required>
                        </div>
                    </div>

                    <hr>

                    <div class="row">
                        <div class="col px-md-1 col-md-3">
                            <label for="inputSuccess" class="control-label">Login:</label>
                            <input type="text" minlength="3" class="form-control" name="login" id="login" required>
                        </div>

                        <div class="col px-md-1 col-md-3">
                            <label for="inputSuccess" class="control-label">Senha:</label>
                            <input class="form-control" name="senha" type="password" placeholder="password" required>
                        </div>

                        <div class="col px-md-1 col-md-4">
                            <label for="inputSuccess" class="control-label">Função:</label>
                            <select class="form-control" id="funcao" name="funcao" required>
                                <option> </option>
                                <?php
                                include_once "../dao/DAO-controleCir.php";
                                $CargoDAO = new ControleCirDAO();
                                $nomeTabela = "cargo";
                                $tipoOpcao = "statusCargos";
                                $valorOpcao = "ativo";

                                foreach ($CargoDAO->ListarOpcao($nomeTabela, $tipoOpcao, $valorOpcao) as $res) {
                                ?>
                                    <option value="<?php echo $res->idCargo; ?>"> <?php echo $res->nomeCargos; ?></option>
                                <?php
                                }

                                ?>
                            </select>
                        </div>
                    </div>

                    <hr>

                    <h6 class="text-success">Novas Permissões de Gerenciamento </h6>
                    <div class="row">
                        <table class="table table-striped table-bordered table-condensed">
                            <thead>
                                <tr>
                                    <th>Funcionários</th>
                                    <th>Cargos</th>
                                    <th>Impressora</th>
                                    <th>Computador</th>
                                    <th>Ent. Material</th>
                                    <th>Sai. Material</th>
                                    <th>Relatórios</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>
                                        <input type="radio" class="btn-check" name="gerenFuncionarios" id="gerenFuncionarios" autocomplete="off" value="sim">
                                        <label class="btn btn-outline-success" for="gerenFuncionarios">SIM</label>

                                        <input type="radio" class="btn-check" name="gerenFuncionarios" id="gerenFuncionarios1" autocomplete="off" checked value="não">
                                        <label class="btn btn-outline-danger" for="gerenFuncionarios1">NÃO</label>
                                    </td>

                                    <td>
                                        <input type="radio" class="btn-check" name="gerenCargos" id="gerenCargos" autocomplete="off" value="sim">
                                        <label class="btn btn-outline-success" for="gerenCargos">SIM</label>

                                        <input type="radio" class="btn-check" name="gerenCargos" id="gerenCargos1" autocomplete="off" checked value="não">
                                        <label class="btn btn-outline-danger" for="gerenCargos1">NÃO</label>
                                    </td>

                                    <td>
                                        <input type="radio" class="btn-check" name="gerenImpressora" id="gerenImpressora" autocomplete="off" value="sim">
                                        <label class="btn btn-outline-success" for="gerenImpressora">SIM</label>

                                        <input type="radio" class="btn-check" name="gerenImpressora" id="gerenImpressora1" autocomplete="off" checked value="não">
                                        <label class="btn btn-outline-danger" for="gerenImpressora1">NÃO</label>
                                    </td>

                                    <td>
                                        <input type="radio" class="btn-check" name="gerenComputador" id="gerenComputador" autocomplete="off" value="sim">
                                        <label class="btn btn-outline-success" for="gerenComputador">SIM</label>

                                        <input type="radio" class="btn-check" name="gerenComputador" id="gerenComputador1" autocomplete="off" checked value="não">
                                        <label class="btn btn-outline-danger" for="gerenComputador1">NÃO</label>
                                    </td>

                                    <td>
                                        <input type="radio" class="btn-check" name="gerenEntMaterial" id="gerenEntMaterial" autocomplete="off" value="sim">
                                        <label class="btn btn-outline-success" for="gerenEntMaterial">SIM</label>

                                        <input type="radio" class="btn-check" name="gerenEntMaterial" id="gerenEntMaterial1" autocomplete="off" checked value="não">
                                        <label class="btn btn-outline-danger" for="gerenEntMaterial1">NÃO</label>
                                    </td>

                                    <td>
                                        <input type="radio" class="btn-check" name="gerenSaiMaterial" id="gerenSaiMaterial" autocomplete="off" value="sim">
                                        <label class="btn btn-outline-success" for="gerenSaiMaterial">SIM</label>

                                        <input type="radio" class="btn-check" name="gerenSaiMaterial" id="gerenSaiMaterial1" autocomplete="off" checked value="não">
                                        <label class="btn btn-outline-danger" for="gerenSaiMaterial1">NÃO</label>
                                    </td>

                                    <td>
                                        <input type="radio" class="btn-check" name="gerenRelaMaterial" id="gerenRelaMaterial" autocomplete="off" value="sim">
                                        <label class="btn btn-outline-success" for="gerenRelaMaterial">SIM</label>

                                        <input type="radio" class="btn-check" name="gerenRelaMaterial" id="gerenRelaMaterial1" autocomplete="off" checked value="não">
                                        <label class="btn btn-outline-danger" for="gerenRelaMaterial1">NÃO</label>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>

                    <hr>

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
                </form>
            </div>
        </nav>
    </body>
</html>