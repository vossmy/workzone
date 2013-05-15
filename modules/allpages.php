<?php
if(isset($_SESSION['user'])){
	$res = q("SELECT * FROM `users` 
								WHERE `id` = ".(int)$_SESSION['user']['id']."
								 AND `hash` = '".m_res($_SESSION['user']['hash'])."'
 								LIMIT 1
								");
	if(mysqli_num_rows($res)){
		$_SESSION['user'] = mysqli_fetch_assoc($res);
	}
}elseif(isset($_COOCKIE['id'],$_COOCKIE['hash'])){
	$id = $_COOCKIE['id'];
	$hash = $_COOCKIE['hash'];
}

if(isset($id, $hash)){
	$res = q("SELECT * FROM `users` 
								WHERE `id` = ".(int)$id."
								 AND `hash` = '".m_res($hash)."'
 								LIMIT 1
								");
	if(mysqli_num_rows($res)){
		$_SESSION['user'] = mysqli_fetch_assoc($res);
	}else{
		setcookie('id','',time()-3600*24*30,'/');
		setcookie('hash','',time()-3600*24*30,'/');
	}
}


if(isset($_SESSION['user']['accesslevel'], $_SESSION['user']['active'])){
	if(($_SESSION['user']['accesslevel'] == 1) && ($_SESSION['user']['active'] == 1)){
		$access = 1;
	}elseif(($_SESSION['user']['accesslevel'] == 2) && ($_SESSION['user']['active'] == 1)){
		$access = 2;
	}elseif(($_SESSION['user']['active'] == 0) || ($_SESSION['user']['accesslevel'] == 0) ){
		$access = 0;
	}elseif($_SESSION['user']['accesslevel'] == 5){
		$access = 5;
	}else {$access = 0;}
}else {$access = 0;}



















/*

if(isset($_SESSION['user'])){
	$res = q("SELECT * FROM `users` 
								WHERE `id` = ".(int)$_SESSION['user']['id']."
								 AND `hash` = '".m_res($_SESSION['user']['hash'])."'
 								LIMIT 1
								");
	if(mysqli_num_rows($res)){
		$_SESSION['user'] = mysqli_fetch_assoc($res);
	}
}

if(isset($_COOCKIE['id'],$_COOCKIE['hash'])){
	$id = $_COOCKIE['id'];
	$hash = $_COOCKIE['hash'];
}

if(isset($id, $hash)){
	$res = q("SELECT * FROM `users` 
								WHERE `id` = ".(int)$id."
								 AND `hash` = '".m_res($hash)."'
 								LIMIT 1
								");
	if(mysqli_num_rows($res)){
		$_SESSION['user'] = mysqli_fetch_assoc($res);
	}else{
		setcookie('id','',time()-3600*24*30,'/');
		setcookie('hash','',time()-3600*24*30,'/');
	}
}

*/































