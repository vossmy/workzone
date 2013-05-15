<?php 
if(isset($_POST['login'], $_POST['password'] ,$_POST['email'])){
	$errors = array();
	if(empty($_POST['login']) || mb_strlen($_POST['login']) < 3 || mb_strlen($_POST['login']) >16){
		$errors['login'] = 'Вы не ввели логин (от 3 до 16 символов)';
	}
	if(empty($_POST['password']) || mb_strlen($_POST['password']) < 3 || mb_strlen($_POST['password']) >16){
		$errors['password'] = 'Вы не ввели пароль (от 3 до 16 символов)';
	}
	if(empty($_POST['email']) || !filter_var($_POST['email'],FILTER_VALIDATE_EMAIL)){
		$errors['email'] = 'Вы не ввели email (на него прийдет письмо с активацией)';
	}
	if(empty($_POST['age'])){
		$errors['age'] = 'Вы не ввели ваш возраст';
	}
	if(!count($errors)){
		$res = q("
							SELECT `id` FROM `users`
							WHERE `login` = '".m_res($_POST['login'])."'
							LIMIT 1
						");
						
		if(mysqli_num_rows($res)){
			$errors['login'] = 'Такой пользователь уже существует';
		}
		$res = q("
							SELECT `id` FROM `users`
							WHERE `email` = '".m_res($_POST['email'])."'
							LIMIT 1
						");
						
		if(mysqli_num_rows($res)){
			$errors['email'] = 'такой email  уже зарегистрирован';
		}
	}
	
	if(!count($errors)){
		q("
			INSERT INTO `users` SET
			`login`    = '".m_res($_POST['login'])."',
			`password` = '".myHash($_POST['password'])."',
			`email`    = '".m_res($_POST['email'])."',
			`age`      = '".intAll($_POST['age'])."',
			`date`     = NOW(),
			`hash`     = '".myHash($_POST['login'].$_POST['age'])."'
			");
		$_SESSION['reg'] = 'regOk';
		
		Mail::$to = $_POST['email'];
		Mail::$subject = 'Вы зарегистрировались на сайте';
	  Mail::$text = 'Ссылка для активации вашего аккаунта: '.Core::$DOMAIN.'/cab/activate?hash='
		.myHash($_POST['login'].$_POST['age']);
		Mail::send();	
		header("Location: /cab/registration");
		exit;
	}
	
}


/*

		$_SESSION['login']= htmlsc($_POST['login']);
		$_SESSION['password']= myHash($_POST['password']);
		$_SESSION['email']= htmlsc($_POST['email']);
		$_SESSION['key']= 'canEnter';


*/











