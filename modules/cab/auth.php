<?php 
if(isset($_POST['login'],$_POST['password']) && !empty($_POST['login'])  && !empty($_POST['password'])){
	$res = q("SELECT * 
						FROM `users`
							WHERE `login`    = '".m_res($_POST['login'])."' 
							AND `password` = '".myHash($_POST['password'])."'
							AND `active` = 1
							LIMIT 1
						");
	if(mysqli_num_rows($res)){
		$_SESSION['user'] = mysqli_fetch_assoc($res);
		q("
			UPDATE `users` 
			SET `hash` = '".myHash($_SESSION['user']['password'].$_SESSION['user']['id'])."'
		");
		$_SESSION['user']['hash'] = myHash($_SESSION['user']['password'].$_SESSION['user']['id']);
		if(isset($_POST['autoAuth'])){
			setcookie('id',$_SESSION['user']['id'],time()+3600*24*30,'/');
			setcookie('hash',$_SESSION['user']['hash'],time()+3600*24*30,'/');
		}
		$status = 'ok';
	}else{
		$error = 'Неверный логин или пароль';
	}
}
if(empty($_POST['login']) || empty($_POST['password'])){
	$error = 'Введите данные';
}

/*
"SELEСT * 
FROM `users`
WHERE `login`    = '".m_res($_POST['login'])."' 
AND `password` = '".myHash($_POST['password'])."'
AND `active` = 1
LIMIT 1
"
*/