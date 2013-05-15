<div id="contentText">
	<span class="form" ><h1><?php if(!isset($status)){  echo @$error; ?></h1></span>
  <form action="" method="post">
  	<span class="form" >Login </span><input type="text" name="login" placeholder="введите логин" ><br><br>
    <span class="form" >Password </span><input type="password" name="password" placeholder="введите пароль" ><br><br>
    <span class="form" ><label>Запомнить<input type="checkbox" name="autoAuth"></label></span><br><br>
    <input type="submit" value="Войти" >
  </form>
  <?php }else{ 
    echo 'Вы успешно вошли';
    echo '<br><a class="menuOther" href="/static/main">Home</a>';} ?>
</div>
