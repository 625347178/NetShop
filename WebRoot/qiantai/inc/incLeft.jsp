<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

 <div class="left">
 
 <div class="leftk">
<h1><span> �û���¼</span></h1>
<dl> 
        <div id="Qtleft1_Panel1" style="height:100px;width:100%;">
	
	
	   <s:if test="#session.user==null">
	   
			<form action="<%=path %>/userLogin.action" name="userLogin" method="post">
			
                            <table align="center" border="0" cellpadding="0" cellspacing="0" height="103" width="100%">
                                <tr>
                                    <td align="right">
                                        �û���:</td>
                                    <td align="left"> 
                                        <input name="userName" type="text" id="userName" style=" margin-left:20px; border-right: #cadcb2 1px solid;
                                            border-top: #cadcb2 1px solid; font-size: 12px; border-left: #cadcb2 1px solid;
                                            width: 120px; color: #81b432; border-bottom: #cadcb2 1px solid; height: 18px" title="�û�������Ϊ��" /></td>
                                </tr>
                                <tr>
                                    <td align="right">
                                        ����:</td>
                                    <td align="left">
                                        <input name="userPw" type="password" id="userPw" style=" margin-left:20px; border-right: #cadcb2 1px solid;
                                            border-top: #cadcb2 1px solid; font-size: 12px; border-left: #cadcb2 1px solid;
                                            width: 120px; color: #81b432; border-bottom: #cadcb2 1px solid; height: 18px" title="���벻��Ϊ��"  /></td>
                                </tr>
                              
                                <tr>
                                    <td style="height: 24px" colspan="2">
                                        &nbsp;
                                        &nbsp;&nbsp;<input type="submit" name="Qtleft1$Button1" value=" �� ½ " id="Qtleft1_Button1" style="height:18px;margin-left:20px; margin-right: 20px;  border-left: #cadcb2 1px solid; border-top: #cadcb2 1px solid; font-size: 12px;
                                            border-left: #cadcb2 1px solid; color: #00000; border-bottom: #cadcb2 1px solid ;  height:30px; width: 66px; " />
                                        <input type="button" value="ע  ��" onclick="reg()"  style="border-right: #cadcb2 1px solid;
                                            border-top: #cadcb2 1px solid; font-size: 12px; border-left: #cadcb2 1px solid;
                                            color: #00000; border-bottom: #cadcb2 1px solid; height: 30px ;width: 66px; " /></td>
                                </tr>
                            </table>
                 </form>
                        
                           </s:if>
		    <s:else>
		    
		        <table align="center" border="0" cellpadding="0" cellspacing="0" height="103" width="100%">
                                <tr>
                                    <td align="center">
                                       ��ӭ��:   <s:property value="#session.user.userName"/> 
                                     </td>
                                </tr>
                                
                                  <tr>
                                    
                                    <td align="center" >   <input type="button" value="��ȫ�˳� " onclick="logout()"  style="border-right: #cadcb2 1px solid;
                                            border-top: #cadcb2 1px solid; font-size: 12px; border-left: #cadcb2 1px solid;
                                            color: #00000; border-bottom: #cadcb2 1px solid; height: 30px ;width: 66px; " />   </td>
                                </tr>
                                
                                <tr >
                                    <td align="right">  </td>
                                    <td align="left"> </td>
                                </tr> 
                            </table>
                            
		        <br/> 
			</s:else>
			
</div>
    </p>
    <p style='float:right'>  </p>
 
 
 
</dl>
</div>
 
 
<div class="leftk">
<h1><span>��Ʒ����</span></h1>
<ul>   
	
	  <s:action name="catelogAll" executeResult="true" flush="true"></s:action>
  

</ul>
</div>
 

<s:action name="gonggaoQian5" executeResult="true" flush="true"></s:action>
 
 


 
<div style="clear:both;"></div>
</div>

