<%@ page language="java" import="java.util.*" contentType="text/html;charset=gb2312" %>
<%@ include file="iframe/head.jsp" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<HTML xmlns="http://www.w3.org/1999/xhtml">
<HEAD>
<LINK href="<%=basePath %>images/default.css" type=text/css rel=stylesheet>
<LINK href="<%=basePath %>images/css.css" type=text/css rel=stylesheet>
<META http-equiv=Content-Type content="text/html; charset=utf-8">
 
<META content="MSHTML 6.00.2900.3268" name=GENERATOR>
</HEAD>
<%
String id=request.getParameter("id");
String fenlei=cb.getString("select title from fenlei where id='"+id+"' ") ;
%>
<script  language="javascript" >
function my_top(){
	alert("������ҳ");
	 var page=parseInt(form3.page.value);
	  if(page<=1){
		console.log(page);
	    alert("������ҳ");
	  }else{
		form3.action="<%=basePath%>news.jsp?id=<%=id%>&page=1";
		form3.submit();
	  }
}
function my_last(){
    if(form3.pageCount.value==0){//�����ҳ��Ϊ0����ô���һҳΪ1��Ҳ���ǵ�һҳ�������ǵ�0ҳ
    form3.action="<%=basePath%>news.jsp?id=<%=id%>&page=1";
    form3.submit();
	}else{
		form3.action="<%=basePath%>news.jsp?id=<%=id%>&page="+form3.pageCount.value;
    	form3.submit();
	}
}
function my_pre(){
  var page=parseInt(form3.page.value);
  if(page<=1){
	console.log(page);
    alert("������һҳ");
  }else{
    form3.action="<%=basePath%>news.jsp?id=<%=id%>&page="+(page-1);
    form3.submit();
  }
}

function my_next(){
  var page=parseInt(form3.page.value);
  var pageCount=parseInt(form3.pageCount.value);
  if(page>=pageCount){
    alert("�������һҳ");
  }else{
    form3.action="<%=basePath%>news.jsp?id=<%=id%>&page="+(page+1);
    form3.submit();
  }
}
function my_bjump(){
  	var pageCount=parseInt(form3.pageCount.value);
  	if( fIsNumber(form3.busjump.value,"1234567890")!=1 ){
		alert("��ת�ı�����ֻ����������!");
		form3.busjump.select();
		form3.busjump.focus();
		return false;
	}
	if(form3.busjump.value>pageCount){//�����ת�ı����������ҳ���������һҳ���������������һҳ
		if(pageCount==0){	
	  		form3.action="<%=basePath%>news.jsp?id=<%=id%>&page=1";
	  		form3.submit();
		}else{
			form3.action="<%=basePath%>news.jsp?id=<%=id%>&page="+pageCount;
			form3.submit();
		}
	}else if(form3.busjump.value<=pageCount){
		var page=parseInt(form3.busjump.value);
   		if(page==0){
      		page=1;//������������0����ô����������1
      		form3.action="<%=basePath%>news.jsp?id=<%=id%>&page="+page;
      		form3.submit();
   		}else{
      		form3.action="<%=basePath%>news.jsp?id=<%=id%>&page="+page;
      		form3.submit();
   		}

	}
}
//****�ж��Ƿ���Number.
function fIsNumber (sV,sR){
	var sTmp;
	if(sV.length==0){ return (false);}
	for (var i=0; i < sV.length; i++){
		sTmp= sV.substring (i, i+1);
		if (sR.indexOf (sTmp, 0)==-1) {
			return (false);
		}
	}
	return (true);
}
function del()
{
	pageform.submit();
}
</script>

<BODY text=#000000 bgColor=#ffffff leftMargin=0 topMargin=0>
 
     <TABLE class=dragTable cellSpacing=0 cellPadding=0 width="100%" border=0>
		<TBODY>
        <TR>
          <TD class=head colspan="2">
			<SPAN class=TAG><%=fenlei%></SPAN> 
			
		  </TD>
		</TR>
		<TR>
		<TD  class=middle align="left" >
    <TABLE class=xsnr id=tb1_nr1  cellSpacing=0 cellPadding=0 width="100%" border=0>
         <TBODY>
            <tr class="head">  
		      <td  align="center">���ű���</td>
		      <td  align="center">������Ŀ</td>
		      <td  align="center">���Źؼ���</td>
		      <td  align="center">����ʱ��</td>
		      <td  align="center">������</td>
		      <td  align="center">�����</td> 
		    </tr>
		<%
			cb.setEVERYPAGENUM(12);
			int cou = cb.getMessageCount("select count(*) from fz_news where fenlei='"+fenlei+"'");//�õ���Ϣ����			        
			String page1=request.getParameter("page");
			if(page1==null){
				page1="1";
			}
			session.setAttribute("busMessageCount", cou + "");
			session.setAttribute("busPage", page1);
			List pagelist1 = cb.getMessage(Integer.parseInt(page1),"select * from fz_news where fenlei='"+fenlei+"' order by id desc",8);
			session.setAttribute("qqq", pagelist1);
			int pageCount = cb.getPageCount(); //�õ�ҳ��  
			session.setAttribute("busPageCount", pageCount + ""); 
			List pagelist3=(ArrayList)session.getAttribute("qqq"); 
		%>
        <%
			if(!pagelist3.isEmpty()){
			for(int i=0;i<pagelist3.size();i++){
				List pagelist2 =(ArrayList)pagelist3.get(i);
		%> 
	<tr class="trA" onMouseOver="this.className='trB'" onMouseOut="this.className='trA'"> 
      <td align="center" bgcolor="#FFFFFF"  style="border-bottom:1px dotted #ccc;"><a href="<%=basePath %>newsinfo.jsp?id=<%=pagelist2.get(0).toString()%>" ><%=pagelist2.get(1).toString() %></a> </td>
      <td align="center" bgcolor="#FFFFFF"  style="border-bottom:1px dotted #ccc;"><%=pagelist2.get(2).toString() %></td>
      <td align="center" bgcolor="#FFFFFF"  style="border-bottom:1px dotted #ccc;"><%=pagelist2.get(7).toString() %></td>
      <td align="center" bgcolor="#FFFFFF"  style="border-bottom:1px dotted #ccc;"><%=pagelist2.get(4).toString().substring(0,10) %></td>
      <td align="center" bgcolor="#FFFFFF"  style="border-bottom:1px dotted #ccc;"><%=pagelist2.get(5).toString() %></td>
      <td align="center" bgcolor="#FFFFFF"  style="border-bottom:1px dotted #ccc;"><%=pagelist2.get(6).toString() %></td>
    </tr>
	<%
	}}
	%>  
			</TBODY>
			</TABLE>			
				</TD>
				</TR>
        		</TBODY>
	  			</TABLE>
		<TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
         <TBODY>
            <TR>
              <TD align=right>
              <form action="" method="post" name="form3">	
			 	<input type="hidden" name="pageCount" value="<%= session.getAttribute("busPageCount").toString()%>" /><!--//���ڸ�����javascript��ֵ-->
			 	<input type="hidden" name="page" value="<%=session.getAttribute("busPage").toString()%>" /><!--//���ڸ�����javascript��ֵ-->         
				<a href="javascript:void(0);" onClick="my_top();"><img src="<%=basePath %>images/first.gif" border="0" /></a>&nbsp;&nbsp;&nbsp;
				<a href="javascript:void(0);" onClick="my_pre();"><img src="<%=basePath %>images/pre.gif" border="0" /></a>&nbsp;&nbsp;&nbsp;
				 ��<%=session.getAttribute("busMessageCount").toString()%>����¼,����<%=session.getAttribute("busPageCount").toString()%>ҳ,��ǰ��<%=session.getAttribute("busPage").toString()%>ҳ&nbsp;&nbsp;&nbsp;
				<a href="javascript:void(0);" onClick="my_next();"><img src="<%=basePath %>images/next.gif" border="0" /></a>&nbsp;&nbsp;&nbsp;
				<a href="javascript:void(0);" onClick="my_last();"><img src="<%=basePath %>images/last.gif" border="0" /></a>
			 	��<input name="busjump" type="text" size="3" />ҳ<a href="#" onClick="my_bjump();"><img src="<%=basePath %>images/jump.gif" border="0" /></a>&nbsp;&nbsp;&nbsp;
			  </form>
              </TD>
            </TR>
          </TBODY>
        </TABLE>
      </BODY>
</HTML>
<%@ include file="iframe/foot.jsp"%>