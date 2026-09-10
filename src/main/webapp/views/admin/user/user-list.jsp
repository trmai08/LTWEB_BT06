<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="jakarta.tags.core" %>


<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">

<title>Quản lý tài khoản</title>


<link 
href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
rel="stylesheet">


</head>


<body>


<div class="container-fluid mt-4">


<div class="card">


<div class="card-header bg-primary text-white">

<h3>
Quản lý tài khoản
</h3>

</div>


<div class="card-body">



<div class="d-flex justify-content-between mb-3">



<a href="${pageContext.request.contextPath}/admin/user/add"
class="btn btn-success">

+ Thêm tài khoản

</a>



<form action="${pageContext.request.contextPath}/admin/user"
method="get"
class="d-flex">


<input 
type="text"
name="keyword"
value="${keyword}"
class="form-control me-2"
placeholder="Tìm username hoặc email">



<button class="btn btn-primary">

Tìm

</button>



</form>


</div>




<table class="table table-bordered">


<thead>


<tr>


<th>ID</th>

<th>Username</th>

<th>Email</th>

<th>Họ tên</th>

<th>Số điện thoại</th>

<th>Trạng thái</th>

<th>Hành động</th>


</tr>


</thead>



<tbody>



<c:forEach items="${users}" var="u">



<tr>


<td>
${u.id}
</td>


<td>
${u.username}
</td>


<td>
${u.email}
</td>


<td>
${u.fullname}
</td>


<td>
${u.phone}
</td>


<td>


<c:choose>


<c:when test="${u.status == 1}">

<span class="badge bg-success">

Hoạt động

</span>


</c:when>



<c:otherwise>

<span class="badge bg-danger">

Khóa

</span>

</c:otherwise>



</c:choose>



</td>




<td>



<a href="${pageContext.request.contextPath}/admin/user/edit/${u.id}"
class="btn btn-warning btn-sm">

Sửa

</a>




<a href="${pageContext.request.contextPath}/admin/user/delete/${u.id}"
onclick="return confirm('Bạn có chắc muốn xóa?')"
class="btn btn-danger btn-sm">

Xóa

</a>



</td>


</tr>



</c:forEach>



</tbody>


</table>



</div>


</div>


</div>


</body>


</html>