<?php 
session_unset();
session_destroy();
if(count($_COOKIE)){
	foreach($_COOKIE as $k=>$v){
		setcookie($k,'',time()-3600*24,'/');
	}
}

header("Location: /static/main");
exit();