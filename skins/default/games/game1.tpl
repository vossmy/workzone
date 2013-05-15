<div id="contentText">
  <div id="contentTex3" class="width900">
    <span class="form">
      <h1>Битва алкоголиков</h1>
      <p><?php echo @$cue2 ?></p>
      <p><?php echo @$cue ?></p>
      <p>У компьютера <?PHP echo $_SESSION['health2']?> жизней</p>
      <p>У вас <?PHP echo $_SESSION['health1']?> жизней</p>
      <form method="post" action="">
        <input type="text" name="hit1" placeholder="угадайте число от 1 до 3" ><br><br>
        <input type="submit" name="submit1" value="Удар" >
      </form>
      <form method="post" action="">
      	<input type="submit" name="submit2" value="заново">
      </form>
    </span>
  </div>
</div>
    






















