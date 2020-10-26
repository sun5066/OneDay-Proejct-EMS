<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<c:set var="rootPath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <title>제목없음!</title>
    <style>
        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
        }

        html, body {
            width: 100%;
            height: 100%;
            color: white;
        }

        body {
            display: flex;
            flex-direction: column;
            background-color: rgb(40, 40, 40);
        }

        header {
            background-color: dodgerblue;
            padding: 1.2rem;
            color: white;
            text-align: center;
        }

        nav ul {
            list-style: none;
            display: flex;
            background-color: dodgerblue;
            color: white;
        }

        nav ul li {
            display: inline-block;
            margin: 0px 10px;
            padding: 6px 12px;
            cursor: pointer;
            border-bottom: 5px solid dodgerblue;
        }

        nav ul li:hover {
            border-bottom: 5px solid yellow;
        }

        /*
            body 를 flex 로 선언후
            content 가 위치하는 box 에 flex 값을 1로 선언하면
            화면에 가득차는 layout 이 만들어짐
            overflow 를 auto로 설정하면 화면이 가득찼을때 자동으로 스크롤바가 생성됨
        */
        section#content {
            flex: 1;
        }

        footer {
            background-color: rgb(60, 60, 60);
            color: white;
            text-align: center;
        }
    </style>
</head>
<body>
<tiles:insertAttribute name="header"/>
<tiles:insertAttribute name="nav"/>
<section id="content">
    <tiles:insertAttribute name="content"/>
</section>
<tiles:insertAttribute name="footer"/>
</body>
</html>