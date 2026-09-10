<%@ page language="java"
contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>


<%@ taglib prefix="c"
uri="jakarta.tags.core"%>


<!DOCTYPE html>
<html>


<head>

<title>Danh sách sản phẩm</title>


<style>


.container{

    display:grid;

    grid-template-columns:repeat(3,300px);

    gap:30px;

}



.card{

    border:1px solid #ddd;

    padding:20px;

    border-radius:10px;

}



.card img{

    width:200px;

    height:250px;

    object-fit:cover;

}



.card h3{

    color:blue;

}



.price{

    color:red;

    font-weight:bold;

}



.detail{

    display:inline-block;

    margin-top:10px;

    padding:8px 12px;

    border:1px solid black;

    text-decoration:none;

}



.pagination a{

    margin:5px;

    padding:8px 12px;

    border:1px solid black;

    text-decoration:none;

}



.current{

    background:black;

    color:white;

}



</style>


</head>



<body>


<h2>Danh sách sản phẩm</h2>



<div class="container">


<c:forEach items="${products}" var="p">


<div class="card">


<a href="${pageContext.request.contextPath}/product-detail?id=${p.productId}">


<h3>

${p.productName}

</h3>


<img

src="${pageContext.request.contextPath}/images/${p.image}"

alt="${p.productName}">


</a>



<p class="price">

Giá:

${p.price}

</p>



<p>

${p.description}

</p>



<a class="detail"

href="${pageContext.request.contextPath}/product-detail?id=${p.productId}">

Xem chi tiết

</a>



</div>



</c:forEach>


</div>



<hr>



<div class="pagination">


<c:forEach begin="1"

end="${totalPages}"

var="i">


<c:choose>


<c:when test="${i == currentPage}">


<a class="current"

href="${pageContext.request.contextPath}/product?page=${i}">

${i}

</a>


</c:when>


<c:otherwise>


<a href="${pageContext.request.contextPath}/product?page=${i}">

${i}

</a>


</c:otherwise>


</c:choose>



</c:forEach>


</div>



</body>


</html>