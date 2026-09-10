<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="jakarta.tags.core" %>


<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">

<title>Thêm danh mục</title>


<link 
href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
rel="stylesheet">


</head>


<body>


<div class="container mt-5">


<div class="card">


<div class="card-header bg-primary text-white">

<h3>
Thêm danh mục
</h3>

</div>



<div class="card-body">



<form action="${pageContext.request.contextPath}/admin/category/save"
method="post">



<div class="mb-3">


<label class="form-label">

Tên danh mục

</label>


<input 
type="text"
name="cateName"
class="form-control"
placeholder="Nhập tên danh mục"
required>


</div>





<div class="mb-3">


<label class="form-label">

Hình ảnh

</label>


<input 
type="text"
name="images"
class="form-control"
placeholder="Ví dụ: category-nam.jpg">


</div>





<div class="mb-3">


<label class="form-label">

Trạng thái

</label>



<select 
name="status"
class="form-control">


<option value="1">

Hoạt động

</option>



<option value="0">

Khóa

</option>


</select>



</div>






<button 
type="submit"
class="btn btn-success">

Lưu

</button>




<a 
href="${pageContext.request.contextPath}/admin/category"
class="btn btn-secondary">

Quay lại

</a>



</form>



</div>


</div>


</div>



</body>

</html>