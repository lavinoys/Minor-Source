<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<form name="userList" action="JavaScript:searchList();" method="post">
	<table width="100%" border="0" cellspacing="0" cellpadding="0">
		<tr>
			<td height="53" valign="bottom" class="darkgray16b">제품군관리</td>
		</tr>
		<tr>
			<td height="3" bgcolor="#FF5500"></td>
		</tr>
		<tr>
			<td height="20"></td>
		</tr>
	</table>
	<table width="100%" border="0" cellspacing="0" cellpadding="0">
		<tr>
			<td height="25"  align="left" class="darkgray12b" style="padding-left:2">[ 목록보기 ]</td>
		</tr>
	</table>
</form>
<table width="100%" border="0" cellspacing="2" cellpadding="0">
	<tr align="center"> 
		<td height="2" bgcolor="67AEB8" ><img src="./images/blank.gif" width="1" height="1"></td>
		<td height="2" bgcolor="67AEB8" ><img src="./images/blank.gif" width="1" height="1"></td>
		<td height="2" bgcolor="67AEB8" ><img src="./images/blank.gif" width="1" height="1"></td>
		<td height="2" bgcolor="67AEB8" ><img src="./images/blank.gif" width="1" height="1"></td>
	</tr>
	<tr align="center">            
		<td width='5%'  bgcolor="F6F5F5" class="darkgray11" style="padding-bottom:1;padding-top:3"><strong>SEQ</strong></td>
		<td width='15%'  bgcolor="F6F5F5" class="darkgray11" style="padding-bottom:1;padding-top:3"><strong>이름</strong></td>
		<td width='20%' bgcolor="F6F5F5" class="darkgray11" style="padding-bottom:1;padding-top:3"><strong>정보</strong></td>
		<td width='20%' bgcolor="F6F5F5" class="darkgray11" style="padding-bottom:1;padding-top:3"><strong>사용여부</strong></td>
	</tr>                     
	<tr align="center"> 
		<td height="1" bgcolor="67AEB8"><img src="./images/blank.gif" width="1" height="1"></td>
		<td height="1" bgcolor="67AEB8"><img src="./images/blank.gif" width="1" height="1"></td>
		<td height="1" bgcolor="67AEB8"><img src="./images/blank.gif" width="1" height="1"></td>
		<td height="1" bgcolor="67AEB8"><img src="./images/blank.gif" width="1" height="1"></td>
	</tr>
	<c:choose>
		<c:when test="${empty requestScope.category_list}">
			<tr align="center">
				<td class="text_c" colspan="8">조회할 자료가 없습니다.</td>
			</tr>
			<tr align="center"> 
				<td height="1" colspan="8" bgcolor="e1e1e1"><img src="./images/blank.gif" width="1" height="1"></td>
			</tr>
		</c:when>
		<c:otherwise>
			<c:forEach begin="0" end="${fn:length(requestScope.category_list)}" items="${requestScope.category_list}" var="list">
				<tr align="center" onmouseover="javascript:doMouseOverOnTR(this);" onmouseout="javascript:doMouseOutOnTR(this);">
							<td align="center" style="padding-bottom:1;padding-top:3">
								<a href="product_category_info.do?category_seq=${list.category_seq}">${list.category_seq}</a>
							</td>
							<td align="center" style="padding-bottom:1;padding-top:3">${list.category_name}</td>
							<td align="center" style="padding-bottom:1;padding-top:3">${list.category_info}</td>
							<td align="center" style="padding-bottom:1;padding-top:3">${list.use_yn}</td>
				</tr>
				<tr align="center"> 
					<td height="1" colspan="8" bgcolor="e1e1e1"><img src="./images/blank.gif" width="1" height="1"></td>
				</tr>
			</c:forEach>
		</c:otherwise>
	</c:choose>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0">     
	<tr>
		<td align="right"><a href="product_category_write.do"><img src="./images/btn_write.gif"  border="0"></a></td>
	</tr>
</table>