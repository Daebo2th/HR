<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name='viewport'
	content='width=device-width, initial-scale=1, shrink-to-fit=no'>
<!-- Boxicons CSS -->
<link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css'
	rel='stylesheet'>

    <link rel="stylesheet" href="/assets/css/styles.css">
<script type="text/javascript"
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.3/jquery.min.js"></script>

<title>Document</title>

</head>
<body>

	<header>
		<h1 class="company">MAIN</h1>

		<nav class="top-nav">

			<div class="container">
				<input type="checkbox" class="toggle" id="rounded"> <label
					for="rounded" data-checked="�� �� ��" class="rounded"
					data-unchecked="  ��   ��" />
			</div>

			<img class="reload" src="/assets/images/reload.png"
				onClick="window.location.reload()" />
			<button class="mode-btn">������ ���</button>
		</nav>
	</header>
	<div class="navbar_1" id="navbar">
		<nav class="nav">
			<div>
				<div class="nav_brand">
					<i class='nav_toggle nav_icon menu-outline bx bx-menu'
						id="nav-toggle"></i> <a href="#" class="nav_logo">Menu</a>
				</div>

				<a class="nav_list"> <a href="#" class="nav_link active"> <i
						class='nav_icon bx bx-home'></i> <span class="nav_name">����</span>

				</a>
				</a>
				<div href="#" class="nav_link collapse">
					<i class='nav_icon bx bx-calendar'></i> <span class="nav_name">�ٹ�����</span>

					<i class='collapse_link bx bxs-chevron-down arrow'></i>

					<ul class="collapse_menu">
						<a href="#" class="collapse_sublink">Deta</a>
						<a href="#" class="collapse_sublink">Deta</a>
						<a href="#" class="collapse_sublink">Deta</a>
					</ul>
				</div>
				<div href="#" class="nav_link collapse">
					<i class='nav_icon bx bx-time'></i> <span class="nav_name">�����
						���</span> <i class='collapse_link bx bxs-chevron-down arrow'></i>

					<ul class="collapse_menu">
						<a href="#" class="collapse_sublink">Deta</a>
						<a href="#" class="collapse_sublink">Deta</a>
						<a href="#" class="collapse_sublink">Deta</a>
					</ul>
				</div>
				<div href="#" class="nav_link collapse">
					<i class='nav_icon bx bxs-plane-alt'></i></i> <span class="nav_name">�ް�</span> <i class='collapse_link bx bxs-chevron-down arrow'></i>

					<ul class="collapse_menu">
						<a href="#" class="collapse_sublink">Deta</a>
						<a href="#" class="collapse_sublink">Deta</a>
						<a href="#" class="collapse_sublink">Deta</a>
					</ul>
				</div>
				<div href="#" class="nav_link collapse">
					<i class='nav_icon bx bxs-paper-plane'></i> <span class="nav_name">��û����</span>

					<i class='collapse_link bx bxs-chevron-down arrow'></i>

					<ul class="collapse_menu">
						<a href="#" class="collapse_sublink">Deta</a>
						<a href="#" class="collapse_sublink">Deta</a>
						<a href="#" class="collapse_sublink">Deta</a>
					</ul>
				</div>
				<div href="#" class="nav_link collapse">
					<i class='nav_icon bx bx-money-withdraw'></i> <span
						class="nav_name">�޿�����</span> <i
						class='collapse_link bx bxs-chevron-down arrow'></i>

					<ul class="collapse_menu">
						<a href="#" class="collapse_sublink">Deta</a>
						<a href="#" class="collapse_sublink">Deta</a>
						<a href="#" class="collapse_sublink">Deta</a>
					</ul>
				</div>
				<div href="#" class="nav_link collapse">
					<i class='nav_icon bx bxs-report'></i></i> <span class="nav_name">����</span> <i class='collapse_link bx bxs-chevron-down arrow'></i>

					<ul class="collapse_menu">
						<a href="#" class="collapse_sublink">Deta</a>
						<a href="#" class="collapse_sublink">Deta</a>
						<a href="#" class="collapse_sublink">Deta</a>
					</ul>
				</div>
			</div>

			<a href="#" class="nav_link"> <i class='nav_icon bx bx-log-out'
				id="log_out"></i> <span class="nav_name">Log Out</span>
			</a>
		</nav>
	</div>

	<section id="body-pd">
		<h1>���� �߰��ϱ�</h1><br>
		<nav class="plusinfo">
            <select id="dutysearchsel">
                <option value="none">���þ���</option>
                <option value="dutyname">������</option>
                <option value="memo">�޸�</option>
            </select>
			<input type="text" class="dutysearch">
			<button>�����߰��ϱ�</button>
		</nav>
		<div class= "tab-scroll">
		<table class="table table-hover">
			<thead class="thead">

				<tr>
					 <th style="width:30px"><input type='checkbox' id="chkAll" onclick="allCheckboxes('chk[]', this.checked)"></th>
					<th>������</th>
					<th>�޸�</th>
				</tr>
			</thead>
			<tbody>
				<tr>
 				 <th><input type='checkbox' name = 'chk[]' onclick="isAllCheck(this.name, 'chkAll');"></th>
					<td>1</td>
					<td>�迬��</td>

				</tr>
				<tr>

  				<th><input type='checkbox' name = 'chk[]' onclick="isAllCheck(this.name, 'chkAll');"></th>
					<td>�����ް�</td>
					<td>(ȸ�迬�� ����)���� �ް� �߻� ��Ģ</td>

				</tr>
			</tbody>
		</table>
		
	</div>



	</section>
    <script src="/assets/js/main.js"></script>
</body>
</html>