
<!-- Modal -->
<div id="Employer" class="modal fade" role="dialog" style="width:750px;">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
      <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">Registro de Empleados</h4>
      </div>
      <div class="modal-body">
            <form class="form-inline row-fluid" method="POST" id="employerform">
            <p>
                    <input type="text" id="empnombre" name="empnombre" placeholder="Ingresa el nombre...">
                    <input type="text" id="empapellido" name="empapellido" placeholder="Ingresa el apellido...">
                    <input type="text" id="empnacimiento" name="empnacimiento" placeholder="Ingresa la fecha de nacimiento...">
                    <div class="control-group"></div>
                    <select  id="empsexo" name="empsexo" data-placeholder="Elegir Sexo Aqui.." >
                        <option value="">Elegir Sexo Aqui..</option>
                        <option value="Hombre">Hombre</option>
                        <option value="Hombre">Mujer</option>
                        <option value="Hombre">No Definido</option>
                    </select>
                    <input type="text" id="empdocumento" name="empdocumento" placeholder="Ingresa el numero de documento...">
                     <select tabindex="1" id="emptpdocumento" name="emptpdocumento" data-placeholder="Elegir Tipo Doc. Aqui.." >
                         <option value="">Elegir Tipo Doc. Aqui..</option>
                         <option value="Pasaporte">Pasaporte</option>
                         <option value="Cedula">Cedula</option>
                         <option value="Permiso">Permiso</option>
                         <option value="Otros">Otros</option>
                     </select>
                     <div class="control-group"></div>
                    <select tabindex="1" id="emptpsangre" name="emptpsangre" data-placeholder="Elegir Sangre Aqui.." >
                         <option value="">Elegir Sangre Aqui..</option>
                         <option value="A+">A+</option>
                         <option value="A-">A-</option>
                         <option value="AB+">AB+</option>
                         <option value="AB-">AB-</option>
                         <option value="O+">O+</option>
                         <option value="O-">O-</option>
                         <option value="B+">B+</option>
                         <option value="B-">B-</option>
                    </select>
                    <select tabindex="1" id="empestadocivil" name="empestadocivil" data-placeholder="Elegir Estado Aqui.." >
                        <option value="">Elegir Estado Aqui..</option>
                        <option value="Casado">Casado</option>
                        <option value="Comprometido">Comprometido</option>
                        <option value="Otros">Otros</option>
                    </select>
                    <select tabindex="1" id="empmunicipio" name="empmunicipio" data-placeholder="Elegir Municipio Aqui.." >
                        <option value="">Elegir Municipio Aqui..</option>
                        <?php FullCombo("id_municipio","description","municipio",$link);?>
                    </select>
                    <div class="control-group"></div>
                    <select tabindex="1" id="empsector" name="empsector" data-placeholder="Elegir Sector Aqui.." >
                          <option value="">Elegir Sector Aqui..</option>
                          <option value="Casado">Casado</option>
                    </select>
                    <select tabindex="1" id="empcalle" name="empcalle" data-placeholder="Elegir Calle Aqui.." >
                        <option value="">Elegir Calle Aqui..</option>
                        <option value="Casado">Casado</option>
                    </select>
                    <input type="text" id="empdireccion" name="empdireccion" placeholder="Ingresa la direccion...">
                    <div class="control-group"></div>
                    <input type="text" id="emptelefono" name="emptelefono" placeholder="Ingresa el telefono...">
                    <select tabindex="1" id="emptptelefono" name="emptptelefono" data-placeholder="Elegir Tipo Tel Aqui.." >
                        <option value="">Elegir Tipo Tel Aqui..</option>
                        <?php FullCombo("id_municipio","description","municipio",$link);?>
                    </select>
                    <input type="text" id="empcorreo" name="empcorreo" placeholder="Ingresa el correo...">
                 <p>
            </form>
      </div>

      <div class="modal-footer">
         <div class="alert alert-success" id="empmsg">
      		<button type="button" class="close"  data-dismiss="alert">×</button>
      		<strong>Well done!</strong> Now you are listening me :)
      	</div>
        <button type="button" class="btn btn-primary" >Guardar</button>
        <button type="button" class="btn btn-warning" >Actualizar</button>
        <button type="button" class="btn btn-default" >Cancelar</button>
        <button type="button" id="closeemp" class="btn btn-danger" >Cerrar</button>
      </div>
    </div>

  </div>
</div>
