<div id="contentText">
  <?php if(!isset($_SESSION['reg'])){ ?>
    <div id="contentTex3" class="width900"><span class="form"> Форма для регистрации
      <br>
      <form method="post" action="">
        <table>
          <tr>
            <td>Login </td>
            <td><input type="text" name="login" placeholder="login" value="<?php echo @htmlsc($_POST['login']); ?>"></td>
            <td><span class="tips" ><?php echo @$errors['login']; ?></span></td>
          </tr>
          <tr>
            <td>Password </td>
            <td><input type="password" name="password" placeholder="password" value=""></td>
            <td><span class="tips" ><?php echo @$errors['password']; ?></span></td>
          </tr>
          <tr>
            <td>Email </td>
            <td><input type="text" name="email" placeholder="email" value="<?php echo @htmlsc($_POST['email']); ?>"></td>
            <td><span class="tips" ><?php echo @$errors['email']; ?></span></td>
          </tr>
          <tr>
            <td>Возраст </td>
            <td><input type="text" name="age" placeholder="age" value="<?php echo @htmlsc($_POST['age']); ?>"></td>
            <td><span class="tips" ><?php echo @$errors['age']; ?></span></td>
          </tr>
          <tr>
            <td rowspan="2"><input type="submit" name="submitEmail" value="Зарегистрироватся"> </td>
          </tr>
         </table>
      </form>
      </span>
    </div>
	<?php }else{ unset($_SESSION['reg']); ?>
  	<div>
    	<p>Вы успешно зарегистрированы. Активируйте аккаунт через email </p>
    </div>
  <?php }?>
</div>
    






















