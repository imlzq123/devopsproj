<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body class="p-3 mb-2 bg-warning text-dark">
    <h1>Bloggers World</h1>
<br>
<a href="<%=request.getContextPath()%>/Register.jsp" class="btn btnsuccess">Add New Post</a>
<br>
<br>
    
      <div class="row">
      <c:forEach var="post" items="${list}">
      		
		      	<div class="mt-3 ml-3 mr-3 col-md-5 card" style="width: 18rem;">
		        <div class="card-body">
		            <button type="button" class="close" aria-label="Close">
		                <span aria-hidden="true">&times;</span>
		              </button>
		      
		          <h5 class="card-title"><c:out value="${post.title}" /></h5>
		          <h6 class="card-subtitle mb-2 text-muted"><c:out value="${post.category}" /></h6>
		          <p class="card-text"><c:out value="${post.text}" /></p>
		          <h6  class="card-link"><c:out value="${post.name}" /></h6>
		          
		          <a href="<%=request.getContextPath()%>/userEdit.jsp"><svg style="margin-left: 470px;" xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-pencil" viewBox="0 0 16 16">
		            <path d="M12.146.146a.5.5 0 0 1 .708 0l3 3a.5.5 0 0 1 0 .708l-10 10a.5.5 0 0 1-.168.11l-5 2a.5.5 0 0 1-.65-.65l2-5a.5.5 0 0 1 .11-.168l10-10zM11.207 2.5 13.5 4.793 14.793 3.5 12.5 1.207 11.207 2.5zm1.586 3L10.5 3.207 4 9.707V10h.5a.5.5 0 0 1 .5.5v.5h.5a.5.5 0 0 1 .5.5v.5h.293l6.5-6.5zm-9.761 5.175-.106.106-1.528 3.821 3.821-1.528.106-.106A.5.5 0 0 1 5 12.5V12h-.5a.5.5 0 0 1-.5-.5V11h-.5a.5.5 0 0 1-.468-.325z"/>
		          </svg></a>
		          
		        </div>
		      </div>
	      
      </c:forEach>
      </div>
      
</table>
</div>
</div>
</body>
</html>