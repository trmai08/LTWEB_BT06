<%@ page language="java"
contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>


<%@ taglib prefix="c"
uri="jakarta.tags.core" %>


<html>

<head>

<title>Trang chủ</title>


<style>


body{

font-family: Arial;

}


.product-container{

display:grid;

grid-template-columns: repeat(3,300px);

gap:25px;

}



.product-card{

border:1px solid #ddd;

padding:15px;

border-radius:10px;

}



.product-card img{

width:200px;

height:230px;

object-fit:cover;

}



.price{

color:red;

font-weight:bold;

}


</style>


</head>



<body>


<h1>
Xin chào ${sessionScope.user.fullname}
</h1>



<p>
Username:
${sessionScope.user.username}
</p>


<p>
Email:
${sessionScope.user.email}
</p>


<a href="${pageContext.request.contextPath}/logout">
Đăng xuất
</a>



<hr>



<h2>
Sản phẩm mới nhất
</h2>



<div class="product-container">



<c:forEach items="${products}" var="p">


<div class="product-card">


<a href="${pageContext.request.contextPath}/product-detail?id=${p.productId}">


<img src="${pageContext.request.contextPath}/images/${p.image}">


<h3>
${p.productName}
</h3>


</a>



<p class="price">

Giá:
${p.price}

</p>



<p>

${p.description}

</p>



</div>



</c:forEach>



</div>


</body>


</html>