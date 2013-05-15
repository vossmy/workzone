<?php 
if($access == 2){
	if(isset($_POST['add'], $_POST['name'], $_POST['code'], $_POST['description'], $_POST['text'], $_POST['price'], $_POST['ava'])){
		
		trimALL($_POST);
		
		$errors = array ();
		if(empty($_POST['name'])){
			$errors['name'] = 'введите название товара';
		}
		if(empty($_POST['code']) || !(int)$_POST['code']){ //если перед числом будет какойто символ выведет ошибку (например №)
			$errors['code'] = 'введите код товара';
		}
		if(empty($_POST['description'])){
			$errors['description'] = 'зполните поле';
		}
		if(empty($_POST['text'])){
			$errors['text'] = 'заполните поле';
		}
		if(empty($_POST['price']) || !(int)$_POST['price']){
			$errors['price'] = 'введите цену товара';
		}
		if(empty($_POST['ava']) || !(int)$_POST['price']){
			$errors['ava'] = 'укажите наявность товара';
		}
		
		if(!count($errors)){
			q("INSERT INTO `goods` SET
				`name`        = '".m_res($_POST['name'])."',
				`code`        = '".m_res(intALL(($_POST['code'])))."',
				`description` = '".m_res($_POST['description'])."',
				`text`        = '".m_res($_POST['text'])."',
				`price`       = '".m_res(intALL(($_POST['price'])))."',
				`ava`         = '".m_res(intALL(($_POST['ava'])))."',
				`category`    = '".m_res($_SESSION['select'])."',
				`date` = NOW()
			");
			$_SESSION['info'] = 'Товар добавлен в '.htmlsc($_SESSION['select']);
			header("Location: index.php?page=main&modules=testing2");
			exit();
		}
	}
	
	mysqli_close($link);
}else{
	header("Location: /errors/noacc");
	exit();
}