<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="/assets/css/modal_jy.css">
    <title>�ް��������� ���â</title>
</head>
<body>
    <h1>�ް� ���� �߰��ϱ�</h1>
    <hr>

<table>
    <!-- <tr>
        <td>�ް� �׷�</td>
        <td>  
            <select id="numbers">
                <option value="none">�ް� �׷� ����</option>
                <option value="none"></option>
            </select>
        </td>
    </tr> -->
    <tr>
        <td>�̸�</td>
        <td><input type="text"></td>
    </tr>

    <tr>
        <td>����</td>
        <td>  
            <select id="a">
                <option value="none">(��� ����)</option>
                <option value="none"></option>
            </select>
        </td>
    </tr>

    <tr>
        <td>����</td>
        <td>  
            <select id="b">
                <option value="none">(��� ����)</option>
                <option value="none"></option>
            </select>
        </td>
    </tr>

    <tr>
        <td>�ð��ɼ�</td>
        <td>  
            <input type="radio" name="time" value="1">�ð� �Է�
            <input type="radio" name="time" class="time-in" value="2">�Ϸ� ����
        </td>
    </tr>

    <tr>
        <td>���� �ð�(h)</td>
        <td><input type="text"></td>
    </tr>
    <tr>
        <td>���� �ϼ�</td>
        <td><input type="text"></td>
    </tr>
</table>
<!-- <div class="time-input"> -->
    <p class="title-vac">�ð� �Է� ���</p>
    <p>�ð� ���� ����</p>
        <input type="radio" name="fix" value="1">���޽ð� ��� ����
        <input type="radio" name="fix" class="fix-no" value="2">���� ����
        <div class="fix-time">
            <p>�⺻ �ð�(h) &nbsp;<input type="text"></p>
        </div>
<!-- </div> -->

<p class="title-vac">��� ����</p>
<input type="checkbox">���� ǥ��<hr>
<p>�޸�</p>
<textarea class="vactext"></textarea><br><br>

<button onClick='#'>�ݱ�</button>
<input type="submit" value="�߰��ϱ�" />

</body>
</html>