<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
<meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body class="p-3 mb-2 bg-warning text-dark">
    <h1>Bloggers World</h1>
<br>
<a href="<%=request.getContextPath()%>/Register.jsp" class="btn btnsuccess">New Blog</a>
<br>
<br>

      <div class="row">
      <c:forEach var="user" items="${listUsers}">

                  <div class="mt-3 ml-3 mr-3 col-md-5 card" style="width: 18rem;">
                <div class="card-body">
                    

                  <h5 class="card-title"><c:out value="${user.title}" /></h5>
                  <h6 class="card-subtitle mb-2 text-muted"><c:out value="${user.category}" /></h6>
                  <p class="card-text"><c:out value="${user.text}" /></p>
                  <h6  class="card-link"><c:out value="${user.name}" /></h6>

                  <a href="edit?name=<c:out value='${user.name}'
/>">Edit</a> &nbsp;&nbsp;&nbsp;&nbsp;
<a href="delete?name=<c:out
value='${user.name}' />">Delete</a>
                </div>
              </div>

      </c:forEach>
      </div>

</table>
</div>
</div>
</body>
</html>