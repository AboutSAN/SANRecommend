<%@ page language="java" contentType="text/html; charset=EUC-KR"
   pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>

</head>
<body>
<body class="togetherBody">
   <div class="se-pre-con"></div>

   <form action="return.php" method="post" id="returnform">
      <fieldset>
         <legend style="font-weight: bold; color: #193E0C;">Make Room</legend>
         <input class="focus" type="hidden" name="newAid" value="" />

         <!-- ���� -->

         <label class="labl" for="phone">���� </label>
         <input id="autocomplete1" name="newPu" type="text"
            placeholder="������ �Է����ּ���" style="width: 100%; float: left; margin-bottom: 5px;">
            <br>
            <hr class="hr">
            
         <label class="labl" for="phone">���� <input type="search"
            id="mySearch" oninput="myTypeAhead()">
            <button onclick="#">ã��</button>
         </label>
         <!-- <div></div> -->
         <hr class="hr">
         <div>
         <div>
            <!-- <th class="text-right danger" width=20%>�ο���</th> -->
            <label class="labl" for="phone">�ο���</label>
            <td class="text-left" width=90%><input type=text name=money
               size=30 required placeholder="�ο����� �Է��ϼ���"></td>
         </div>
         </div>
         <hr class="hr">
         <div>
            <!-- <th class="text-right danger" width=20%>ȸ��</th> -->
            <label class="labl" for="phone">ȸ�� </label>
            <td class="text-left" width=90%><input type=text name=money
               size=15 required>��</td>
         </div>
         <hr class="hr">
         <div class="datediv">
            <label class="labl" for="datepicker">��߽ð�: </label> <input
               class="personalinfo date" id="datepicker" name="newDate"
               type="date" />
         </div>
         <div class="timediv">
            <label class="labl" for="timepicker">����ҿ�ð�: </label> <input
               class="personalinfo time" id="timepicker" name="newTime"
               type="time" />
         </div>
         <br> <br>
         <hr class="hr">
         
            <label class="labl" for="phone">���ǻ���</label>
         <div>
            <td class="text-left" width=80%><textarea rows="8" cols="56"
                  name=content placeholder="ex)��õ��"></textarea></td>
         </div>
         <div>
         <table width=100%>
         <tr class="text-center">
            <td>
            <input type=submit class="btn btn-sm btn-primary" value="����">
            <input type=button class="btn btn-sm btn-danger" value="���">
            </td>
            </tr>
            </table>
         </div><!-- style="margin-left: 100px -->
      
      </fieldset>
   </form>
</body>
</body>
</html>