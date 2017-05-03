<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

 
<div class="bottom">
<div class="yqlj"><h1>友情链接</h1> </div>
<ul class="f5">
	<li> <a href='http://www.taobao.com' target='_blank'>淘宝</a> </li>
  </ul>
</div>
 
<!-- //底部模板 -->
<div class="footer w960 center mt1 clear">
	 
    <div class="footer_left"></div>
    <div class="footer_body">
	<p class="powered">    
		&nbsp;&nbsp;关于我们-
			联系我们- 诚聘英才 - 友情链接 -
			程序下载- 合作服务 -
			许可协议-
			设为首页 -
			加入收藏 -
			<a target="_blank" href="<%=path %>/login.jsp">管理登录</a>
			<br />
			电话：****-******** ************** 传真：****-*******
</div></p>        
<!-- /powered -->
   </div>
   <div class="footer_right"></div>
</div>
</div>


