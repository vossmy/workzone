<div id="contentText">
  <?php if(!isset($_SESSION['reg'])){ ?>
    <div id="contentTex3" class="width900"><span class="form"> Форма для входа
      <br>
      <form method="post" action="">
        <table>
          <tr>
            <td>Login </td>
            <td><input type="text" name="login" placeholder="login" value="<?php echo @htmlsc($_POST['login']); ?>"></td>
            <td><?php echo @$errors['login']; ?></td>
          </tr>
          <tr>
            <td>Password </td>
            <td><input type="password" name="password" placeholder="password" value=""></td>
            <td><?php echo @$errors['password']; ?></td>
          </tr>
          <tr>
            <td>Email </td>
            <td><input type="text" name="email" placeholder="email" value="<?php echo @htmlsc($_POST['email']); ?>"></td>
            <td><?php echo @$errors['email']; ?></td>
          </tr>
          <tr>
            <td rowspan="2"><input type="submit" name="submitEmail" value="Войти"> </td>
          </tr>
         </table>
      </form>
      </span>
    </div>
	<?php }else{ unset($_SESSION['reg']); ?>
  	<div>
    	<p>Вы успешно зарегистрированы</p>
    </div>
  <?php }?>
</div>
    






















