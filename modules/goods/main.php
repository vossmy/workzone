<?php 

if(!isset($_POST['category'])){
	$_POST['category'] = 'refrigerator';
	if(isset($_SESSION['select'])){
		$_POST['category'] = $_SESSION['select'];
	}
}

if((isset($_POST['category']) && $_POST['category'] == 'refrigerator')){
	$_SESSION['category'] = 'Холодильники';
	$_SESSION['select'] = 'refrigerator';
	$content = q("SELECT * FROM `goods` WHERE `category`='".m_res($_SESSION['select'])."' ORDER BY `id` DESC");

}elseif((isset($_POST['category']) && $_POST['category'] == 'tv')){
	$_SESSION['category'] = 'Телевизоры';
	$_SESSION['select'] = 'tv';
	$content = q("SELECT * FROM `goods` WHERE `category`='".m_res($_SESSION['select'])."' ORDER BY `id` DESC");
	
}
if($access == 2){
	if(isset($_GET['id']) && $_GET['action'] == 'delete'){
		q("DELETE FROM `goods` 
			WHERE `category` = '".m_res($_SESSION['select'])."' AND `id` = ".(int)$_GET['id']
			);
		$_SESSION['info'] = 'Товар удален  из '.htmlsc($_SESSION['select']);
		header("location: index.php?page=main&modules=testing2");
		exit();
	}
	if(isset($_POST['deleteAll']) ){
		$ids = implode(',',$_POST['ids']);
		q("DELETE FROM `goods` 
			WHERE `category` = '".m_res($_SESSION['select'])."' AND  `id` IN (".m_res($ids).")");
		$_SESSION['info'] = 'Товары удалены';
		header("Location: index.php?page=main&modules=testing2");
		exit();
	}
}


mysqli_close($link);



















