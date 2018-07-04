<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title><sitemesh:write property="title"/></title>
<!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script> -->
<sitemesh:write property="head"/>
</head>
<body>
		<div class="container">
			<div class="header">
				<c:import url="/jsp/decorator/topMenu.jsp"/>
			</div>	
			<div class="content">
				<sitemesh:write property="body"/>
			</div>
		
			<div class="footer">
				<c:import url="/jsp/decorator/footer.jsp"/>
			</div>
		</div>
</body>
</html>













