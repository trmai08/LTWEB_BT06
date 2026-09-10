<%@ page language="java"
contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>

<head>

<title>Chi tiết sản phẩm</title>


<style>

.product{

    width:400px;

    margin:30px;

}


.product img{

    width:250px;

    height:300px;

    object-fit:cover;

}


.price{

    color:red;

    font-size:20px;

    font-weight:bold;

}


.back{

    text-decoration:none;

    padding:8px 15px;

    border:1px solid black;

}


</style>


</head>



<body>


<h2>Chi tiết sản phẩm</h2>



<%

if(request.getAttribute("product") == null){

%>


<h3>Không tìm thấy sản phẩm</h3>


<%

}else{

%>



<div class="product">



<h3>

${product.productName}

</h3>



<img 
src="${pageContext.request.contextPath}/images/${product.image}"
alt="${product.productName}">



<p class="price">

Giá:

${product.price}

</p>



<p>

${product.description}

</p>



<a class="back"
href="${pageContext.request.contextPath}/product">

Quay lại danh sách

</a>



</div>



<%

}

%>



</body>

</html>