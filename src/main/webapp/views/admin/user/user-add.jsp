<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">

<title>Thêm User</title>


<link 
href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
rel="stylesheet">


</head>


<body>


<div class="container mt-5">


<div class="card">


<div class="card-header bg-success text-white">

<h3>
Thêm tài khoản
</h3>

</div>



<div class="card-body">



<form action="${pageContext.request.contextPath}/admin/user/save"
method="post">



<div class="mb-3">

<label>
Username
</label>

<input 
name="username"
class="form-control"
required>

</div>




<div class="mb-3">

<label>
Email
</label>

<input 
name="email"
type="email"
class="form-control"
required>

</div>




<div class="mb-3">

<label>
Password
</label>

<input 
name="password"
type="password"
class="form-control"
required>

</div>




<div class="mb-3">

<label>
Họ tên
</label>

<input 
name="fullname"
class="form-control">

</div>




<div class="mb-3">

<label>
Số điện thoại
</label>

<input 
name="phone"
class="form-control">

</div>




<div class="mb-3">

<label>
Trạng thái
</label>


<select name="status"
class="form-control">


<option value="1">
Hoạt động
</option>


<option value="0">
Khóa
</option>


</select>


</div>



<button class="btn btn-success">

Lưu

</button>


<a href="${pageContext.request.contextPath}/admin/user"
class="btn btn-secondary">

Quay lại

</a>



</form>



</div>


</div>


</div>


</body>

</html>