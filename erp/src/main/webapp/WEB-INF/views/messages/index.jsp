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
<div class="jumbotron" id="jumbo">
	<font size="6">쪽지함</font>-쪽지 기능을 수행할 수 있습니다.
</div>
	<div class="container">
		<div class="jumbotron">
		<a href="<c:url value="/messages/new" />" class="btn btn-lg btn-primary">
				<div style="text-align:right;">메시지 보내기</div></a><br><br>
			<div class="row">
				<c:forEach var="mybook" items="${mybooks}" varStatus="status">
					<div class="col-md-4">
						<div class="thumbnail">
							<div class="caption">
								<%-- 							<h3>${ mybook.no }</h3> --%>
								<h3>${ mybook.content }</h3>
								<h3>${ mybook.email }</h3>
							</div>
						</div>
					</div>
				</c:forEach>
			</div>
		</div>
	</div>
</body>
</html>