<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>订单信息</title>
</head>
<body>
<jsp:useBean id="car" scope="page" class="ShopCar.CountPrice">
    <jsp:setProperty name="car" property="num_apple" param="apple"/>
    <jsp:setProperty name="car" property="num_orange" param="orange"/>
    <jsp:setProperty name="car" property="num_banana" param="banana"/>
    <jsp:setProperty name="car" property="num_grapefruit" param="grapefruit"/>
    <jsp:setProperty name="car" property="num_peach" param="peach"/>

    <p>您选购的订单详情如下</p>
    <table>
        <thead>
        <tr><th>编号</th><th>商品名</th><th>单价</th><th>购买数量</th><th>价格</th></tr>
        </thead>
        <tbody>
        <tr>
            <td>1</td>
            <td>苹果</td>
            <td>￥5.0</td>
            <td><jsp:getProperty name = "car" property="num_apple" /></td>
            <td><jsp:getProperty name = "car" property="pri_apple" /></td>
        </tr>
        <tr>
            <td>2</td>
            <td>橘子</td>
            <td>￥3.0</td>
            <td><jsp:getProperty name = "car" property="num_orange" /></td>
            <td><jsp:getProperty name = "car" property="pri_orange" /></td>
        </tr>
        <tr>
            <td>3</td>
            <td>香蕉</td>
            <td>￥2.0</td>
            <td><jsp:getProperty name = "car" property="num_banana" /></td>
            <td><jsp:getProperty name = "car" property="pri_banana" /></td>
        </tr>
        <tr>
            <td>4</td>
            <td>葡萄</td>
            <td>￥4.5</td>
            <td><jsp:getProperty name = "car" property="num_grapefruit" /></td>
            <td><jsp:getProperty name = "car" property="pri_grapefruit" /></td>
        </tr>
        <tr>
            <td>5</td>
            <td>桃子</td>
            <td>￥5.5</td>
            <td><jsp:getProperty name = "car" property="num_peach" /></td>
            <td><jsp:getProperty name = "car" property="pri_peach" /></td>
        </tr>
        </tbody>
    </table>
    <div>总价为：<jsp:getProperty  name="car" property="total_price"/></div>
    <button>立即付款</button>
    <a href="goods.jsp"><button>取消订单</button></a>
</jsp:useBean>
</body>
</html>
