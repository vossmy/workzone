<?php 
class Mail{
	static $subject = 'Тема письма';
	static $to = 'Кому';
	static $from = 'От кого';
	static $text = 'тест письма';
	static $headers = '';
	
	static function send(){
		self::$subject = '=?utf-8?b?'.base64_encode(self::$subject).'?=';
		self::$headers = "Content-type: text/html; charset=\"utf-8\"\r\n";
		
		self::$headers = "From: ".self::$from."\r\n";
		self::$headers = "MIME-Version: 1.0\r\n";
		self::$headers = "Date: ".date('D, d M Y h:i:s O')."\r\n";
		self::$headers = "Precendence: bulk\r\n";
		
		return mail(self::$to, self::$subject, self::$text, self::$headers);
	}
	
	static function testSend(){
			if(mail(self::$to,'English words','English words')){
			  echo 'Письмо отправлено';
			}else {
				echo 'Письмо не отправлено';
			}
			exit();
	}
	
}

