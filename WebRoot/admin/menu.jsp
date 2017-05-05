<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="com.model.*" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
 TAdmin admin=(TAdmin)request.getSession().getAttribute("admin");
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>网上购物在线商城系统</title>
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	background-image: url(<%=path%>/images/left.gif);
}
-->
</style>
<link href="<%=path%>/css/css.css" rel="stylesheet" type="text/css" />
</head>
<SCRIPT language=JavaScript>
function tupian(idt){
    var nametu="xiaotu"+idt;
    var tp = document.getElementById(nametu);
    tp.src="<%=path%>/images/ico05.gif";//图片ico04为白色的正方形
	
	for(var i=1;i<30;i++)
	{
	  
	  var nametu2="xiaotu"+i;
	  if(i!=idt*1)
	  {
	    var tp2=document.getElementById('xiaotu'+i);
		if(tp2!=undefined)
	    {tp2.src="<%=path%>/images/ico06.gif";}//图片ico06为蓝色的正方形
	  }
	}
}

function list(idstr){
	var name1="subtree"+idstr;
	var name2="img"+idstr;
	var objectobj=document.all(name1);
	var imgobj=document.all(name2);
	
	//alert(imgobj);
	
	if(objectobj.style.display=="none"){
		for(i=1;i<10;i++){
			var name3="img"+i;
			var name="subtree"+i;
			var o=document.all(name);
			if(o!=undefined){
				o.style.display="none";
				var image=document.all(name3);	//得到name或ID属性值为name3的元素
				//alert(image);
				image.src="<%=path%>/images/ico04.gif";
			}
		}
		objectobj.style.display="";
		imgobj.src="<%=path%>/images/ico03.gif";
	}
	else{
		objectobj.style.display="none";
		imgobj.src="<%=path%>/images/ico04.gif";
	}
}
</SCRIPT>

<body>
<table width="198" border="0" cellpadding="0" cellspacing="0" class="left-table01">
  <tr>
    <TD>
		<table width="100%" border="0" cellpadding="0" cellspacing="0">
		  <tr>
			<td width="207" height="55" background="<%=path%>/images/nav01.gif">
				<table width="90%" border="0" align="left" cellpadding="0" cellspacing="0">
				  <tr>
					<td width="30%" rowspan="2">
						<s:if test="#session.admin.userType==1">
							<img src="<%=path%>/images/ico021.jpg" width="50" height="54" />
						</s:if>
						<s:else>
							<img src="<%=path%>/images/ico020.jpg" width="50" height="54" />
						</s:else>
					
					</td>
					<td width="75%" height="22" class="left-font01">您好，<span class="left-font02"><%=admin.getUserName() %></span></td>
				  </tr>
				  <tr>
					<td height="22" class="left-font01">
						[&nbsp;<a href="<%=path%>/login.jsp" target="_top" class="left-font01">退出</a>&nbsp;]</td>
				  </tr>
				</table>
			</td>
		  </tr>
		</table>
		


		<!--  任务系统开始    -->
		<TABLE width="100%" border="0" cellpadding="0" cellspacing="0" class="left-table03">
          <tr>
            <td height="29">
				<table width="85%" border="0" align="center" cellpadding="0" cellspacing="0">
					<tr>
						<td width="8%"><img name="img8" id="img8" src="<%=path%>/images/ico04.gif" width="8" height="11" /></td>
						<td width="92%">
								<a href="javascript:" target="mainFrame" class="left-font03" onClick="list('8');" >基本操作</a></td>
					</tr>
				</table>
			</td>
          </tr>		  
        </TABLE>
		<table id="subtree8" style="DISPLAY: none" width="80%" border="0" align="center" cellpadding="0" 
				cellspacing="0" class="left-table02">
				<tr>
				  <td width="9%" height="20" ><img id="xiaotu20" src="<%=path%>/images/ico06.gif" width="8" height="12" /></td>
				  <td width="91%"><a href="<%=path %>/admin/index/sysPro.jsp" target="mainFrame" class="left-font03" onClick="tupian('20');">系统属性</a></td>
				</tr>
				<tr>
				  <td width="9%" height="21" ><img id="xiaotu21" src="<%=path%>/images/ico06.gif" width="8" height="12" /></td>
				  <td width="91%"><a href="<%=path %>/admin/index/userinfo.jsp" target="mainFrame" class="left-font03" onClick="tupian('21');">密码修改</a></td>
				</tr>
				<s:if test="#session.admin.userType==1">
				<tr>
			 		<td width="9%" height="21" ><img id="xiaotu21" src="<%=path%>/images/ico06.gif" width="8" height="12" /></td>
			  		<td width="91%"><a href="<%=path %>/adminManage.action" target="mainFrame" class="left-font03" onClick="tupian('22');">管理员维护</a></td>
				</tr>
				</s:if>
       </table>
		<!--  任务系统结束    -->

		<!--  消息系统开始    -->
		<TABLE width="100%" border="0" cellpadding="0" cellspacing="0" class="left-table03">
          <tr>
            <td height="29">
				<table width="85%" border="0" align="center" cellpadding="0" cellspacing="0">
					<tr>
						<td width="8%"><img name="img7" id="img7" src="<%=path%>/images/ico04.gif" width="8" height="11" /></td>
						<td width="92%">
								<a href="javascript:" target="mainFrame" class="left-font03" onClick="list('7');" >留言公告管理</a></td>
					</tr>
				</table>
			</td>
          </tr>		  
        </TABLE>
		<table id="subtree7" style="DISPLAY: none" width="80%" border="0" align="center" cellpadding="0" 
				cellspacing="0" class="left-table02">
				<tr>
				  <td width="9%" height="20" ><img id="xiaotu17" src="<%=path%>/images/ico06.gif" width="8" height="12" /></td>
				  <td width="91%">
						<a href="<%=path %>/liuyanMana.action" target="mainFrame" class="left-font03" onClick="tupian('17');">留言管理</a></td>
				</tr>
				<tr>
				  <td width="9%" height="20" ><img id="xiaotu18" src="<%=path%>/images/ico06.gif" width="8" height="12" /></td>
				  <td width="91%">
					<a href="<%=path %>/gonggaoMana.action" target="mainFrame" class="left-font03" onClick="tupian('18');">公告管理</a></td>
				</tr>
      </table>
		<!--  消息系统结束    -->

        <TABLE width="100%" border="0" cellpadding="0" cellspacing="0" class="left-table03">
          <tr>
            <td height="29">
				<table width="85%" border="0" align="center" cellpadding="0" cellspacing="0">
					<tr>
						<td width="8%"><img name="img1" id="img1" src="<%=path%>/images/ico04.gif" width="8" height="11" /></td>
						<td width="92%">
								<a href="javascript:" target="mainFrame" class="left-font03" onClick="list('1');" >商品管理</a></td>
					</tr>
				</table>
			</td>
          </tr>		  
        </TABLE>
		<table id="subtree1" style="DISPLAY: none" width="80%" border="0" align="center" cellpadding="0" 
				cellspacing="0" class="left-table02">
				<tr>
				  <td width="9%" height="20" ><img id="xiaotu1" src="<%=path%>/images/ico06.gif" width="8" height="12" /></td>
				  <td width="91%"><a href="<%=path %>/catelogMana.action" target="mainFrame" class="left-font03" onClick="tupian('1');">商品类别管理</a></td>
				</tr>
				<tr>
				  <td width="9%" height="20" ><img id="xiaotu4" src="<%=path%>/images/ico06.gif" width="8" height="12" /></td>
				  <td width="91%"><a href="<%=path %>/goodsManaNoTejia.action" target="mainFrame" class="left-font03" onClick="tupian('4');">商品管理</a></td>
				</tr>
      </table>
		<!--  项目系统结束    -->
	  <!--  客户系统开始    -->
	  <table width="100%" border="0" cellpadding="0" cellspacing="0" class="left-table03">
          <tr>
            <td height="29"><table width="85%" border="0" align="center" cellpadding="0" cellspacing="0">
                <tr>
                  <td width="8%" height="12"><img name="img2" id="img2" src="<%=path%>/images/ico04.gif" width="8" height="11" /></td>
                  <td width="92%"><a href="javascript:" target="mainFrame" class="left-font03" onClick="list('2');" >订单管理</a></td>
                </tr>
            </table></td>
          </tr>
      </table>
	  
	  <table id="subtree2" style="DISPLAY: none" width="80%" border="0" align="center" cellpadding="0" cellspacing="0" class="left-table02">
        
		<tr>
          <td width="9%" height="20" ><img id="xiaotu7" src="<%=path%>/images/ico06.gif" width="8" height="12" /></td>
          <td width="91%"><a href="<%=path %>/userMana.action" target="mainFrame" class="left-font03" onClick="tupian('7');">会员管理</a></td>
        </tr>
        
        <tr>
          <td width="9%" height="20" ><img id="xiaotu71" src="<%=path%>/images/ico06.gif" width="8" height="12" /></td>
          <td width="91%"><a href="<%=path %>/orderMana.action" target="mainFrame" class="left-font03" onClick="tupian('71');">订单管理</a></td>
        </tr>
      </table>

	  <!--  客户系统结束    -->
	  <!--  人员系统开始    -->
	  <table width="100%" border="0" cellpadding="0" cellspacing="0" class="left-table03">
          <tr>
            <td height="29"><table width="85%" border="0" align="center" cellpadding="0" cellspacing="0">
                <tr>
                  <td width="8%" height="12"><img name="img3" id="img3" src="<%=path%>/images/ico04.gif" width="8" height="11" /></td>
                  <td width="92%"><a href="javascript:" target="mainFrame" class="left-font03" onClick="list('3');" >销售管理</a></td>
                </tr>
            </table></td>
          </tr>
      </table>
	  
	  <table id="subtree3" style="DISPLAY: none" width="80%" border="0" align="center" cellpadding="0" cellspacing="0" class="left-table02">
        <tr>
          <td width="9%" height="20" ><img id="xiaotu8" src="<%=path%>/images/ico06.gif" width="8" height="12" /></td>
          <td width="91%"><a href="<%=path %>/caiwuMana.action" target="mainFrame" class="left-font03" onClick="tupian('8');">销售管理</a></td>
        </tr>
      </table>
	
	  <!--  人员系统结束    -->

	  </TD>
  </tr>
  
</table>
</body>
</html>
