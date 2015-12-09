<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
[
<c:forEach var="i" items="${roomInfo}" varStatus="cnt">
  
    {"h_no":"${i.h_no}",
    "r_no":"${i.r_no}",
    "r_concep":"${i.r_concep}",
    "r_price":"${i.r_price}",
    "r_count":"${i.r_count}",
    "r_option":"${i.r_option}",    
    "r_file":"${i.r_file}"    
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