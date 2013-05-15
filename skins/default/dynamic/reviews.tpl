<div class="divForm">
	<?php if(!isset($_SESSION['send'])){ ?>
    <form action="" method="post">
      <table>
        <tr>
          <td><p>Ваше имя * :</p></td>
          <td colspan="3"><input type="text" name="name" value="<?php echo @htmlsc($_POST['name']); ?>" ></td>
          <td><p><?php echo @$errors['name']; ?></p></td>
        </tr>
        <tr>
          <td><p>Ваш email * :</p></td>
          <td colspan="3"><input type="text" name="email" value="<?php echo @htmlsc($_POST['email']); ?>"></td>
          <td><p><?php echo @$errors['email']; ?></p></td>
        </tr>
        <tr>
          <td><p>Введите комментарий * :</p></td>
          <td><p><?php echo @$errors['comments']; ?></p></td>
        </tr>
        <tr>
          <td rowspan="3" colspan="3"><textarea cols="40" rows="4" name="comments" ></textarea></td>
        </tr>
      </table>
      <br><input type="submit" name="enterComments" value="сделать комментраий">
    </form>
  <?php } else { unset($_SESSION['send']) ?>
  	<div>
    	<p>Ваш комментарий добавлен</p>
    </div>
  <?php } ?>
</div>
