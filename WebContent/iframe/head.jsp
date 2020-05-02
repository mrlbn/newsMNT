<%@page import="com.bean.MemberBean"%>
<%@ page language="java" import="java.util.*"  contentType="text/html;charset=gb2312" %>
<jsp:useBean id="sys" scope="page" class="com.bean.SystemBean" />
<jsp:useBean id="abc" scope="page" class="com.bean.AfficheBean"/>
<jsp:useBean id="news" scope="page" class="com.bean.NewsBean"/> 
<jsp:useBean id="cb" scope="page" class="com.bean.ComBean"/> 
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
	List sysList=sys.getSiteInfo();
	List affList=abc.getAllAffiche();
	List newsList=news.getIndexNews();
	List AllnewsList=news.getAllNews(); 
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<HTML xmlns="http://www.w3.org/1999/xhtml">
<HEAD>
<TITLE><%=sysList.get(0).toString() %></TITLE>
<META http-equiv=Content-Language content=zh-cn>
<META http-equiv=Content-Type content="text/html; charset=gb2312">
<META name="keywords" content="<%=sysList.get(2).toString() %>" />
<META name="description" content="<%=sysList.get(3).toString() %>" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<SCRIPT language=JavaScript src="<%=basePath %>images/Common.js"></SCRIPT>
<SCRIPT language=JavaScript src="<%=basePath %>images/index.js"></SCRIPT>
<SCRIPT language=JavaScript src="<%=basePath %>images/calendar.js"></SCRIPT>
<script src="bootstrap/js/jquery-3.2.1.min.js"></script>
<link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.min.css">
<script src="bootstrap/js/bootstrap.min.js"></script>
<script src="bootstrap/js/jquery-3.2.1.js"></script>
<META content="MSHTML 6.00.2900.3243" name=GENERATOR>
<LINK href="images/css.css" type=text/css rel=stylesheet>
<LINK href="images/default.css" type=text/css rel=stylesheet>

</HEAD>

 
<SCRIPT language=JavaScript>
<!--//屏蔽出错代码
function killErr(){
	return true;
}
window.onerror=killErr;
//-->
</SCRIPT>
<SCRIPT language=JavaScript>
<!--//处理大分类一行两个小分类
function autoTable(div){
	fs=document.getElementById(div).getElementsByTagName("TABLE");
	for(var i=0;i<fs.length;i++){
		fs[i].style.width='49.5%';
		if(i%2==1){
			if (document.all) {
				fs[i].style.styleFloat="right";
			}else{
				fs[i].style.cssFloat="right;";
			}
		}else{
			if (document.all) {
				fs[i].style.styleFloat="left";
			}else{
				fs[i].style.cssFloat="left;";
			}
		}
	}
}
//-->
</SCRIPT>

<BODY text=#000000 bgColor=#ffffff leftMargin=0 topMargin=0> 

<SCRIPT language=JavaScript>
<!--//目的是为了做风格方便
document.write('<div class="wrap">');
//-->
</SCRIPT>
<% 
	String reg_user = (String) session.getAttribute("reg_user");
%>

<table id=header cellspacing=0 cellpadding=0 width="100%" align=center border=0>
<tbody>
  <tr>
    <td width="30%">
    	<a href="<%=basePath %>index.jsp"><img width="100%" src="<%=basePath%>/images/logo.jpg" border=0></a>
	</td>
	<td width="70%">
		<form id="search_form" name="regaa" action="<%=basePath%>sinfo.jsp" method="post" onsubmit="return sn()">
			<div style="margin:7px;margin-left:30px;margin-right:0px;">
				<select name="fenlei">
						<option value="全部">全部</option>
						<%
							List flist = news.getFenlei();
							if (!flist.isEmpty()) {
								for (int i = 0; i < flist.size(); i++) {
									List list2 = (List) flist.get(i);
						%>
						<option value="<%=list2.get(1).toString()%>"><%=list2.get(1).toString()%></option>
						<%
							}
							}
						%>
				</select>
			</div>
			<div class="col-sm-5" id="so">
	             <div class="input-group">
	                 <input type="text" name="title" class="form-control" onkeydown="onKeyDown(event)" placeholder="search"/>
	                 <span class="input-group-addon">
	                 	<a href="javascript:void(0);" onclick="test();">
	                 	<i class="glyphicon glyphicon-search"></i></a>
	                 </span>
	                 <script type="text/javascript">
						function test() {
							console.log("111")
							document.getElementById('search_form').submit();
						}
					</script>
				</div>
			</div>
		</form>
		<%
			String pgmember = (String) session.getAttribute("member");
			String type = (String) session.getAttribute("type");
			if (pgmember == null || type == null) {
				out.print("<span></span>");
			} else {
				out.print("<td align='center'>"+pgmember+"</td>");
			}
		%>
	</td>
  </tr>
 </tbody>
</table>

<nav class="navbar navbar-default" role="navigation">
	<div class="container-fluid"> 
	<div class="navbar-header">
		<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target="#example-navbar-collapse">
			<span class="sr-only">切换导航</span>
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
		</button>
		<a class="navbar-brand" href="<%=basePath %>">新闻首页</a>
	</div>
	<div class="collapse navbar-collapse" id="example-navbar-collapse">
		<ul class="nav navbar-nav">
			
			<%
			List menulist=cb.getCom("select * from fenlei order by id asc",2);
				if(!menulist.isEmpty()){
					for(int i=0;i<menulist.size();i++){
					List listss=(List)menulist.get(i);
			%>
			<li><a href="<%=basePath %>news.jsp?id=<%=listss.get(0).toString()%>"><%=listss.get(1).toString()%></a></li>
			 <%}} %> 
			<li><a href="<%=basePath %>tj.jsp">新闻推荐</a></li>
			<li class="dropdown">
				<a href="#" class="dropdown-toggle" data-toggle="dropdown">
					用户管理<b class="caret"></b>
				</a>
				<ul class="dropdown-menu">
					<li><a href="<%=basePath %>member/index.jsp">用户登录</a></li>
					<li class="divider"></li>
					<li><a href="<%=basePath %>admin/login.jsp">管理员登录</a></li>
				</ul>
			</li>
		</ul>
	</div>
	</div>
</nav>

