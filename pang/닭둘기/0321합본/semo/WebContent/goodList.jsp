<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="${ctx }/css/yorizori.css">

<title>세모링~</title>
</head>
<body>

	<h1>세모세모</h1>

	<c:forEach items="${goods }" var="good">
		<table class="section">
			<tr>
				<td><!-- 이미지가 들어간다. -->
					<img alt="" src="${ctx }/good/image.do?recipeId=${recipe.id}" width="128" height="128">
				</td>
			</tr>
			
			<tr>
				<td><!-- 누르면 디테일로 넘어감 -->
					<a href="${ctx }/recipe/detail.do?recipeId=${recipe.id}">${recipe.name }</a>
					<br>
					(${recipe.time }분/난이도:${recipe.level })
				</td>
			</tr>
		</table>
	</c:forEach>
	<c:if test="${empty cookbook.recipes }">
		<h2>등록된 레시피가 없습니다.</h2>
	</c:if>
</body>
</html>