<?php 
if(isset($_POST['login'], $_POST['password'] ,$_POST['email'])){
	$errors = array();
	if(empty($_POST['login'])){
		$errors['login'] = 'Вы не ввели логин';
	}
	if(empty($_POST['password'])){
		$errors['password'] = 'Вы не ввели пароль';
	}
	if(empty($_POST['email']) || !filter_var($_POST['email'],FILTER_VALIDATE_EMAIL)){
		$errors['email'] = 'Вы не ввели email';
	}
	if(!count($errors)){
		$_SESSION['login']= htmlsc($_POST['login']);
		$_SESSION['password']= htmlsc($_POST['password']);
		$_SESSION['email']= htmlsc($_POST['email']);
		$_SESSION['key']= 'canEnter';
		mysqli_set_charset($link,'utf8');
		q("
			INSERT INTO `users` SET
			`login` = '".mysqli_real_escape_string($link, $_POST['login'])."',
			`password` = '".mysqli_real_escape_string($link, $_POST['password'])."',
			`email` = '".mysqli_real_escape_string($link, $_POST['email'])."'"
			);
		mysqli_close($link);
		$_SESSION['reg'] = 'regOk';
		header("Location: index.php?page=enter&modules=static");
		exit;
	}
	
}




/*

if(!empty($_POST['login'])&& !empty($_POST['pass']) && !empty($_POST['email'])){
			$login = clearData($_POST['login'],'l');
			$pass = clearData($_POST['pass'],'p');
			$email = clearData($_POST['email'],'e');
			if($login && $pass && $email){
				$_SESSION['login']= $login;
				$_SESSION['pass']= $pass;
				$_SESSION['email']= $email;
				$_SESSION['key']= 'canEnter';
				$status = 'Вы успешно зарегестрировались.<a href ="index.php?page=main&modules=static" >Перейти на главную</a> ';
			}else{ $status = 'Неправильно введены данные';}
	}else{$status = '';}
	*/
























