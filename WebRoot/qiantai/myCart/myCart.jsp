<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>

<%@ taglib prefix="s" uri="/struts-tags"%>
<%
	String path = request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="X-UA-Compatible" content="IE=7" />
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>购物商城</title>
<meta name="description" content="" />
<meta name="keywords" content="" />
<link href="<%=path%>/img/style.css" rel="stylesheet" type="text/css" />
<script type='text/javascript'
	src='<%=path%>/dwr/interface/cartService.js'></script>
<script type='text/javascript' src='<%=path%>/dwr/engine.js'></script>
<script type='text/javascript' src='<%=path%>/dwr/util.js'></script>
<script language="JavaScript" src="<%=path%>/js/public.js"
	type="text/javascript"></script>
<script type="text/javascript">
     function modiNum(goodsId,quantity)
     {
         var r1= /^[0-9]*[1-9][0-9]*$/　　//正整数 
         var val=r1.test(quantity); //str为你要判断的字符 执行返回结果 true 或 false
         if(val==false)
         {
             alert("数量必须是数字,请重新输入");
         }
         else
         {
             document.getElementById("indicator1").style.display="block";
             cartService.modiNum(goodsId,quantity,callback);
         }
     }
     
     function callback(data)
     {
         document.getElementById("indicator1").style.display="none";
         if(data=="no")
   {
       alert("库存不足");
   }
   
         document.location.reload(true);
     }
     
     
     function delGoodsFromCart(goodsId)
     {
         document.getElementById("indicator1").style.display="block";
         cartService.delGoodsFromCart(goodsId,callback);
     }
     
     function clearCart()
     {
         document.getElementById("indicator1").style.display="block";
         cartService.clearCart(callback);
     }
     
   
      function logout()
      {
      	 window.location.href="<%=path%>/userLogout.action";
      }
      function reg()
      {
         var url="<%=path %>/qiantai/userinfo/userReg.jsp";
         var n="";
         var w="480px";
         var h="500px";
         var s="resizable:no;help:no;status:no;scroll:yes";
	     openWin(url,n,w,h,s);
      }
      function check(){
      	 var YON=null;
      	 try{
      	 	YON=document.getElementById("checkName").getAttribute("value");
      	 	alert(YON+"不为空");
			window.location.href="<%=path%>/orderQueren.action";
      	 }
      	 catch(e){
      	 	alert("购物车为空，请添加商品后再试");
      	 }
      }
</script>
</head>

<body>

	<jsp:include flush="true" page="/qiantai/inc/incTop.jsp"></jsp:include>

	<div id="page">
		<div class="main">

			<jsp:include flush="true" page="/qiantai/inc/incLeft.jsp"></jsp:include>



			<div class="right">
				<div class="rightl">
					<h1>
						<span>购物车列表</span>
					</h1>

					<s:set name="items" value="#session.cart.items" />
					<table id="search" align="center" border="1" bordercolor="#cccccc"
						cellpadding="0" cellspacing="1" class="table_1" width="98%">
						<tbody>

							<tr class="tr1">
								<td style="padding-left: 5px; height: 25px">

									<table cellspacing="0" cellpadding="2" rules="all" border="1"
										id="DataGrid1"
										style="border-color:Black;font-family:verdana;font-size:8pt;width:100%;border-collapse:collapse;">
										<tr align="center" valign="middle"
											style="background-color:#F8FAFC;font-weight:bold;">
											<td style="width:150px;">商品名称</td>
											<td>价格</td>
											<td>数量</td>
											<td>金额</td>
											<td style="width:50px;">删除</td>
										</tr>
										<s:iterator value="#items">
											<tr align="center"
												style="font-weight:normal;font-style:normal;text-decoration:none;">
												<td><s:property value="value.goods.goodsName" /><input id=checkName type="hidden" value=<s:property value="value.goods.goodsName" /> />
												</td>
												<td>￥<s:property value="value.goods.goodsTejia" /></td>
												<td>&nbsp;<input type="text" class="textBox"
													onChange="modiNum(<s:property value="value.goods.goodsId"/>,this.value)"
													value="<s:property value="value.goodsQuantity"/>" size="4" />
												</td>
												<td>￥<s:property
														value="value.goodsQuantity * value.goods.goodsTejia" /></td>
												<td><input
													onClick="delGoodsFromCart(<s:property value="value.goods.goodsId"/>)"
													type="image" src="<%=path%>/images/delete_01.gif"
													border="0" />
												</td>
											</tr>
										</s:iterator>
									</table></td>
							</tr>
							<tr class="tr1">
								<td bgcolor="#f1f8f5" style="padding-left: 5px; height: 25px">
									<span id="Label1"> <img hspace="5"
										src="<%=path%>/images/me03.gif" /> 总金额：￥<span id="totalMoney"><s:property
												value="#session.cart.totalPrice" /> </span> <img id="indicator1"
										src="<%=path%>/images/loading.gif" style="display:none" />
										&nbsp; <a href="#" onclick="clearCart()"><img border="0"
											src="<%=path%>/images/Car_icon_01.gif" /> </a> &nbsp; <a
										href="<%=path%>/qiantai/default.jsp"><img border="0"
											src="<%=path%>/images/Car_icon_02.gif" /> </a> &nbsp; 
											<!--  
											<a href="<%=path%>/orderQueren.action"><img border="0"
											src="<%=path%>/images/Car_icon_03.gif" onclick="check()"/> </a>
											-->
											<img border="0" src="<%=path%>/images/Car_icon_03.gif" onclick="check()"/> 
											
							</tr>



						</tbody>
					</table>


				</div>

			</div>
			<div style="clear:both;"></div>
		</div>



		<jsp:include flush="true" page="/qiantai/inc/incFoot.jsp"></jsp:include>
</body>
</html>


