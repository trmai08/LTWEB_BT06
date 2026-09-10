<%@ page contentType="text/html;charset=UTF-8" %>

<html>
<head>
    <title>Xác nhận OTP</title>
</head>

<body>


<h2>Xác nhận tài khoản</h2>


<form action="verify" method="post">


    <label>
        Nhập mã OTP:
    </label>

    <input type="text" name="otp">


    <br><br>


    <button type="submit">
        Xác nhận
    </button>


</form>


</body>

</html>