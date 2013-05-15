<div id="contentText">
  <div id="contentTex3" class="width900"><p>Тестовая страница2</p>
    <div class="classpadding">
      <p>Страница редактирования товара</p>
      <form action="" method="post" >
      <table>
        	<tr>
          	<td>Категория </td>
            <td><?php echo $_SESSION['category'];?></td>
            <td></td>
          </tr>
        	<tr>
          	<td>Название товара</td>
            <td><input name="name" value="<?php if(isset($_POST['name'])){echo htmlsc($_POST['name']);}else{ echo htmlsc($row['name']); }?>"></td>
            <td><?php echo @$errors['name']; ?></td>
          </tr>
          <tr>
          	<td>Код товара</td>
            <td><input name="code" value="<?php if(isset($_POST['code'])){echo htmlsc($_POST['code']);}else{ echo htmlsc($row['code']); } ?>"></td>
            <td><?php echo @$errors['code']; ?></td>
          </tr>
          <tr>
          	<td>Краткое описание</td>
            <td><input name="description" value="<?php if(isset($_POST['description'])){echo htmlsc($_POST['description']);}else{ echo htmlsc($row['description']);} ?>"></td>
            <td><?php echo @$errors['description']; ?></td>
          </tr>
          <tr>
          	<td>Полное описание</td>
            <td></td>
            <td></td>
          </tr>
          <tr>
          	<td colspan="2"  class="forTD"><textarea name="text"><?php if(isset($_POST['text'])){echo htmlsc($_POST['text']);}else{ echo htmlsc($row['text']);} ?></textarea></td>
            <td><?php echo @$errors['text']; ?></td>
          </tr>
          <tr>
          	<td>Цена</td>
            <td><input name="price" value="<?php if(isset($_POST['price'])){echo htmlsc($_POST['price']);}else{ echo htmlsc($row['price']);} ?>"></td>
            <td><?php echo @$errors['price']; ?></td>
          </tr>
          <tr>
          	<td>Наличие (0 - если нету)</td>
            <td><input name="ava" value="<?php if(isset($_POST['ava'])){echo htmlsc($_POST['ava']);}else{ echo htmlsc($row['ava']);} ?>"></td>
            <td><?php echo @$errors['ava']; ?></td>
          </tr>
        </table>
        <input type="submit" name="edit" value="Сохранить изменения">
      </form>
    </div>
  </div>
</div>
    






















