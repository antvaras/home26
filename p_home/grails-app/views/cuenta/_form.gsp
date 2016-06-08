<%@ page import="pkg.Cuenta" %>

<div class="fieldcontain ${hasErrors(bean: cuentaInstance, field: 'cuotas', 'error')} required">
	<label for="cuotas">
		<g:message code="cuenta.cuotas.label" default="Cuotas" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="cuotas" type="number" value="${cuentaInstance.cuotas}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: cuentaInstance, field: 'empresa', 'error')} required">
	<label for="empresa">
		<g:message code="cuenta.empresa.label" default="Empresa" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="empresa" required="" value="${cuentaInstance?.empresa}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: cuentaInstance, field: 'fecha_compra', 'error')} required">
	<label for="fecha_compra">
		<g:message code="cuenta.fecha_compra.label" default="Fechacompra" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="fecha_compra" precision="day"  value="${cuentaInstance?.fecha_compra}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: cuentaInstance, field: 'precio', 'error')} required">
	<label for="precio">
		<g:message code="cuenta.precio.label" default="Precio" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="precio" type="number" value="${cuentaInstance.precio}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: cuentaInstance, field: 'producto', 'error')} required">
	<label for="producto">
		<g:message code="cuenta.producto.label" default="Producto" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="producto" required="" value="${cuentaInstance?.producto}"/>

</div>

