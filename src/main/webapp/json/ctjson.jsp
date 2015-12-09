<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
[
<c:forEach var="i" items="${TAList}" varStatus="cnt">
  
    {"ct_title":"${i.ct_title}",
    "ct_regdate":"${i.ct_regdate}",
    "ct_no":"${i.ct_no}",
    "ct_file":"${i.ct_file}"
    <c:choose>
      <c:when test="${cnt.last}">
      }
      </c:when>
      <c:otherwise>
      },  
      </c:otherwise>    
    </c:choose>       
    
</c:forEach>
  ]  
    