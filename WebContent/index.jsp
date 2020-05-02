<%@ page language="java" import="java.util.*" contentType="text/html;charset=gb2312" %>
<%@ include file="iframe/head.jsp" %> 
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<HTML xmlns="http://www.w3.org/1999/xhtml">
<HEAD>
<LINK href="images/default.css" type=text/css rel=stylesheet>
<LINK href="images/css.css" type=text/css rel=stylesheet>
<META http-equiv=Content-Type content="text/html; charset=gb2312">
<META content="MSHTML 6.00.2900.3268" name=GENERATOR>
</HEAD>
<BODY text=#000000 bgColor=#ffffff leftMargin=0 topMargin=0>
	<table style="border-collapse:separate; border-spacing:15px 5px;">
	<tr>
		<td align="left" width="60%">
			<div id="myCarousel" class="carousel slide" >
				<!-- 轮播（Carousel）指标 -->
				<ol class="carousel-indicators">
					<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
					<li data-target="#myCarousel" data-slide-to="1"></li>
					<li data-target="#myCarousel" data-slide-to="2"></li>
				</ol>   
				<!-- 轮播（Carousel）项目 -->
				
				<div class="carousel-inner">
					<%if(!newsList.isEmpty()){
						for(int news11=0;news11<3;news11++){
							List newsList2=(List)newsList.get(news11);
							if(news11==0){
					%>
					<div class="item active">
						<A href="<%=basePath%>newsinfo.jsp?id=<%=newsList2.get(0).toString()%>" >
						<img src="<%=basePath %>images/lb<%=news11+1 %>.jpeg" alt="First slide">
						<div class="carousel-caption"><h4><%=newsList2.get(1).toString() %><h4></div></A>
					</div>
					<%
							}else if(news11==1){
					%>
					<div class="item">
						<A href="<%=basePath%>newsinfo.jsp?id=<%=newsList2.get(0).toString()%>" >
						<img src="<%=basePath %>images/lb<%=news11+1 %>.jpeg" alt="Second slide">
						<div class="carousel-caption"><h4><%=newsList2.get(1).toString() %><h4></div></A>
					</div>
					<%
							}else{
					%>
					<div class="item">
						<A href="<%=basePath%>newsinfo.jsp?id=<%=newsList2.get(0).toString()%>" >
						<img src="<%=basePath %>images/lb<%=news11+1 %>.jpeg" alt="Third slide">
						<div class="carousel-caption"><h4><%=newsList2.get(1).toString() %><h4></div></A>
					</div>
					<%}}} %>
				</div>
				<!-- 轮播（Carousel）导航 -->
				<a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
				    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
				    <span class="sr-only">Previous</span>
				</a>
				<a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
				    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
				    <span class="sr-only">Next</span>
				</a>
			</div> 
		</td>
		<td align="right">
			<TABLE class=xsnr id=tb1_nr1 cellSpacing=0 cellPadding=0 width="100%" border=0
				style="border-collapse:separate; border-spacing:0px 6px;">
				<TBODY>
					<%
						if (!newsList.isEmpty()) {
							for (int news11 = 0; news11 < newsList.size(); news11++) {
								List newsList2 = (List) newsList.get(news11);
								if(news11==0){
					%>
					<TR>
						<TD align="left">
						<A href="<%=basePath%>newsinfo.jsp?id=<%=newsList2.get(0).toString()%>"
							style="font-size:20px;font-weight:bold;">
								<%=newsList2.get(1).toString().length() > 19 ? newsList2.get(1).toString().substring(0, 19): newsList2.get(1).toString()%></A><BR>
						</TD>
					</TR>
					<%
							}else{
					%>
					<TR>
						<TD align="left"><A
							href="<%=basePath%>newsinfo.jsp?id=<%=newsList2.get(0).toString()%>"
								style="font-size:17px;">
								<%=newsList2.get(1).toString().length() > 20 ? newsList2.get(1).toString().substring(0, 20): newsList2.get(1).toString()%></A><BR>
						</TD>
					</TR>
					<%
						}
						}
						}
					%>
				</TBODY>
			</TABLE>			
		</td>
		</tr>
	</table>
	<!-- 幻灯片 -->
	<TABLE class=MainTable cellSpacing=0 cellPadding=0 width="100%" align=center border=0>
  		<TBODY>
  			<TR>
    			<TD vAlign=top width="37%" height=200>
 					<TABLE  class=dragTable cellSpacing=0 cellPadding=0 width="100%" align=center border=0>
 						<TBODY>
							<TR>
								<TD class=middle  align="left" colspan="2">
								<SCRIPT type=text/javascript>
									var imgUrl = new Array();
									var imgtext = new Array();
									var imgLink = new Array();
									
									for(var i=0;i<4;i++){
										imgUrl[i]="images/"+(i+1)+".jpg";
										imgLink[i]='http://localhost:8080/xwtj/';
										imgtext[i]=' ';
									}
									var pics=imgUrl[0];
									var links=imgLink[0];
									var texts=imgtext[0];
									for(var i=1;i<imgUrl.length;i++){
										pics+='|'+imgUrl[i];
										links+='|'+imgLink[i];
										texts+='|'+imgtext[i];
									}
									
									var focus_width=330
									var focus_height=228
									var text_height=1
									var swf_height = focus_height+text_height
									
									document.write('<object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" codebase="http://fpdownload.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,0,0" width="'+ focus_width +'" height="'+ swf_height +'">');
									document.write('<param name="allowScriptAccess" value="sameDomain" /><param name="movie" value="<%=basePath%>images/rollpic.swf" /><param name="quality" value="high" /><param name="bgcolor" value="#F0F0F0">');
									document.write('<param name="menu" value="false"><param name=wmode value="opaque">');
									document.write('<param name="FlashVars" value="pics='+pics+'&links='+links+'&texts='+texts+'&borderwidth='+focus_width+'&borderheight='+focus_height+'&textheight='+text_height+'">');
									document.write('<embed src="<%=basePath%>images/rollpic.swf" wmode="opaque" FlashVars="pics='+pics+'&links='+links+'&texts='+texts+'&borderwidth='+focus_width+'&borderheight='+focus_height+'&textheight='+text_height+'" menu="false" bgcolor="#F0F0F0" quality="high" width="'+ focus_width +'" height="'+ focus_height +'" allowScriptAccess="sameDomain" type="application/x-shockwave-flash" pluginspage="http://www.macromedia.com/go/getflashplayer" />');
									document.write('</object>');
								</SCRIPT>		
								</TD>
							</TR>
						</TBODY>
					</TABLE>
				</TD>
				<!--最新新闻-->
				<TD class=Side vAlign=top align=left width="37%" height=200>
 					<TABLE  class=dragTable cellSpacing=0 cellPadding=0 width="100%" align=center border=0>
 						<TBODY>
        					<TR>
					          <TD class=head id=tb1_bt1 onmouseover="tb_xs(1,2,1)" width="100%" height="30">
					            <SPAN class=TAG>最新新闻</SPAN>
							  </TD>
							</TR>
        					<TR>
							  <TD class=middle  align="left" colspan="2">
               					<TABLE class=xsnr id=tb1_nr1  cellSpacing=0 cellPadding=0 width="100%" border=0>
                    				<TBODY>
					                    <%if(!newsList.isEmpty()){
											for(int news11=0;news11<newsList.size();news11++){
												List newsList2=(List)newsList.get(news11);
										%>
										<TR>
					                      <TD align="left">
										  <A href="<%=basePath %>newsinfo.jsp?id=<%=newsList2.get(0).toString()%>" >
										  <%=newsList2.get(1).toString().length()>17?newsList2.get(1).toString().substring(0,17):newsList2.get(1).toString() %></A><BR>
										  </TD>
										  <TD align="right">
										  <%=newsList2.get(2).toString().substring(0,10) %><BR>
										  </TD>
									  	</TR>
										<%}} %>
									</TBODY>
								</TABLE>			
							</TD>
						</TR>
					</TBODY>
				</TABLE>
			</TD>
     		<TD class=Side vAlign=top align=right width="25%">
				<TABLE width="100%" height="240" border=0 cellPadding=0 cellSpacing=0 class=dragTable>
				  <TBODY>
			        <TR>
			          <TD class=head>
			            <SPAN class=TAG>
			            	<P>站内公告</P>
			            </SPAN>
					  </TD>
					</TR>
        			<TR>
	          			<TD class=middle align=left>
					        <MARQUEE onmouseover="if(document.all!=null){this.stop()}" onmouseout="if(document.all!=null){this.start()}" scrollAmount=1 scrollDelay=1 direction=up height=180>
					            <TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
					              <TBODY>
					              <%if(!affList.isEmpty()){
										for(int aff=0;aff<affList.size();aff++){
											List affList2=(List)affList.get(aff);
								  %>
									<TR>
					                	<TD width="100%">
											<%=affList2.get(1).toString() %>---<%=affList2.get(2).toString() %><BR>
										</TD>
			  						</TR>
								  <%
										}
									}
								  %>
								  </TBODY>
			 					</TABLE>
							 </MARQUEE>
		  				  </TD>
				   		</TR>
					</TBODY>
				</TABLE>
		  	 </TD>
	   	 </TR>
	  </TBODY>
	</TABLE>
	<TABLE class=MainTable cellSpacing=0 cellPadding=0 width="100%"
		align=center border=0>
		<TBODY>
			<TR>
				<TD vAlign=top width="60%" height=200 align=left>
					<TABLE class=dragTable cellSpacing=0 cellPadding=0 width="100%"
						align=center border=0>
						<TBODY>
							<TR>
								<TD class=head id=tb1_bt1 onmouseover=tb_xs(1,2,1) width="100%"
									height="30"><SPAN class=TAG>热点新闻</SPAN></TD>
							</TR>
							<TR>
								<TD class=middle align="left" colspan="2">
									<!--*******************************新闻新闻**********************************-->
									<TABLE class=xsnr id=tb1_nr1 cellSpacing=0 cellPadding=0
										width="100%" border=0>
										<TBODY>
											<TR>
												<TD align="center">新闻标题</TD>
												<TD align="center">新闻栏目<BR>
												<TD align="center">发布时间<BR>
												<TD align="center">发布人<BR>
												<TD align="center">点击率<BR>
												</TD>
											</TR>
											<%List hlist=news.get10HotNews();
								                    if(!hlist.isEmpty()){
													for(int news11=0;news11<hlist.size();news11++){
														List newsList2=(List)hlist.get(news11);
											%>
											<TR>
												<TD align="left">
												<A href='<%=basePath %>newsinfo.jsp?id=<%=newsList2.get(0).toString()%>'> 
												<%=newsList2.get(1).toString().length()>17?newsList2.get(1).toString().substring(0,17):newsList2.get(1).toString() %>
												</A><BR>
												</TD>
												<TD align="center"><%=newsList2.get(2).toString() %><BR>
												<TD align="center"><%=newsList2.get(4).toString().substring(0,10) %><BR>
												<TD align="center"><%=newsList2.get(5).toString()%><BR>
												<TD align="center"><%=newsList2.get(6).toString() %><BR>
												</TD>
											</TR>
											<%}} %>
										</TBODY>
									</TABLE>
								</TD>
							</TR>
						</TBODY>
					</TABLE> 
				</TD>
				<TD class=Side vAlign=top align=right height=200>
					<TABLE class=dragTable cellSpacing=0 cellPadding=0 width="100%"
						align=center border=0>
						<TBODY>
							<TR>
								<TD class=head id=tb1_bt1 onmouseover=tb_xs(1,2,1) width="100%"
									height="30"><SPAN class=TAG>新闻列表</SPAN></TD>

							</TR>
							<TR>
								<TD class=middle align="left" colspan="2">
									<!--*******************************新闻新闻**********************************-->
									<TABLE class=xsnr id=tb1_nr1 cellSpacing=0 cellPadding=0
										width="100%" border=0>
										<TBODY>

											<TR>
												<TD align="center">新闻标题</TD>
												<TD align="center">新闻栏目<BR>
												</TD>
											</TR>
											<%List pslist=news.getaNews();
							                    if(!pslist.isEmpty()){
												for(int news11=0;news11<pslist.size();news11++){
													List newsList2=(List)pslist.get(news11);
												%>
											<TR>
												<TD align="left">
													<A href='<%=basePath %>newsinfo.jsp?id=<%=newsList2.get(0).toString()%>'>
													<%=newsList2.get(1).toString().length()>17?newsList2.get(1).toString().substring(0,17):newsList2.get(1).toString() %>
													</A><BR>
												</TD>
												<TD align="center"><%=newsList2.get(2).toString() %><BR></TD>
											</TR>
											<%
												}
												}
											%>

										</TBODY>
									</TABLE>
								</TD>
							</TR>
						</TBODY>
					</TABLE>
				</TD>
			</TR>
		</TBODY>
	</TABLE>
	<%@ include file="iframe/foot.jsp"%>