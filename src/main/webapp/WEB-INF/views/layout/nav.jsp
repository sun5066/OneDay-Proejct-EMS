<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="rootPath" value="${pageContext.request.contextPath}"/>
<script>
    document.addEventListener("DOMContentLoaded", function () {
        document.querySelector("#nav-bbs").addEventListener("click", function () {
            document.location.href = "${rootPath}/bbs/list"
        })
    })
</script>
<nav>
    <ul>
        <li>Home</li>
        <li id="nav-bbs">자유게시판</li>
    </ul>
</nav>