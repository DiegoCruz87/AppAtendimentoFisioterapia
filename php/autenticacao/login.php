<!--
REGRAS DE LOGIN E LOGOUT
TELA DE LOGIN


---------------------------------------->
<?php
session_start();
?>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link rel="stylesheet" type="text/css" href="../css/estilo.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
</head>
<body>
    <H3>ÁREA RESTRITA</H3>
    <?php
        if (isset($_SESSION ['msg'])) {
            echo $_SESSION ['msg'];
            unset($_SESSION ['msg']);
        }

        if (isset($_SESSION ['msgcad'])) {
            echo $_SESSION ['msgcad'];
            unset($_SESSION ['msgcad']);
        }

    ?>
    <form method="POST" action="valida.php"> 
        <label>Usuário</label>
        <input type="text" name="usuario" placeholder="Digite o seu usuario"><br><br>    

        <label>Senha</label>
        <input type="password" name="senha" placeholder="Digite a sua senha"><br><br>

        <input type="submit" name="btnLogin" value="Acessar">

        <h4>AINDA NÃO TEM ACESSO?</h4>
        <a href="cadastro.php">CADASTRE-SE</a>

    </form>

</body> 
</html>