<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<style type="text/css">
.row{
  margin: 0px auto;
  width:280px;
}

</style>
<<<<<<< HEAD
<!-- ���̺귯�� import -->
<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
<!-- ó��(�̺�Ʈ)  -->
<script type="text/javascript">
// �Ϲ� Javascript : window.onload=function(){}
// $(document).ready(function(){}):((document).ready)��������)
$(function(){
	$('#idBtn').click(function(){
		// ó�� ==> ��ư Ŭ���� ó�� ����
		// �Է��� ID�� �д´� 
		var id=$('#id').val();
		
		if(id.trim()=="")
		{
			$('#id').focus();
			return; //���α׷� ���� (�Է��� ���·� ���ư���)
		}
		       
		//id => Model�� ����(MemberModel)
		// ������ => ���� (XML,JSON(***))
		// {"id":id} ==> idcheck_ok.do?id=aaa
		$.ajax({
			type:'post',
			url:'idcheck_ok.do',
			data:{"id":id},
			success:function(response)
			{
				var count=response.trim();
				if(count==0)
				{
					$('#result').html("<font color=blue>"
							+id+"��(��) ��밡���� ���̵��Դϴ�</font>");
					$('#ok').html("<input type=button "
							+"id=idok value=Ȯ�� onclick=ok('"+id+"')>");
				}
				else
				{
					$('#result').html("<font color=red>"
						+id+"��(��) �̹̻�����Դϴ�</font>");
				}
				
			}
			/* error:function(res)
			{
				// ���� ó��
			} */
		});
		
	});
});

function ok(id)
{
	parent.joinFrm.id.value=id;
	parent.Shadowbox.close();
}
=======
<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
<script type="text/javascript">
	/* $(document).ready(function(){
		�Ʒ��� �Լ��� ���� ����� �Ѵ�.	
	}) */
	$(function(){
		$('#idBtn').click(function(){
			//ó�� ==> ��ư Ŭ���� ó�� ����
			var id=$('#id').val();
			/*
				1) val()
					input�±�, select�±�, textarea
				2) text()
					td,th,h...
					<h1><span>aaa</span></h1> : aaa�� �о��
				3) html()
					<h1><span>aaa</span></h1> : <span>aaa</span>�� �о��
				4) attr()
					<a> <img> �Ӽ��� �б�
				
				�±� �б�
				$('.��') ==> class
				$('#��') ==> id
				$('�±׸�') : getElementByTagName()
				
				�̺�Ʈ
					click => onClick()
					change => onChange()
					hover => onMouseOver()
					keyup => onKeyup()
				ex) �±׸�.click(function(){
				})
					�±׸�.change(function(){
				}) ��� ���� ���δ�.
			*/
			if(id.trim()=="")
			{
				$('#id').focus();
				return;
			}
			// id�� �𵨷� �������Ѵ�.
			$.ajax({
				type:'post',
				url:'idcheck_ok.do',
				data:{"id":id},
				success:function(response)
				{
					var count=response.trim();
					/* alert(count); */
					if(count==0)
					{
						$('#result').html("<font color=blue>"
								+id+"��(��) ��� �����մϴ�.</font>");
						$('#ok').html("<input type=button "+"id=idok value=Ȯ�� onclick=ok('"+id+"')>")
					}
					else
					{
						$('#result').html("<font color=red>"
								+id+"��(��) �̹� ������Դϴ�.</font>");
					}
				}
				/*
				error:function(res)
				{
					�̷��� �ϸ� ����ó���� �����ϴ�.
				}
				*/
			});
			
		});
	});
	
	function ok(id)
	{
		parent.joinFrm.id.value=id;
		parent.Shadowbox.close();
		
	}
>>>>>>> branch 'master' of https://github.com/AboutSAN/SANRecommend.git
</script>
</head>
<body>
  <div class="container">
    <div class="row">
     <table class="table">
      <tr>
       <td>
        ID:<input type=text id="id">
        <input type=button value="�ߺ�üũ" id="idBtn"
         class="btn btn-xs btn-primary">
       </td>
      </tr>
      <tr>
       <td class="text-center" id="result"></td>
      </tr>
      <tr>
        <td class="text-center" id="ok"></td>
      </tr>
     </table>
    </div>
  </div>
</body>
</html>






