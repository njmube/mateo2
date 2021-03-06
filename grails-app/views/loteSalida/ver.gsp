
<%@ page import="inventario.LoteSalida" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'loteSalida.label', default: 'LoteSalida')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-loteSalida" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="lista"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="nuevo"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-loteSalida" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list loteSalida">
			
				<g:if test="${loteSalida?.cantidad}">
				<li class="fieldcontain">
					<span id="cantidad-label" class="property-label"><g:message code="loteSalida.cantidad.label" default="Cantidad" /></span>
					
						<span class="property-value" aria-labelledby="cantidad-label"><g:fieldValue bean="${loteSalida}" field="cantidad"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${loteSalida?.precioUnitario}">
				<li class="fieldcontain">
					<span id="precioUnitario-label" class="property-label"><g:message code="loteSalida.precioUnitario.label" default="Precio Unitario" /></span>
					
						<span class="property-value" aria-labelledby="precioUnitario-label"><g:fieldValue bean="${loteSalida}" field="precioUnitario"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${loteSalida?.iva}">
				<li class="fieldcontain">
					<span id="iva-label" class="property-label"><g:message code="loteSalida.iva.label" default="Iva" /></span>
					
						<span class="property-value" aria-labelledby="iva-label"><g:fieldValue bean="${loteSalida}" field="iva"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${loteSalida?.dateCreated}">
				<li class="fieldcontain">
					<span id="dateCreated-label" class="property-label"><g:message code="loteSalida.dateCreated.label" default="Date Created" /></span>
					
						<span class="property-value" aria-labelledby="dateCreated-label"><g:formatDate date="${loteSalida?.dateCreated}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${loteSalida?.lastUpdated}">
				<li class="fieldcontain">
					<span id="lastUpdated-label" class="property-label"><g:message code="loteSalida.lastUpdated.label" default="Last Updated" /></span>
					
						<span class="property-value" aria-labelledby="lastUpdated-label"><g:formatDate date="${loteSalida?.lastUpdated}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${loteSalida?.producto}">
				<li class="fieldcontain">
					<span id="producto-label" class="property-label"><g:message code="loteSalida.producto.label" default="Producto" /></span>
					
						<span class="property-value" aria-labelledby="producto-label"><g:link controller="producto" action="show" id="${loteSalida?.producto?.id}">${loteSalida?.producto?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${loteSalida?.salida}">
				<li class="fieldcontain">
					<span id="salida-label" class="property-label"><g:message code="loteSalida.salida.label" default="Salida" /></span>
					
						<span class="property-value" aria-labelledby="salida-label"><g:link controller="salida" action="show" id="${loteSalida?.salida?.id}">${loteSalida?.salida?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${loteSalida?.id}" />
					<g:link class="edit" action="edita" id="${loteSalida?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="elimina" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
