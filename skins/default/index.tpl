<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>ArBud</title>
<link rel="stylesheet" type="text/css" href="/skins/default/css/reset.css">
<link rel="stylesheet" type="text/css" href="/skins/default/css/style.css">
<script src="http://api-maps.yandex.ru/2.0/?load=package.full&lang=ru-RU" type="text/javascript"></script>
<script type="text/javascript" src="/skins/default/js/jquery.js"></script>
<?php if($_GET['page'] == 'map'){ echo '<script type="text/javascript" src="/skins/default/js/map.js"></script>';} ?>
<?php if($_GET['page'] == 'addPlace'){ echo '<script type="text/javascript" src="/skins/default/js/addPlace.js"></script>
																						<script type="text/javascript" src="/skins/default/js/bootstrap.min.js"></script>
																						<link rel="stylesheet" type="text/css" href="/skins/default/css/bootstrap.min.css">
';} ?>
</head>

<body>
	<div>
      <!--Head-->
      <div id="head">
      	<div class="head_l">
          <p id="date">Сегодня 
          <?php 
						$today = @date("d-m-Y");
          	echo $today;
          ?>
          </p>
        </div>
        <div class="head_r">
        	<ul>
          	<a href="http://osc4.template-help.com/joomla_28137/"><li>HOME</li></a>
            <a href="/dynamic/reviews"><li>REVIEWS</li></a>
            <a href="/goods/main"><li>GOODS</li></a>
          </ul>
        </div>
        <div class="clear"></div>
      </div>
      <!--Content-->
      <div>
      	<div id="menu1">
        	<div class="f_l" id="width800px">
          	<a id="munuFirst" href="/static/main">Home</a>
            <?php 
            switch($access){
              case 2: echo '<a class="menuOther" href="/static/admin">Admin</a>';
              case 1: echo '<a class="menuOther" href="/games/game1">Game</a><div class="divBorder"></div>';
            } ?>
           <?php 
             if(isset($_SESSION['user'])){
              echo ' <a class="menuOther" href="/cab/exit">Выход</a><div class="divBorder"></div>';
             }else{
             	echo '<a class="menuOther" href="/cab/auth">Вход</a><div class="divBorder"></div>
                    <a class="menuOther" href="/cab/registration">Регистрация</a><div class="divBorder"></div>';
             }
           ?>
         	</div>
         	<div class="f_r" id="divSoc">
            <a id="soc1" class="aSoc" href="/testing1/testing1" title="test1" ></a>
            <a id="soc2" class="aSoc" href="/map/map"></a>
            <a id="soc3" class="aSoc" href="/map/addPlace"></a>
            <a id="soc4" class="aSoc" href="#"></a>
            <a id="soc5" class="aSoc" href="#"></a>
          </div>
          <div class="clear"></div>
        </div>
        <!--include-->
        <?php include 'skins/'.Core::$SKIN.'/'.$_GET['modules'].'/'.$_GET['page'].'.tpl'; ?>
      </div>
      <div class="clear"></div>
      <!--Footer-->
      <div id="footer">
      	
      	<p>Powered by Vossmy
        <?php
					if( Core::$CREATED == @date('Y')){
						echo Core::$CREATED;
					}else{
						echo Core::$CREATED.' - '.@date('Y');
					}
        ?>
        </p>
      </div>
  </div>
</body>
</html>