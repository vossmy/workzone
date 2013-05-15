<div id="contentText">
  <div id="contentTex3" class="width900"><p>Тестовая страница2</p>
    <div class="classpadding">
      <p>Страница добавления товара</p>
      <form method="post" action="">
      	<table>
        	<tr>
          	<td>Категория </td>
            <td><?php echo $_SESSION['category'];?></td>
            <td></td>
          </tr>
        	<tr>
          	<td>Название товара</td>
            <td><input name="name" value="<?php echo @htmlsc($_POST['name']); ?>"></td>
            <td><?php echo @$errors['name']; ?></td>
          </tr>
          <tr>
          	<td>Код товара</td>
            <td><input name="code" value="<?php echo @htmlsc($_POST['code']); ?>"></td>
            <td><?php echo @$errors['code']; ?></td>
          </tr>
          <tr>
          	<td>Краткое описание</td>
            <td><input name="description" value="<?php echo @htmlsc($_POST['description']) ?>"></td>
            <td><?php echo @$errors['description']; ?></td>
          </tr>
          <tr>
          	<td>Полное описание</td>
            <td></td>
            <td></td>
          </tr>
          <tr>
          	<td colspan="2"  class="forTD"><textarea name="text"><?php echo @htmlsc($_POST['text']); ?></textarea></td>
            <td><?php echo @$errors['text']; ?></td>
          </tr>
          <tr>
          	<td>Цена</td>
            <td><input name="price" value="<?php echo @htmlsc($_POST['price']); ?>"></td>
            <td><?php echo @$errors['price']; ?></td>
          </tr>
          <tr>
          	<td>Наличие (0 - если нету)</td>
            <td><input name="ava" value="<?php echo @htmlsc($_POST['ava']) ?>"></td>
            <td><?php echo @$errors['ava']; ?></td>
          </tr>
        </table>
        <input type="submit" name="add" value="Добавить товар">
      </form>
    </div>
  </div>
</div>
    






















