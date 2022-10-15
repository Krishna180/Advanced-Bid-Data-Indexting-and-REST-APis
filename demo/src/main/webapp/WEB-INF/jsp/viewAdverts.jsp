<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <table border="1" cellpadding="5" cellspacing="5">
            <tr>
                <td><b>ADVERT TITLE</b></td>
                <td><b>MESSAGE</b></td>
                <td><b>ITEM PHOTO</b></td>
            </tr>
            <c:forEach var="adv" items="${requestScope.adverts}">
                <tr>
                    <td>${adv.title}</td>
                    <td>${adv.message}</td>
                    <td><img width="100" height="100" src="/advert/images/${adv.imagePath}"/></td>
                </tr>
            </c:forEach>
        </table>
    </body>
</html>