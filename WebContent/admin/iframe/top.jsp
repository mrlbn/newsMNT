<%@ page language="java" import="java.util.*,com.util.*"  contentType="text/html;charset=gb2312"%>
<jsp:useBean id="sn" scope="page" class="com.bean.SystemBean" />
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
String dir=sn.getDir();
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
<HEAD>
<META http-equiv=Content-Type content="text/html; charset=gb2312">
<LINK href="<%=basePath %><%=dir %>/images/top.css" type=text/css rel=stylesheet>
<SCRIPT language=javascript>		
function out(src){
	if(confirm("确定要退出吗？"))	{
		return true;	
	}
	return false;
}
</SCRIPT>
<SCRIPT language=JavaScript src="<%=basePath %><%=dir %>/images/Common.js"></SCRIPT>
<SCRIPT language=JavaScript src="<%=basePath %><%=dir %>/images/SetFocus.js"></SCRIPT>
<META content="MSHTML 6.00.2900.3243" name=GENERATOR>
</HEAD>
<%
	String username=(String)session.getAttribute("user");
	if(username==null){
		response.sendRedirect(path+"/error.jsp");
	}
	else{
	    List list = sn.getSiteInfo();
	    String str = list.get(0).toString();
%>
<SCRIPT language=javascript>
<!--
parent.window.defaultStatus="当前用户：<%=session.getAttribute("user").toString() %>  IP地址：<%=request.getRemoteAddr() %>";
//-->
</SCRIPT>
<BODY leftMargin=0 topMargin=0 scroll=no marginheight="0" marginwidth="0">
<TABLE cellSpacing=0 cellPadding=0 width="100%" bgColor=#3a6592 border=0>
  <TBODY>
  <TR>
    <TD height=25>
      <TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
        <TBODY>
        <TR>
          <TD><IMG src="<%=basePath %><%=dir %>/images/Title.gif"></TD>
          <TD>
            <TABLE height="100%" width="100%" border=0>
              <TBODY>
              <TR>
                <TD class=font_text width="40%">
                  
                </TD>
                <TD class=font_text style="DISPLAY: none" align=right>
                <FONT color=#ffffff></FONT></TD>
                <TD style="DISPLAY: none" width="40%"></TD>
                <TD class=font_text align=right>
                [<A class=blue href="<%=basePath %>" target=_blank>网站首页</A>] 
                  [<A class=blue href="<%=path%>/<%=dir %>/system/editpwd.jsp" target="MainFrame">修改密码</A>] 
                  [<A class=blue onclick="return out(this)" href="<%=path%>/AdminServlet?method=exit" target=_top>安全退出</A>] 
    </TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE>
<TABLE class=HeaderStyle height=30 cellSpacing=0 cellPadding=0 width="100%" border=0>
  <TBODY>
  <TR>
    <TD width=14 background=<%=basePath %><%=dir %>/images/topnav_bg.jpg>&nbsp;</TD>
    <TD vAlign=bottom background=<%=basePath %><%=dir %>/images/topnav_bg.jpg>
      <TABLE class=font_nav_active id=TDTT0  cellSpacing=0 cellPadding=0 width=150 border=0>
        <TBODY>
        <TR>
          <TD >
            <DIV align=center><%=str %></DIV></TD></TR></TBODY></TABLE></TD>    
</TR></TBODY></TABLE>
<TABLE cellSpacing=0 cellPadding=0 width="100%">
  <TBODY>
  <TR>
    <TD bgColor=#73a3d4 height=6></TD></TR></TBODY></TABLE></BODY>
<%		
	}
%>    
</HTML>
