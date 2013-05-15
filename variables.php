<?php
if(isset($_GET['route'])){
	$temp = explode('/',$_GET['route']);
	foreach($temp as $k=>$v){
		if($k == 0){
			if(!empty($v))
				$_GET['modules'] = $v;
		}elseif($k == 1){
			if(!empty($v))
				$_GET['page'] = $v;
		}else{
				$_GET['key'.($k-1)] = $v;
		}
	}
	unset($_GET['route']);
}


//Роутер
$accessModules = array('games','static','errors','dynamic','testing1','goods','cab','errors','css','img','js','reset','style','temp','noacc','map','libs','town','modules','map.php','addplace');
if(!isset($_GET['modules'])){
	$_GET['modules'] = 'static';
}elseif(!in_array($_GET['modules'],$accessModules)){
		header("Location: /errors/404");
		exit();
}
if(!isset($_GET['page'])){
	$_GET['page'] = 'main';
}



