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
<title>�����̳�</title>
<meta name="description" content="" />
<meta name="keywords" content="" />
<link href="<%=path %>/img/style.css" rel="stylesheet" type="text/css" />
<script type='text/javascript' src='<%=path %>/dwr/interface/cartService.js'></script>
<script type='text/javascript' src='<%=path %>/dwr/engine.js'></script>
<script type='text/javascript' src='<%=path %>/dwr/util.js'></script>
<script language="JavaScript" src="<%=path %>/js/public.js" type="text/javascript"></script>
		<script type="text/javascript">
        function orderDel(orderId)
        {
            var url="<%=path %>/orderDel.action?orderId="+orderId;
            window.location.href=url;
        }
        
        function orderDetail(orderId)
        {
                 var url="<%=path %>/orderDetail.action?orderId="+orderId;
                 var n="";
                 var w="700px";
                 var h="500px";
                 var s="resizable:no;help:no;status:no;scroll:yes";
			     openWin(url,n,w,h,s);
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
    </script>
</head>
  
<body>

	<jsp:include flush="true" page="/qiantai/inc/incTop.jsp"></jsp:include>
		
<div id="page">
<div class="main">

<jsp:include flush="true" page="/qiantai/inc/incLeft.jsp"></jsp:include>
  
 
 
<div class="right"> 
<div class="rightl">
<h1><span>�ҵĶ����б�</span></h1>
 
  	<s:set name="items" value="#session.cart.items"/>
  <table id="search" align="center" border="1" bordercolor="#cccccc" cellpadding="0"
            cellspacing="1" class="table_1" width="98%">
            <tbody>
                 
                <tr class="tr1">
                    <td style="padding-left: 5px; height: 25px">
                         
                        <table cellspacing="0" cellpadding="2" rules="all" border="1" id="DataGrid1" style="border-color:Black;font-family:verdana;font-size:8pt;width:100%;border-collapse:collapse;">
	<tr align="center" valign="middle" style="background-color:#F8FAFC;font-weight:bold;">
		<td style="width:150px;">�������</td> <td>���</td><td>�µ�����</td><td>����״̬</td><td style="width:50px;">�༭</td>
	</tr>
		  <s:iterator value="#request.orderList" id="order">
			<tr align="center" style="font-weight:normal;font-style:normal;text-decoration:none;">
		 		<td> 	<s:property value="#order.orderBianhao"/> </td>
		 		<td> ��<s:property value="#order.orderJine"/> <br/> </td>
		 		<td>&nbsp;<s:property value="#order.orderDate"/> </td>
		 		<td> <s:if test="#order.orderZhuangtai=='no'">
									            ���µ���δ����
									      </s:if>
									      <s:if test="#order.orderZhuangtai=='yes'">
									            ���µ���������
									      </s:if> </td>
		 		<td>
                    <a href="#" onclick="orderDetail(<s:property value="#order.orderId"/>)">������ϸ</a>&nbsp;&nbsp;
									      <a href="#" onclick="orderDel(<s:property value="#order.orderId"/>)">ɾ��</a>
                  </td>
            </tr>
		</s:iterator>    
								 
								  
</table></td>
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
 

