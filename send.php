<?php
$fio = $_POST['fio'];
$email = $_POST['email'];
$message = $_POST['message'];

$fio = htmlspecialchars($fio);
$email = htmlspecialchars($email);
$message = htmlspecialchars($message);

$fio = urldecode($fio);
$email = urldecode($email);
$message = urldecode($message);

$fio = trim($fio);
$email = trim($email);
$message = trim($message);

if (mail("maksim.abramov.2013@gmail.com", "Сообщение с сайта", "ФИО: ".$fio. "\nE-mail: ".$email . "\nСообщение: ".$message , "From: send@sladkoy.zzz.com.ua \r\n"))
	{
		echo "Сообщение успешно отправлено"; 
	} else { 
    	echo "При отправке сообщения возникли ошибки";
	}
?>