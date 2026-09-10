<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="jakarta.tags.core" %>


<!DOCTYPE html>
<html>


<head>

<meta charset="UTF-8">

<title>Sửa User</title>


<link
href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
rel="stylesheet">

<style>
	:root {
		--ink: #18324b;
		--line: #dce5ec;
		--accent: #ee8b3a;
		--accent-dark: #d96f1f;
	}

	body {
		min-height: 100vh;
		margin: 0;
		color: var(--ink);
		background: linear-gradient(135deg, #eaf4f7, #eef3f7 55%, #f8efe8);
		font-family: "Trebuchet MS", "Segoe UI", sans-serif;
	}

	.edit-page {
		width: min(100% - 32px, 920px);
		margin: 0 auto;
		padding: 52px 0;
	}

	.edit-card {
		overflow: hidden;
		border: 1px solid rgba(24, 50, 75, .08);
		border-radius: 18px;
		background: #fff;
		box-shadow: 0 18px 45px rgba(24, 50, 75, .12);
	}

	.edit-header {
		display: flex;
		align-items: center;
		justify-content: space-between;
		padding: 28px 34px;
		color: #fff;
		background: linear-gradient(115deg, #18324b, #285d78);
	}

	.edit-header h3 {
		margin: 0;
		font-size: clamp(1.45rem, 3vw, 2rem);
	}

	.edit-header p {
		margin: 6px 0 0;
		color: #c8d9e4;
	}

	.user-badge {
		display: grid;
		width: 56px;
		height: 56px;
		place-items: center;
		border: 1px solid rgba(255, 255, 255, .35);
		border-radius: 50%;
		color: var(--ink);
		background: #fff;
		font-size: 1.25rem;
		font-weight: 700;
	}

	.edit-body {
		padding: 34px;
	}

	.edit-body form {
		display: grid;
		grid-template-columns: repeat(2, minmax(0, 1fr));
		gap: 22px 24px;
	}

	.edit-body form > input[type="hidden"],
	.edit-body form > .form-actions {
		grid-column: 1 / -1;
	}

	.edit-body .mb-3 {
		margin-bottom: 0 !important;
	}

	.edit-body label {
		display: block;
		margin-bottom: 8px;
		font-size: .9rem;
		font-weight: 700;
	}

	.edit-body .form-control,
	.edit-body select {
		min-height: 46px;
		border: 1px solid var(--line);
		border-radius: 9px;
		background: #fbfdfe;
	}

	.edit-body .form-control:focus,
	.edit-body select:focus {
		border-color: var(--accent);
		box-shadow: 0 0 0 .2rem rgba(238, 139, 58, .16);
		background: #fff;
	}

	.form-actions {
		display: flex;
		justify-content: flex-end;
		gap: 12px;
		margin-top: 10px;
		padding-top: 24px;
		border-top: 1px solid #edf1f4;
	}

	.form-actions .btn-warning {
		border-color: var(--accent);
		color: #fff;
		background: var(--accent);
	}

	.form-actions .btn-warning:hover {
		border-color: var(--accent-dark);
		background: var(--accent-dark);
	}

	@media (max-width: 640px) {
		.edit-page { width: min(100% - 20px, 920px); padding: 20px 0; }
		.edit-header, .edit-body { padding: 24px 20px; }
		.edit-body form { grid-template-columns: 1fr; gap: 18px; }
		.edit-body form > input[type="hidden"], .edit-body form > .form-actions { grid-column: auto; }
		.form-actions { flex-direction: column-reverse; }
		.form-actions .btn { width: 100%; }
	}
</style>


</head>


<body>


<main class="edit-page">


<section class="edit-card">


<header class="edit-header">

<h3>
Cập nhật tài khoản
</h3>

<p>Chỉnh sửa thông tin và trạng thái người dùng</p>

<span class="user-badge" aria-hidden="true">U</span>

</header>



<div class="edit-body">


<form action="${pageContext.request.contextPath}/admin/user/update"
method="post">



<input type="hidden"
name="id"
value="${user.id}">



<div class="mb-3">

<label>
Username
</label>

<input 
name="username"
value="${user.username}"
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
value="${user.email}"
class="form-control">

</div>




<div class="mb-3">

<label>
Password
</label>

<input 
name="password"
type="password"
value="${user.password}"
class="form-control">

</div>




<div class="mb-3">

<label>
Họ tên
</label>

<input 
name="fullname"
value="${user.fullname}"
class="form-control">

</div>




<div class="mb-3">

<label>
Phone
</label>

<input 
name="phone"
value="${user.phone}"
class="form-control">

</div>




<div class="mb-3">

<label>
Trạng thái
</label>


<select name="status"
class="form-control">


<option value="1"
<c:if test="${user.status==1}">
selected
</c:if>>
Hoạt động
</option>



<option value="0"
<c:if test="${user.status==0}">
selected
</c:if>>
Khóa
</option>



</select>


</div>




<div class="form-actions">

<button type="submit" class="btn btn-warning">

Cập nhật

</button>



<a href="${pageContext.request.contextPath}/admin/user"
class="btn btn-secondary">

Quay lại

</a>



 </div>

</form>


 </div>

 </section>

</main>


</body>

</html>