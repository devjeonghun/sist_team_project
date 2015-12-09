<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
[
<c:forEach var="i" items="${hbean}" varStatus="cnt">
  
    {"h_no":"${i.h_no}",
    "h_file":"${i.h_file}",
    "h_name":"${i.h_name}",
    "h_category":"${i.h_category}"
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
    
    