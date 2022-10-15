<%@page import="com.me.advert.dao.CategoryDAO"%>
<%@page import="com.me.advert.pojo.Category" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<%
	//--------------------------------------------
	//NORMALLY THIS SHOULD NOT BE HERE
	//JUST ADDED QUICKLY FOR THE LAB
	//ABSOLUTELY NO SCRIPTLETS IN THE VIEW PAGES
	//--------------------------------------------
	//get the category list
	CategoryDAO categorydao = new CategoryDAO();
	java.util.List<Category> categoryList = categorydao.list();
	pageContext.setAttribute("categories", categoryList);
%>

<html>
    <head>
        <title>Add Advert Form</title>
    </head>
    <body>

        <h2>Posting a New Advert</h2>

        <form:form modelAttribute="advert" method="post" enctype="multipart/form-data">

            <table>

                <tr>
                    <td>Category:</td>
                    <td>
                        <form:select path="category">
                            <c:forEach var="categ" items="${categories}">
                                <form:option value="${categ.title}"/>
                            </c:forEach>
                        </form:select>
                    </td>
                </tr>

                <tr>
                    <td>Advert Title:</td>
                    <td><form:input path="title" size="30" /> <font color="red"><form:errors path="title"/></font></td>
                </tr>

                <tr>
                    <td>Message:</td>
                    <td><form:input path="message" size="30" /> <font color="red"><form:errors path="message"/></font></td>
                </tr>

                <tr>
                    <td>Advert Posted By:</td>
                    <td><form:input path="user" size="30" /> <font color="red"><form:errors path="user"/></font></td>
                </tr>
                
                <tr>
                    <td>Select Item Photo:</td>
                    <td><input type="file" name="imageFile" /> <font color="red"><form:errors path="user"/></font></td>
                </tr>

                <tr>
                    <td colspan="2"><input type="submit" value="Post Advert" /></td>
                </tr>
            </table>

        </form:form>

    </body>
</html>