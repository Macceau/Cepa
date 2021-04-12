<!-- Modal -->
<div id="Client" class="modal fade" role="dialog" style="width:750px;">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">Registro de Clientes</h4>
      </div>
      <div class="modal-body">
            <form class="form-inline row-fluid" method="POST">


                    <input type="text" id="clinombre" id="clinombre" placeholder="Ingresa el nombre...">

                    <input type="text" id="cliapellido" name="cliapellido" placeholder="Ingresa el apellido...">

                    <input type="text" id="clinacimiento"  name="clinacimiento" placeholder="Ingresa la fecha de nacimiento...">
                    <div class="control-group"></div>

                    <select tabindex="1" id="clisexo" name="clisexo" data-placeholder="Elegir Sexo Aqui.." >
                        <option value="">Elegir Sexo Aqui..</option>
                        <option value="Hombre">Hombre</option>
                        <option value="Hombre">Mujer</option>
                        <option value="Hombre">No Definido</option>
                    </select>

                    <input type="text" id="clidocumento" name="clidocumento" placeholder="Ingresa el numero de documento...">

                     <select tabindex="1" id="clitpdocumento" name="clitpdocumento" data-placeholder="Elegir Tipo Doc. Aqui.." >
                         <option value="">Elegir Tipo Doc. Aqui..</option>
                         <option value="Pasaporte">Pasaporte</option>
                         <option value="Cedula">Cedula</option>
                         <option value="Permiso">Permiso</option>
                         <option value="Otros">Otros</option>
                     </select>
                     <div class="control-group"></div>

                    <select tabindex="1" id="clitpsangre" name="clitpsangre" data-placeholder="Elegir Sangre Aqui.." >
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

                    <select tabindex="1" id="cliestadocivil" name="cliestadocivil" data-placeholder="Elegir Estado Aqui.." >
                        <option value="">Elegir Estado Aqui..</option>
                        <option value="Casado">Casado</option>
                        <option value="Comprometido">Comprometido</option>
                        <option value="Otros">Otros</option>
                    </select>

                    <select tabindex="1" id="climunicipio" name="climunicipio" data-placeholder="Elegir Municipio Aqui.." >
                        <option value="">Elegir Municipio Aqui..</option>
                        <option value="Casado">Casado</option>
                    </select>
                    <div class="control-group"></div>

                    <select tabindex="1" id="clisector" name="clisector" data-placeholder="Elegir Sector Aqui.." >
                          <option value="">Elegir Sector Aqui..</option>
                          <option value="Casado">Casado</option>
                    </select>

                    <select tabindex="1" id="clicalle" name="clicalle" data-placeholder="Elegir Calle Aqui.." >
                        <option value="">Elegir Calle Aqui..</option>
                        <option value="Casado">Casado</option>
                    </select>

                    <input type="text" id="clidireccion" name="clidireccion" placeholder="Ingresa la direccion...">
                    <div class="control-group"></div>

                    <input type="text" id="clitelefono" name="clitelefono" placeholder="Ingresa el telefono...">

                    <select tabindex="1" id="clitptelefono"  name="clitptelefono" data-placeholder="Elegir Tipo Tel Aqui.." >
                        <option value="">Elegir Tipo Tel Aqui..</option>
                        <option value="Casado">Casado</option>
                    </select>

                    <input type="text" id="clicorreo" name="clicorreo" placeholder="Ingresa el correo...">

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
