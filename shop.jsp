<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>购物页面</title>
    <style>
        td{border:1px solid green;}
    </style>
</head>
<body>
<style  type="text/css">
    body
    {
        background-image:
                url(shopbeijing.jpg);
        background-size:100% 100% ;

    }
</style>
<p>欢迎用户:
    <%=
    request.getParameter("username")
    %>
</p>
<p>请选购商品并填写所需要购买的数量</p>
<form action="order.jsp" method="post">
    <table style="border:1px solid green;">
        <thead>
        <tr>
            <th>编号</th>
            <th>商品名</th>
            <th>单价</th>
            <th>购买数量</th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <td>1</td>
            <td><img src="./apple.jpg"/>苹果</td>
            <td>￥5.0</td>
            <td><input type="text" name="apple"  placeholder="0"></td>
        </tr>
        <tr>
            <td>2</td>
            <td><img src="./watermelon.jpg"/>西瓜</td>
            <td>￥3.0</td>
            <td><input type="text" name="orange"  placeholder="0"></td>
        </tr>
        <tr>
            <td>3</td>
            <td><img src="./grape.jpg"/>葡萄</td>
            <td>￥2.0</td>
            <td><input type="text" name="banana"  placeholder="0"></td>
        </tr>
        <tr>
            <td>4</td>
            <td><img src="./peach.jpg"/>桃子</td>
            <td>￥4.5</td>
            <td><input type="text" name="grapefruit"  placeholder="0"></td>
        </tr>
        <tr>
            <td>5</td>
            <td><img src="./strawberry.jpg"/>草莓</td>
            <td>￥5.5</td>
            <td><input type="text" name="peach"  placeholder="0"></td>
        </tr>
        </tbody>
    </table>
    <input type="submit" value="提交订单">

</form>
</body>
</html>
