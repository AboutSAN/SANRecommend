<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script type="text/javascript">
 // �ڹٽ�ũ��Ʈ => �Ű����� (���������� ������� �ʴ´�)
 function ok(zip,addr)
 {
	 // 000-000
	 parent.joinFrm.post1.value=zip.substring(0,3);
	 parent.joinFrm.post2.value=zip.substring(4,7);
	 parent.joinFrm.addr1.value=addr;
	 parent.Shadowbox.close();
	 
 }
</script>
<c:if test="${count==0 }">
  <table class="table">
   <tr>
    <td class="text-center">
         �˻��� ����� �����ϴ�
    </td>
   </tr>
  </table>
</c:if>
<c:if test="${count!=0 }">
  <table class="table table-hover">
   <tr class="success">
    <th class="text-center">�����ȣ</th>
    <th class="text-center">�ּ�</th>
   </tr>
   <c:forEach var="vo" items="${list }">
     <tr>
      <td class="text-center">${vo.zipcode }</td>
      <td class="text-left">
       <a href="javascript:ok('${vo.zipcode }','${vo.address }')">${vo.address }</a>
      </td>
      <%--
          ${vo.sido}&nbsp;${vo.gugun}&nbsp;
          ${vo.dong}&nbsp;${vo.bunji}
          ${vo.getAddress()}
          ok('7','100') => ���ڿ�
          ok(7,100) => ���� 
       --%>
     </tr>
   </c:forEach>
  </table>
</c:if>








