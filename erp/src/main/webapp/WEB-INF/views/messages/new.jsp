<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page pageEncoding="utf-8" session="false"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<link href="<c:url value="/css/bootstrap.min.css" />" rel="stylesheet">
<body>
<div class="container">
<form action="<c:url value="/messages" />" method="post">
			<div class="form-group form-group-lg">
				<label class="control-label">받는 이</label>
				<input name="email" type="text" class="form-control">
			</div>
			
			<div class="form-group form-group-lg">
				<label class="control-label">보낼 내용</label>
				<input name="content" type="text" class="form-control">
			</div>
			
		<input type="hidden" name="${ _csrf.parameterName }" value="${ _csrf.token }"/>
			<button type="submit" class="btn btn-lg btn-primary">전송</button>
		</form>
</div>
</body>
</html>