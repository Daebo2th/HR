<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/reset-css@5.0.1/reset.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
  
  <link rel="stylesheet" href="/assets/css/view_jy.css">
    
    <title>����� ���</title>
  </head>
  <body id="body-pd">
  
  
  <div class="main">

    <div class="main_title">
        <h5>�� ����ٱ��</h5>
      <button><a href="/views/user/workRecord/workRecordModal.jsp">����ٱ�� ���� ��û</a></button>
    </div>
    <div class="chekform">
        <input type="date"><br><br> ~ <input type="date"><hr>
        <input type="checkbox">�������� ���<br>
        <input type="checkbox">���� ���<br> 
        <input type="checkbox">���� ���<br> 
        <input type="checkbox">��� ���� ���<br> 
        <input type="checkbox">��� ���� ���<br>  
    </div>
    <div class="listform">
    <table class="table table-hover">
      <thead>
      <tr>
        <th></th>
        <th><input type="text" placeholder="�˻�.."></th>
        <th><input type="text" placeholder="�˻�.."></th>
        <th><input type="text" placeholder="�˻�.."></th>
        <th><input type="text" placeholder="�˻�.."></th>
        <th><input type="text" placeholder="�˻�.."></th>
        <th><input type="text" placeholder="�˻�.."></th>
        <th><input type="text" placeholder="�˻�.."></th>
        <th><input type="text" placeholder="�˻�.."></th>
      </tr>
      <tr>
 <th style="width:30px"><input type='checkbox' id="chkAll" onclick="allCheckboxes('chk[]', this.checked)"></th>
        <th>��¥</th>
        <th>�ٹ��ð�</th>
        <th>�ٹ�����</th>
        <th>����</th>
        <th>����</th>
        <th>�ٹ���Ʈ</th>
        <th>�ްԽð�</th>
        <th>�� �ð�</th>
      </tr>
      </thead>
      <tbody>
      <tr>
      <th><input type='checkbox' name = 'chk[]' onclick="isAllCheck(this.name, 'chkAll');"></th>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
  
      </tr>
      <tr>
      <th><input type='checkbox' name = 'chk[]' onclick="isAllCheck(this.name, 'chkAll');"></th>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
  
      </tr>
      </tbody>
    </table>
  </div>
</div>

  <script src="/assets/js/selectAll.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" />
  </body>
</html>