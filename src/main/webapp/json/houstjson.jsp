<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
[
<c:forEach var="i" items="${list}" varStatus="cnt">
    {"h_no":"${i.h_no}",
    "h_name":"${i.h_name}",
    "h_address":"${i.h_address}",
    "h_file":"${i.h_file}",
    "h_rate":"${i.h_rate}",
    "h_lat":"${i.h_lat}",
    "h_long":"${i.h_long}"    
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
    