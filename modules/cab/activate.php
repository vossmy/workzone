<?php 
if(isset($_GET['hash'])){
	q("UPDATE `users` SET
	`active` = 1 ,
	`accesslevel` = 1
	WHERE `hash` = '".$_GET['hash']."' 
	");
	$info = 'Ваш аккаунт активирован';
}else{
	$info = 'Вы прошли по неверной ссылке';
}
