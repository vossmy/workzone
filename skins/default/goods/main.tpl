<div id="contentText">
  <div id="contentTex3" class="width900"><p>Тестовая страница2</p>
    <div class="classpadding">
      <form method="post" action="">
      	<select size="1" name="category">
        	<option selected="" disabled="">Выберите категорию</option>
        	<option  value="refrigerator">Холодильники</option>
          <option value="tv">Телевизоры</option>
        </select>
        <input type="submit" name="select" value="Выбрать">
      </form>
      <p><?php if(isset($_SESSION['info'])){echo $_SESSION['info']; unset($_SESSION['info']); }?></p>
      <?php if(isset($_SESSION['category'])){ echo 'Категория :'.$_SESSION['category']; if($access == 2){echo '<br><a id="grey" href="/goods/add/">Добавить товар</a>';}} ?>
    	<form action="" method="post">
      <?php if($content){ ?>
      	<table>
          <?php while($row = mysqli_fetch_assoc($content)) { ?>
            <tr>
              <td class="fortdCatalog"><?php echo htmlsc($row['name']); ?></td>
              <td class="fortdCatalog">Цена : <?php echo htmlsc($row['price']); ?></td>
              <td class="fortdCatalog">ID : <?php echo $row['id'] ?></td>
              <?php if(isset($access) & $access == 2 ){	 ?>
              <td class="fortdCatalog"><a href="/goods/edit?id=<?php echo $row['id'] ?>">Редактировать</a></td>
              <td class="fortdCatalog"><a href="/goods/main?action=delete&id=<?php echo $row['id'] ?>">Удалить</a></td>
            	<td class="fortdCatalog"><input type="checkbox" name="ids[]" value="<?php echo (int)$row['id']?>"></td>
              <?php }else {echo  '<td class="fortdCatalog">доступ закрыт</td>';} ?>
            </tr>
          <?php } ?>
    		</table>
        <?php if(isset($access) &$access == 2 ){	 ?>
        <br><input type="submit" name="deleteAll" value="Удалить выбраное">
        <?php } ?>
      </form>
      <?php }else { ?>
      	<p><?php echo @$_SESSION['info']; ?></p>
      <?php unset($_SESSION['info']);} ?>
    </div>
  </div>
</div>
    






















