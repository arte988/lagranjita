<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <link rel="stylesheet" href="../css/style.css">

</head>

<body style="background-color: white;">
    <?php include '../includes/header.php' ?>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
        crossorigin="anonymous"></script>

    <!-- Se va a procesar en registrar.php y se enviará por POST, no por GET-->
    <div class="container">
        <form class="btn btn-primary" action="registrar.php" method="post" style="background-color:#F2CA52;">
            <!--
            Nota: el atributo name es importante, pues lo vamos a recibir de esa manera
            en PHP
        -->
            <input class="form-group" required name="correo" type="email" placeholder="Tu correo electrónico">
            <br><br>
            <input class="form-group" required name="palabra_secreta" type="password" placeholder="Contraseña">
            <br><br>
            <input class="form-group" required name="palabra_secreta_confirmar" type="password"
                placeholder="Confirma tu contraseña">
            <br><br>
            <!--Lo siguiente envía el formulario-->
            <input class="form-group" type="submit" value="Registrarme">
            <a class="form-group" href="../menu.php">Ya tengo una cuenta</a>
        </form>
        <?php include '../includes/footer.php' ?>
    </div>
</body>

</html>