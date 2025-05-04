<?php 
    include('../../Modulos/Cabecera.php'); 
    include('../../Modulos/Sidebar.php');
    include('../../Modulos/NavLateral.php');
    ?>
    
    <main class="main " id="main">
        <h3 class="mb-3">Registro de Empleados</h3>
        <ul class="nav nav-tabs">
            <!--Pestañas-->
            <li class="nav-item">
                <a class="nav-link active" aria-current="page" href="../../Contenido/Empleado/empleadoVista-registro.php">Registro</a>
            </li>
            <li class="nav-item">
                <a class="nav-link disabled" aria-disabled="true">Modificar</a>
            </li>
            <!--Formulario Cuerpo-->
            <form class="row g-3 mb-3 mt-3 " >
                <div class="row container">
                    <div class="col-md-1">
                        <label for="input-codEmpleado" class="col-form-label-sm">Código</label>
                        <input type="text" class="form-control" id="input-codEmpleado" placeholder=" - - - -" disabled>
                    </div>
                    <div class="col-md-2">
                        <label for="input-dni" class="col-form-label-sm">DNI</label>
                        <input type="text" class="form-control" id="input-dni" placeholder="Ingrese el DNI">
                    </div>
                    <div class="col-md-2 ms-auto">
                        <label for="input-contrato" class="col-form-label-sm">Num Contrato</label>
                        <input type="text" class="form-control" id="input-contrato" placeholder="">
                    </div>
                </div>
                <div class="d-flex">
                    <div class=" md-6 container">
                        <div class="col pb-3 pt-3">
                            <label for="input-nombre" class="col-form-label-sm">Nombres</label>
                            <input type="text" class="form-control" id="input-dni" placeholder="Ingrese los nombre">
                        </div>
                        <div class="col pb-3">
                            <label for="input-ape-paterno" class="col-form-label-sm">Apellido Paterno</label>
                            <input type="text" class="form-control" id="input-ape-paterno" placeholder="Ingrese el apellido paterno">
                        </div>
                        <div class="col pb-3">
                            <label for="input-ape-paterno" class="col-form-label-sm">Apellido Materno</label>
                            <input type="text" class="form-control" id="input-ape-paterno" placeholder="Ingrese el apellido materno">
                        </div>
                    </div>
                    <div class="row md-6 container">
                        <div class="col-md-6">
                            <label for="inputState" class="col-form-label-sm">Género</label>
                            <select id="inputState" class="form-select">
                            <option selected>Choose...</option>
                            <option>...</option>
                            </select>
                        </div>
                        <div class="col-md-6">
                            <label for="inputState" class="col-form-label-sm">Estado Civil</label>
                            <select id="inputState" class="form-select">
                            <option selected>Choose...</option>
                            <option>...</option>
                            </select>
                        </div>
                        <div class="col-md-6">
                            <label for="fechaNacimiento" class="col-form-label-sm">Fecha de nacimiento</label>
                            <input type="date" class="form-control" id="fechaNacimiento">
                        </div>                
                        <div class="col-md-6">
                            <label for="inputAddress" class="col-form-label-sm">Teléfono</label>
                            <input type="tel" class="form-control" id="inputAddress" placeholder="940804092">
                        </div>
                        <div class="col-md-12">
                            <label for="inputAddress2" class="form-label">Correo</label>
                            <input type="text" class="form-control" id="inputAddress2" placeholder="Ingrese el correo">
                        </div>
                        <div class="col-md-12">
                            <label for="inputEmail4" class="form-label">Email</label>
                            <input type="email" class="form-control" id="inputEmail4" placeholder="Ingrese el email">
                        </div>
                    </div>
                </div>
                <div class="row md-2">              
                    <div class="col-auto">
                        <button type="submit" class="btn btn-primary">Registrar</button>
                    </div>
                    <div class="col-auto">
                        <a type="button" href="../../Contenido/Empleado/empleadoVista.php" class="btn btn-primary">Cancelar</a>
                    </div>
                </div>                
        </form>                     
        </ul>   
    </main>             
<?php include('../../Modulos/Piecera.php'); ?>
