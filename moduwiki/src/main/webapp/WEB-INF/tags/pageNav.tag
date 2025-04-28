<%@ tag language="java" pageEncoding="UTF-8" %>
<%@ tag trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ attribute name="pageObject" required="true"
 type="com.webjjang.util.page.PageObject" %>
<%@ attribute name="listURI" required="true"
 type="java.lang.String" %>
<%@ attribute name="query" required="false"
 type="java.lang.String" %> 


<% request.setAttribute("noLinkColor", "#999"); %>
<% request.setAttribute("tooltip", " data-toggle=\"tooltip\" data-placement=\"top\" "); %>
<% request.setAttribute("noMove", " title=\"no move page!\" "); %>

<ul class="pagination justify-content-center">
  	<li data-page=1 class="page-item">
		<c:if test="${pageObject.page > 1}">
			<!-- 맨 첫페이지로 이동 : query가 없는 경우 - 일반 게시판 페이지 처리 -->
	  		<a href="${listURI }?page=1&${pageObject.notPageQuery}${query}"
	  		  title="click to move first page!" ${tooltip } class="page-link">
	  			<i class="fa fa-angle-double-left"></i>
	  		</a>
  		</c:if>
		<c:if test="${pageObject.page == 1 }">
	  		<a href="" onclick="return false"
	  		 ${noMove }  ${tooltip } class="page-link">
	  			<i class="fa fa-angle-double-left" style="color: ${noLinkColor};"></i>
	  		</a>
	  	</c:if>
	</li>
	
	
	<li data-page="${pageObject.startPage -1 }" class="page-item">
		<c:if test="${pageObject.startPage > 1 }">
	  		<a href="${listURI }?page=${pageObject.startPage - 1 }&${pageObject.notPageQuery}${query}"
	  		  title="click to move previous page group!" ${tooltip } class="page-link">
	  			<i class="fa fa-angle-left"></i>
	  		</a>
	  	</c:if>
		<c:if test="${pageObject.startPage == 1 }">
	  		<a href="" onclick="return false"
	  		 ${noMove } ${tooltip } class="page-link">
	  			<i class="fa fa-angle-left" style="color: ${noLinkColor};"></i>
	  		</a>
	  	</c:if>
  	</li>
	<c:forEach begin="${pageObject.startPage }" end="${pageObject.endPage }" var="cnt">
	  	<li ${(pageObject.page == cnt)?"class=\"page-item active\"":"class=\"page-item\"" } 
	  	 data-page="${cnt }">
	  	 	<!-- 페이지와 cnt가 같으면 링크가 없음 -->
	  	 	<c:if test="${pageObject.page == cnt }">
	  			<a class="page-link" href="" onclick="return false"
	  			 ${noMove } ${tooltip }>${cnt}</a>
	  	 	</c:if>
	  	 	<!-- 페이지와 cnt가 같지 않으면 링크가 있음 -->
	  	 	<c:if test="${pageObject.page != cnt }">
	  			<a class="page-link" href="${listURI }?page=${cnt }&${pageObject.notPageQuery}${query}"
		  		 title="click to move ${cnt } page" ${tooltip }>${cnt}</a>
	  		</c:if>
	  	</li>
	</c:forEach>
	<li data-page="${pageObject.endPage + 1 }" class="page-item">
		<c:if test="${pageObject.endPage < pageObject.totalPage }">
		  		<a href="${listURI }?page=${pageObject.endPage + 1 }&${pageObject.notPageQuery}${query}"
		  		  title="click to move next page group!" ${tooltip } class="page-link">
		  			<i class="fa fa-angle-right"></i>
		  		</a>	  	
	  	</c:if>
		<c:if test="${pageObject.endPage == pageObject.totalPage }">	  	
		  		<a href="" onclick="return false"
		  		 ${noMove }  ${tooltip } class="page-link">
		  			<i class="fa fa-angle-right" style="color: ${noLinkColor};"></i>
		  		</a>
	  	</c:if>
	</li>
	<c:if test="${pageObject.page < pageObject.totalPage }">
	  	<li data-page="${pageObject.totalPage }" class="page-item">
	  		<a href="${listURI }?page=${pageObject.totalPage }&${pageObject.notPageQuery}${query}"
	  		  title="click to move last page!" ${tooltip } class="page-link">
		  		<i class="fa fa-angle-double-right"></i>
	  		</a>
	  	</li>
  	</c:if>
	<c:if test="${pageObject.page == pageObject.totalPage }">
	  	<li data-page="${pageObject.totalPage }" class="page-item">
	  		<a href="" onclick="return false"
	  		 ${noMove }  ${tooltip } class="page-link">
		  		<i class="fa fa-angle-double-right" style="color: ${noLinkColor};"></i>
	  		</a>
	  	</li>
  	</c:if>
</ul> 

<script>
$(document).ready(function(){
  $('[data-toggle="tooltip"]').tooltip();
  $(".pagination").mouseover(function(){
//   		$(".tooltip > *:last").css({"background-color": "red", "border": "1px dotted #444"});   
	});
});
</script>
