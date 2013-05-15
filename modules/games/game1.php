<?php 
if(!isset($_SESSION['health1']) || !empty($_POST['submit2'])){
	$_SESSION['health1'] =10;
	$_SESSION['health2'] =10;
}

if(isset($_POST['submit1'])){
	while(($_SESSION['health1']> 0) && ($_SESSION['health2']> 0)){
		if(((int)$_POST['hit1'] <= 3) && ((int)$_POST['hit1'] >= 1)){
			if($_POST['hit1'] == rand(1,3)){
				$hit = rand(1,4);
				$_SESSION['health1']-=$hit;
				$cue = 'Вам нанесли '.$hit.'демага ';
			}else{
				$hit = rand(1,4);
				$_SESSION['health2']-=$hit;
				$cue =  'Вы нанесли '.$hit.'демага ';
			}
		}else{$cue ='Введите число от 1 до 3 и нажмите Ударить';}
		break;
	}
}
if($_SESSION['health1']<= 0){$cue2 = 'компьютер выиграл';}
elseif($_SESSION['health2']<= 0){$cue2 = 'Вы  выиграли';}


    






















