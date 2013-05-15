2013-05-03 14:59:58 QUERY: FILE:Z:\home\localhost\www\newStruct\modules\allpages.php LINE:10 SELECT * FROM `users` 
								WHERE `id` = 
								LIMIT 1
								 You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'LIMIT 1' at line 3 END________________

2013-05-03 16:18:59 QUERY: FILE:Z:\home\localhost\www\newStruct\modules\cab\activate.php LINE:7 UPDATE `users` SET
	`activate` = 1
	`accesslevel` = 1
	WHERE `hash` = 'hsIcM6rl7bQ26' 
	 You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '`accesslevel` = 1
	WHERE `hash` = 'hsIcM6rl7bQ26'' at line 3 END________________

2013-05-03 16:20:29 QUERY: FILE:Z:\home\localhost\www\newStruct\modules\cab\activate.php LINE:7 UPDATE `users` SET
	`activate` = 1 ,
	`accesslevel` = 1
	WHERE `hash` = 'hsIcM6rl7bQ26' 
	 Unknown column 'activate' in 'field list' END________________

2013-05-12 12:35:56 QUERY: FILE:Z:\home\test2.ru\www\modules\map\map.php LINE:4 SELECT * FROM `qiwiterminal`  END________________

2013-05-12 12:37:29 QUERY: FILE:Z:\home\test2.ru\www\modules\map\map.php LINE:3 SELECT * FROM `qiwiterminal` Table 'vossmydb.qiwiterminal' doesn't exist END________________

2013-05-12 20:43:38 QUERY: FILE:Z:\home\test2.ru\www\modules\libs\map.php LINE:9 ELECT * 
					FROM `mvideo_shops` 
					WHERE  `town` = 'Екатеринбург' 
					ORDER BY `address`  You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'ELECT * 
					FROM `mvideo_shops` 
					WHERE  `town` = 'Екатеринбу' at line 1 END________________

