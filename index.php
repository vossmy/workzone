<?php 
	error_reporting(-1);//отключил ошибки - date  в 22 и 72 строке вылетает
	header('Content-type:text/html; charset=utf-8 ');
	date_default_timezone_set('Europe/Kiev');
	session_start();
	
	//Конфиг сайта
	
	include_once 'config.php';
	include_once 'libs/default.php';
	include_once 'variables.php';
	
	$link = mysqli_connect(Core::$DB_LOCAL,Core::$DB_LOGIN,Core::$DB_PASS,Core::$DB_NAME);
	mysqli_set_charset($link,'utf8');
	include_once 'modules/allpages.php';
	
	
	//Роутер
	include 'modules/'.$_GET['modules'].'/'.$_GET['page'].'.php';
	include 'skins/'.Core::$SKIN.'/index.tpl';

