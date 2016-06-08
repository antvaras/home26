
<%@ page import="pkg.Cuenta" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'cuenta.label', default: 'Cuenta')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-cuenta" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-cuenta" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list cuenta">
									
				<g:if test="${cuentaInstance?.cuotas}">
				<li class="fieldcontain">
					<span id="cuotas-label" class="property-label"><g:message code="cuenta.cuotas.label" default="Cuotas" /></span>
					
						<span class="property-value" aria-labelledby="cuotas-label"><g:fieldValue bean="${cuentaInstance}" field="cuotas"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${cuentaInstance?.empresa}">
				<li class="fieldcontain">
					<span id="empresa-label" class="property-label"><g:message code="cuenta.empresa.label" default="Empresa" /></span>
					
						<span class="property-value" aria-labelledby="empresa-label"><g:fieldValue bean="${cuentaInstance}" field="empresa"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${cuentaInstance?.fecha_compra}">
				<li class="fieldcontain">
					<span id="fecha_compra-label" class="property-label"><g:message code="cuenta.fecha_compra.label" default="Fechacompra" /></span>
					
						<span class="property-value" aria-labelledby="fecha_compra-label"><g:formatDate date="${cuentaInstance?.fecha_compra}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${cuentaInstance?.precio}">
				<li class="fieldcontain">
					<span id="precio-label" class="property-label"><g:message code="cuenta.precio.label" default="Precio" /></span>
					
						<span class="property-value" aria-labelledby="precio-label"><g:fieldValue bean="${cuentaInstance}" field="precio"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${cuentaInstance?.producto}">
				<li class="fieldcontain">
					<span id="producto-label" class="property-label"><g:message code="cuenta.producto.label" default="Producto" /></span>
					
						<span class="property-value" aria-labelledby="producto-label"><g:fieldValue bean="${cuentaInstance}" field="producto"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:cuentaInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${cuentaInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
