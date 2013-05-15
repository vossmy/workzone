<?php 
//Обработка формы
if(isset($_POST['name'], $_POST['email'], $_POST['comments'])){
	$errors = array();
	if(empty($_POST['name'])){
		$errors['name'] = 'Вы не ввели имя'; 
	}
	if(empty($_POST['email']) || !filter_var($_POST['email'],FILTER_VALIDATE_EMAIL)){
		$errors['email'] = 'Вы не ввели email'; 
	}
	if(empty($_POST['comments'])){
		$errors['comments'] = 'Вы не ввели комментраий'; 
	}
	if(!count($errors)){
		$link = mysqli_connect(DB_LOCAL,DB_LOGIN,DB_PASS,DB_NAME);
		mysqli_set_charset($link,'utf8');
		mysqli_query($link,"
			INSERT INTO `comments` SET
			`name` = '".mysqli_real_escape_string($link,$_POST['name'])."',
			`email` = '".mysqli_real_escape_string($link,$_POST['email'])."',
			`comments` = '".mysqli_real_escape_string($link,$_POST['comments'])."'"
			) or die(mysqli_error($link));
		mysqli_close($link);
		$_SESSION['send'] = 'sendOk';
		header("Location: index.php?page=reviews&modules=dynamic");
		exit;
	}
}

