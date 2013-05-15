<?php 

function wtf($data, $stop = false){
	echo '<pre>'; 
	echo print_r($data);
	echo '</pre>';
	if(!$stop){
		exit();
	}
}

function q($query){// Обработка query запроса
	global $link;
	$res = mysqli_query($link,$query);
	if(!$res){
		$info = debug_backtrace();
		$error = @date("Y-m-d H:i:s").' QUERY: <br>'
					.'FILE:'.$info[0]['file'].
					'<br> LINE:'.$info[0]['line'].'<br> '.$query.'<br> '
					.mysqli_error($link).'<br> END________________';
		file_put_contents('./logs/mysql.tpl',strip_tags($error)."\n\n",FILE_APPEND);
		$res = false;
		$_SESSION['info'] = 'Товара не существует';
	}
	return $res;
}

function trimALL($data){ // trim
	if(!is_array($data)){
		$data = trim($data);
	}else{
		$data = array_map('trimALL',$data);
	}
	return $data;
}

function intALL($data){ // to int
	if(!is_array($data)){
		$data = (int)$data;
	}else{
		$data = array_map('intALL',$data);
	}
	return $data;
}

function htmlsc($data){ // to htmlspecialchars
	if(!is_array($data)){
		$data = htmlspecialchars($data);
	}else{
		$data = array_map('htmlsc',$data);
	}
	return $data;
}

function m_res($data){// mysqli_real_escape_string
	global $link;
	$res = mysqli_real_escape_string($link,$data);
	if(!$res){
		$info = debug_backtrace();
		$error = @date("Y-m-d H:i:s").' REAL_ESCAPE: <br>'
					.'FILE:'.$info[0]['file'].
					'<br> LINE:'.$info[0]['line'].' '.$query.'<br> '
					.mysqli_error($link).'<br> END________________';
		file_put_contents('./logs/mysql.tpl',strip_tags($error)."\n\n",FILE_APPEND);
		$res = false;
	}
	return $res;
}

function __autoload($class){
	include './libs/class_'.$class.'.php';
}

function myHash($var){
	$salt ='hash';
	$salt2 ='hsah';
	$var = crypt(md5($var.$salt),$salt2);
	
	return $var	;
}


	
		
		
	
















