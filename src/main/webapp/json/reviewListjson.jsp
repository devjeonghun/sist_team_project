<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
[
<c:forEach var="i" items="${ReviewL}" varStatus="cnt">
  
    {"hr_no":"${i.hr_no}",
    "m_name":"${i.m_name}",
    "hr_title":"${i.hr_title}",
    "hr_regdate":"${i.hr_regdate}",
    "hr_hit":"${i.hr_hit}",
    "hr_score":"${i.hr_score}",    
    "h_like":"${i.h_like}"    
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