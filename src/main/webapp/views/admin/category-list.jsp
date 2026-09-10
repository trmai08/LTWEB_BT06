<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Quản lý danh mục</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body { background: #f5f6fa; }
        .content { margin-left: 250px; padding: 30px; }
        .card { background: white; padding: 30px; }
        .table img { width: 80px; height: 80px; object-fit: cover; }
        @media (max-width: 768px) {
            .content { margin-left: 0; padding: 15px; }
        }
    </style>
</head>
<body>
<div class="content">
    <div class="card">
        <h2 class="text-danger fw-bold">Quản lý danh mục</h2>
        <p>Nơi bạn có thể quản lý danh mục của mình</p>
        <hr>

        <div class="d-flex justify-content-between mb-3 gap-3">
            <a href="${pageContext.request.contextPath}/admin/category/add" class="btn btn-primary">
                + Thêm danh mục mới
            </a>
            <form action="${pageContext.request.contextPath}/admin/category" method="get" class="d-flex">
                <input type="text" name="keyword" value="${keyword}" placeholder="Tìm danh mục" class="form-control">
                <button type="submit" class="btn btn-primary ms-2">Tìm</button>
            </form>
        </div>

        <table class="table table-bordered align-middle">
            <thead>
                <tr>
                    <th width="70">STT</th>
                    <th>Hình ảnh</th>
                    <th>Tên danh mục</th>
                    <th>Trạng thái</th>
                    <th>Hành động</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${categories}" var="cate" varStatus="st">
                    <tr>
                        <td>${st.index + 1}</td>
                        <td>
                            <c:choose>
                                <c:when test="${not empty cate.images}">
                                    <img src="${pageContext.request.contextPath}/images/${cate.images}" alt="${cate.cateName}">
                                </c:when>
                                <c:otherwise>
                                    <img src="${pageContext.request.contextPath}/images/no-image.png" alt="Không có ảnh">
                                </c:otherwise>
                            </c:choose>
                        </td>
                        <td>${cate.cateName}</td>
                        <td>
                            <c:choose>
                                <c:when test="${cate.status == 1}">
                                    <span class="badge bg-success">Hoạt động</span>
                                </c:when>
                                <c:otherwise>
                                    <span class="badge bg-danger">Khóa</span>
                                </c:otherwise>
                            </c:choose>
                        </td>
                        <td>
                            <a href="${pageContext.request.contextPath}/admin/category/edit/${cate.cateId}" class="btn btn-warning btn-sm">Sửa</a>
                            <a href="${pageContext.request.contextPath}/admin/category/delete/${cate.cateId}"
                               onclick="return confirm('Bạn có chắc muốn xóa?')"
                               class="btn btn-danger btn-sm">Xóa</a>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
</div>
</body>
</html>