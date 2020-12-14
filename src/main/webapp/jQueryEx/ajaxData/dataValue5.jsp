<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="function" uri="http://java.sun.com/jsp/jstl/functions" %>

<font color='red'>${param.id }</font><br>
<font color='cyan'>${param.password }</font><br>
<c:choose>
	<c:when test="${param.id  eq 'tabs-1' or 's1' }">
	Mauris mauris ante, blandit et, ultrices a, suscipit eget, quam. Integer
	ut neque. Vivamus nisi metus, molestie vel, gravida in, condimentum sit
	amet, nunc. Nam a nibh. Donec suscipit eros. Nam mi. Proin viverra leo ut
	dio. Curabitur malesuada. Vestibulum a velit eu ante scelerisque vulputate.
	</c:when>
	<c:when test="${param.id  eq 'tabs-2' or 's2' }">
	Sed non urna. Donec et ante. Phasellus eu ligula. Vestibulum sit amet
	purus. Vivamus hendrerit, dolor at aliquet laoreet, mauris turpis porttitor
	velit, faucibus interdum tellus libero ac justo. Vivamus non quam. In
	suscipit faucibus urna.
	</c:when>
	<c:when test="${param.id == 's3' or 'tabs-3 }">
	이건 s3고 eq대신 ==을 이용해서 작성하였습니다.
	</c:when>
	
	<c:otherwise>
	Nam enim risus, molestie et, porta ac, aliquam ac, risus. Quisque lobortis.
	Phasellus pellentesque purus in massa. Aenean in pede. Phasellus ac libero
	ac tellus pellentesque semper. Sed ac felis. Sed commodo, magna quis
	lacinia ornare, quam ante aliquam nisi, eu iaculis leo purus venenatis dui.
	</c:otherwise>
</c:choose>







