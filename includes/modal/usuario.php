<!-- Modal -->
<div id="User" class="modal fade" role="dialog" style="width:750px;">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">Registro de Usuarios</h4>
      </div>
      <div class="modal-body">
            <form class="form-inline row-fluid" method="POST">
                    <div class="control-group">
                        <label class="control-label" for="basicinput">Buscar: </label>
                        <input data-title="Por Favor ingresa el numero de documento del empleado" type="text" placeholder="Ingresa el docuumento…" data-original-title="" class="span8 tip">
                    </div>
                    <br/>
                    <input type="text" id="usunombre" name="usunombre" placeholder="Ingresa el nombre..." disabled>
                    <input type="hidden" id="hiddennombre" name="hiddennombre" >
                    <input type="text" id="usuapellido" placeholder="Ingresa el apellido..." disabled>
                    <input type="hidden" id="hiddenapellido" name="hiddenapellido">
                    <input type="email" id="nombreusuario" placeholder="Ingresa el nombre del usuario...">
                    <div class="control-group"></div>
                    <input type="password" id="contrasena" placeholder="Ingresa la contrasena...">
                    <input type="password" id="confirmacion" placeholder="Ingresa la contrasena de nuevo...">
                    <select tabindex="1" id="acceso" data-placeholder="Elegir Nivel Aqui.." >
                        <option value="">Elegir Nivel Aqui..</option>
                        <option value="Alto">Alto</option>
                        <option value="Bajo">Bajo</option>
                    </select>
            </form>
      </div>

      <div class="modal-footer">
         <div class="alert alert-success">
      		<button type="button" class="close" data-dismiss="alert">×</button>
      		<strong>Well done!</strong> Now you are listening me :)
      	</div>
        <button type="button" class="btn btn-primary" >Guardar</button>
        <button type="button" class="btn btn-warning" >Actualizar</button>
        <button type="button" class="btn btn-default" >Cancelar</button>
      </div>
    </div>

  </div>
</div>
