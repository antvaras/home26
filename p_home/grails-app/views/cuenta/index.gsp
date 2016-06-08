
<%@ page import="pkg.Cuenta" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'cuenta.label', default: 'Cuenta')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-cuenta" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-cuenta" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>	
											
						<g:sortableColumn property="cuotas" title="${message(code: 'cuenta.cuotas.label', default: 'Cuotas')}" />
					
						<g:sortableColumn property="empresa" title="${message(code: 'cuenta.empresa.label', default: 'Empresa')}" />
					
						<g:sortableColumn property="fecha_compra" title="${message(code: 'cuenta.fecha_compra.label', default: 'Fechacompra')}" />
					
						<g:sortableColumn property="precio" title="${message(code: 'cuenta.precio.label', default: 'Precio')}" />
					
						<g:sortableColumn property="producto" title="${message(code: 'cuenta.producto.label', default: 'Producto')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${cuentaInstanceList}" status="i" var="cuentaInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
										
						<td>${fieldValue(bean: cuentaInstance, field: "cuotas")}</td>
					
						<td>${fieldValue(bean: cuentaInstance, field: "empresa")}</td>
					
						<td><g:formatDate date="${cuentaInstance.fecha_compra}" /></td>
					
						<td>${fieldValue(bean: cuentaInstance, field: "precio")}</td>
					
						<td>${fieldValue(bean: cuentaInstance, field: "producto")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${cuentaInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
