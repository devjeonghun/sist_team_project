<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
[
<c:forEach var="i" items="${list}" varStatus="cnt">
  
    {"P_COR":"${i.p_cor}",
    "P_NO":"${i.p_no}",
    "P_DATA":"${i.p_data}",
    "P_TYPE":"${i.p_type}",
    "HRR_NO":"${i.hrr_no}"    
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
    

