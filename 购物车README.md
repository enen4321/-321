<title>购物车</title> <style type="text/css"> h1{ text-align: center; } table{ margin: 0 auto; } body{ font-size: larger;color: crimson; background-image: url(img/2.jpg); background-repeat: no-repeat; background-size: 100%; } table th,table td{
}
</style>
购物车
商品	单价	颜色	库存	好评率	操作
外套	150	白色	100	88%	
被子	350	白色	166	82%	
鼠标	150	黑色	99	75%	
键盘	120	黑色	50	80%	
结算
商品	单价	数量	金额	删除
总计		元 <script type="text/javascript"> //this js中指当前对象 function add_shoppingcar(btn){ var tr=btn.parentNode.parentNode; var tds=tr.getElementsByTagName("td"); var name=tds[0].innerHTML; var price=tds[1].innerHTML; var tbody=document.getElementById("goods"); var row=tbody.insertRow();//insertRow表格开头插入新行 row.innerHTML=""+name+""+ ""+price+""+ ""+ ""+ ""+ ""+ ""+ ""+price+""+ ""+ ""+ ""+ "" total(); } //增加减少数量，用n正负1来表示点击了加减按钮 function change(btn,n){ //获取数量的三个input对象 var inputs = btn.parentNode.getElementsByTagName("input"); //获取原来的数量 var amount = parseInt(inputs[1].value); //当amount=1时不能再点击"-"符号 //用n<0来表示点击了减button if(amount<=1 && n<0){ return; } //根据加减来改变数量 inputs[1].value = amount + n; //将改变后的数量值赋值给amount amount = inputs[1].value; //获取表格中的行 var tr = btn.parentNode.parentNode; //获取所有的列 var tds = tr.getElementsByTagName("td"); //获取单价 var price = parseFloat(tds[1].innerHTML); //总价=单价*数量 var m = price * amount; //将总价赋值给相应的位置 tds[3].innerHTML = m; //调用total方法，求总计 total(); }
function total(){
    var tbody=document.getElementById("goods");
    var trs=tbody.getElementsByTagName("tr");
    var sum=0;
    for(var i=0;i<trs.length;i++){
        var tds=trs[i].getElementsByTagName("td");
        var m=tds[3].innerHTML;
        sum += parseFloat(m);
    }
    var total=document.getElementById("total");
    total.innerHTML = sum;
}
function del(i){
    var tr=i.parentNode.parentNode;
    tr.parentNode.removeChild(tr);
    //tr.remove(tr);
    total();
}
</script>
