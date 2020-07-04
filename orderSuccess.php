<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Order Status</title>
<link rel="stylesheet" href="style/style1.css" type="text/css" media="screen" />
</head>
<body>
<div align="center" id="mainWrapper">
  <?php include_once("template_header.php");?>
  <div id="pageContent">
    <div style="margin:24px; text-align:left;">
    <br />
    <table>
<center>
<div class="main" style="margin-top:150px; position:relative;">
	<div class="w3-row w3-padding-64">
		<div class=" w3-container order" style="position:relative !important" id="mainorder">
			<h1 class="w3-text-teal">Order Received!</h1>
			<p> Your order will be delivered! </p>
      <p> Mail has been sent to your email-id! </p><br/>
			<button type="submit" onclick="location.href='list_all_products.php'" style="padding:20px 50px; font-size:120%;">View more products</button><br/><br/>
			<button type="submit" onclick="location.href='index.php'" style="padding:20px 50px; font-size:120%;">Go to Home page</button>
			<br><br>

		</div>

	</div>
</div>
</center>
</div>
    </div>
   <br />
   </table>
  </div>
  <?php include_once("template_footer.php");?>
</div>
<!--
<?php

error_reporting(E_ALL ^ E_NOTICE ^ E_DEPRECATED ^ E_STRICT);

set_include_path("." . PATH_SEPARATOR . ($UserDir = dirname($_SERVER['DOCUMENT_ROOT'])) . "/pear/php" . PATH_SEPARATOR . get_include_path());
require_once "Mail.php";

$host = "ssl://smtp.gmail.com";
$username = "chakshujindal247@gmail.com";
$password = "myshaggy";
$port = "465";
$to = "chakshujindal247@gmail.com";
$email_from = "chakshujindal247@gmail.com";
$email_subject = "Subject Line Here: " ;
$email_body = "whatever you like" ;
$email_address = "chakshujindal247@gmail.com";

$headers = array ('From' => $email_from, 'To' => $to, 'Subject' => $email_subject, 'Reply-To' => $email_address);
$smtp = Mail::factory('smtp', array ('host' => $host, 'port' => $port, 'auth' => true, 'username' => $username, 'password' => $password));
$mail = $smtp->send($to, $headers, $email_body);


if (PEAR::isError($mail)) {
echo("<p>" . $mail->getMessage() . "</p>");
} else {
echo("<p>Message successfully sent!</p>");
}
?>
-->
</body>
</html>