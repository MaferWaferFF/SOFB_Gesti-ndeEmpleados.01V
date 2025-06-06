<!doctype html>
<html lang="en">
    <head>
        <title>Login</title>
        <!-- Required meta tags -->
        <meta charset="utf-8" />
        <meta
            name="viewport"
            content="width=device-width, initial-scale=1, shrink-to-fit=no"
        />

        <!-- Bootstrap CSS v5.2.1 -->
        <link
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
            rel="stylesheet"
            integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
            crossorigin="anonymous"
        />
    </head>

    <body>

        <!-- <header></header>
        <main></main>
        <footer></footer>
        Bootstrap JavaScript Libraries  -->

        <!--Formulario_Login-->
        <div class="container">
            <div class="row">
                <div class="container vh-100 d-flex align-items-center"> <!--Para que se centre en la columna-->                              
                    <div class="col-md-4 mx-auto">
                        <form action="Vistas/Contenido/Panel/panelVista.php" method="post"> <!--lleva la información-->
                            <div class="card">
                                <!--Título -->
                                <div class="card-header">INICIO DE SESION</div>
                                <!--Cuerpo-->
                                <div class="card-body">
                                    <div class="mb-3">
                                        <label for="input_usuario" class="form-label">Usuario</label>
                                        <input
                                            type="text"
                                            class="form-control"
                                            name="input_usuario"
                                            id="input_usuario"
                                            aria-describedby="helpId"
                                            placeholder="Usuario"
                                        />
                                        <small id="helpId" class="form-text text-muted">Escriba su usuario</small>
                                    </div> 
                                    <div class="mb-3">
                                        <label for="input_pass" class="form-label">Password</label>
                                        <input
                                            type="password"
                                            class="form-control"
                                            name="input_pass"
                                            id="input_pass"
                                            aria-describedby="helpId"
                                            placeholder="Contraseña"
                                        />
                                        <small id="helpId" class="form-text text-muted">Escriba su contraseña</small>
                                    </div> 
                                    <button type="sumbit" class= "btn btn-primary">Iniciar Sesión</button> 
                                </div>                                                                                                                                       
                                <!--Pie-->
                                <div class="card-footer text-muted">Trabajen amiguitos</div>
                            </div> 
                        </form>                   
                    </div>
                </div>                 
            </div>
        </div>
        
        <script
            src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"
            integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r"
            crossorigin="anonymous"
        ></script>

        <script
            src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js"
            integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+"
            crossorigin="anonymous"
        ></script>
    </body>
</html>
