<form method='POST' action='{$smarty.server.REQUEST_URI}' id='problem_form' class="form" enctype="multipart/form-data">	
	{if $IS_UPDATE eq 1}
		<div class="row">
			<div class="form-group col-md-6">
				<label for="problem_alias">Problema</label>
				<select class="edit-problem-list" name='edit-problem-list' id='problem_alias' class="form-control">
						<option></option>
				</select>
			</div>
		</div>
	{/if}
	
	<div class="row">
		<div class="form-group col-md-6">
			<label for="problem_contents">Archivo</label>
			<input name="problem_contents" id="problem_contents" type="file" class="form-control" />
		</div>
		
		<div class="form-group  col-md-6">
			<label for="title">Título</label>
			<input id='title' name='title' value='{$TITLE|htmlspecialchars}' type='text' class="form-control" />
		</div>
	</div>
	
	<div class="row">
		<div class="form-group col-md-6">
			<label for="validator">Tipo de validador</label>
			<select name='validator' id='validator' class="form-control" >
					<option value="token-caseless">Token por Token, ignorando diferencias en mayúsculas/minúsculas (default)	</option>
					<option value="token-numeric">Tokens numéricos con tolerancia</option>		
					<option value="token">Token por Token</option>		
					<option value="literal">Sólo salida, comparación literal</option>
					<option value="custom">Validador personalizado (validator.$lang$)</option>
			</select>
		</div>
		
		<div class="form-group  col-md-6">
			<label for="time_limit">Tiempo límite (ms)</label>
			<input id='time_limit' name='time_limit' value='{$TIME_LIMIT}' type='text' class="form-control" />
		</div>
	</div>
	
	<div class="row">
		<div class="form-group  col-md-6">
			<label for="memory_limit">Memory limit (KB)</label>
			<input id='memory_limit' name='memory_limit' value='{$MEMORY_LIMIT}' type='text' class="form-control" />
		</div>
		
		<div class="form-group  col-md-6">
			<label for="source">Fuente</label>
			<input id='source' name='source' value='{$SOURCE|htmlspecialchars}' type='text' class="form-control" />
		</div>
	</div>
	
	<div class="row">
		<div class="form-group col-md-6">
			<label for="public">Aparece en el listado público</label>
			<select name='public' id='public' class="form-control">
				<option value="0">No</option>
				<option value="1">Sí</option>
			</select>
		</div>
	</div>
	
	<input id='' name='request' value='submit' type='hidden'>
	
	<div class="row">
		<div class="form-group col-md-6 no-bottom-margin">
		{if $IS_UPDATE eq 1}
			<button type='submit' class="btn btn-primary">Actualizar problema</button>	
		{else}
			<button type='submit' class="btn btn-primary">Crear problema</button>	
		{/if}
		</div>
	</div>
</form>
