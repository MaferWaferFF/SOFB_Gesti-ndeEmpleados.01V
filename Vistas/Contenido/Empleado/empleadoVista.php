<?php 
    include('../../Modulos/Cabecera.php'); 
    include('../../Modulos/Sidebar.php');
    include('../../Modulos/NavLateral.php');
    ?>
    
    <main class="main " id="main">
        <h3 class="mb-3">Empleados</h3>
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
                <div class="row md-2 mb-3">              
                    <div class="col-auto">
                        <a type="button" href="../../Contenido/Empleado/empleadoVista-registro.php" class="btn btn-primary">Nuevo Empleado</a>
                    </div>
                <!-- <div class="col-auto">
                        <button type="submit" class="btn btn-primary">Cancelar</button>
                    </div> -->
                </div>
                <div class="barra-titulo-busqueda">
                    <div class="right-titulo">
                        <h5 class="mb-3 formulario-protected">Tabla Empleados</h5>
                    </div>
                    <div class="left-busqueda">

                    </div>
                </div>
                <!--Tabla-->
                <table class="table table-striped-columns">
                    <thead>
                        <tr>
                        <th scope="col">Cod</th>
                        <th scope="col">Num Contrato</th>
                        <th scope="col">DNI</th>
                        <th scope="col">Nombres</th>
                        <th scope="col">Apellido Paterno</th>
                        <th scope="col">Apellido Materno</th>
                        <th scope="col">Genero</th>
                        <th scope="col">Estado Civil</th>
                        <th scope="col">Fecha_Nacimiento</th>
                        <th scope="col"></th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                        <th scope="row">1</th>
                        <td>Mark</td>
                        <td>Otto</td>
                        <td>@mdo</td>
                        </tr>
                        <tr>
                        <th scope="row">2</th>
                        <td>Jacob</td>
                        <td>Thornton</td>
                        <td>@fat</td>
                        </tr>
                        <tr>
                        <th scope="row">3</th>
                        <td>John</td>
                        <td>Doe</td>
                        <td>@social</td>
                        </tr>
                    </tbody>
                </table>
        </form>                     
        </ul>   
    </main>             
<?php include('../../Modulos/Piecera.php'); ?>
