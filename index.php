<?php 
error_reporting(E_ALL);
ini_set('display_errors', '1');
?>
<?php 
include "storescripts/connect_to_mysql.php"; 
$dynamicList = "";
$sql = mysql_query("SELECT * FROM products ORDER BY date_added DESC LIMIT 5");
$productCount = mysql_num_rows($sql); 
if ($productCount > 0) {
	while($row = mysql_fetch_array($sql)){ 
             $id = $row["id"];
			 $product_name = $row["product_name"];
			 $price = $row["price"];
			 $date_added = strftime("%b %d, %Y", strtotime($row["date_added"]));
			 $dynamicList .= '<table width="100%" border="0" cellspacing="0" cellpadding="6">
        <tr>
          <td width="17%" valign="top"><a href="product.php?id=' . $id . '"><img style="border:#666 1px solid;" src="inventory_images/' . $id . '.jpg" alt="' . $product_name . '" width="77" height="102" border="1" /></a></td>
          <td width="83%" valign="top">' . $product_name . '<br />
            Rs ' . $price . '<br />
            <a href="product.php?id=' . $id . '">View Product Details</a></td>
        </tr>
      </table>';
    }
} else {
	$dynamicList = "We have no products listed in our store yet";
}
mysql_close();
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Store Home Page</title>
<link rel="stylesheet" href="style/style1.css" type="text/css" media="screen" />
</head>
<body>
<div align="center" id="mainWrapper">
  <?php include_once("template_header.php");
  	if (isset($_GET['success'])){
			echo "Successful Registration.";
	}
  	if (isset($_GET['userloginsuccess'])){
			echo "Successful Login.";
	}
	if (isset($_GET['resetsuccess'])){
			echo "Password Successfully Changed.";
	}
  ?>
  <div id="pageContent">
  <table width="100%" border="0" cellspacing="0" cellpadding="10">
  <tr>
    <td width="32%" valign="top"><h3>About the ReadyKart</h3>
        <p style="font-size:100%;">We, ReadyKart, established in 2017 are pioneer in what we offer. You can place your order from anywhere, your office, your home or even while when you are on the go.
    ReadyKart provides you with different options.
    <br><br>
    We love our customers. We value them. We love our job in helping others and sustaining lives. That's why we here at ReadyKart say "Sustaining lives, always".
    </p></td>
    <td width="35%" valign="top"><h3>Latest Designer Fashions</h3>
      <p><?php echo $dynamicList; ?><br />
        </p>
      <p><br />
      </p></td>
    <?php
error_reporting(E_ERROR | E_WARNING | E_PARSE);

session_start();
if(!isset($_SESSION['user']))
{
 ?>
     <td width="33%" valign="top">
     <h3>
     <a href="http://localhost:81/itc1/user_registration.php">New User? Register Here!!</a>
     </h3>
      <p>Already an ReadyKart Customer? Well come <a href="http://localhost:81/itc1/user_login.php">login</a> and shop from our exclusive products.</p>
<a href="http://localhost:81/itc1/user_login.php" class="myButton">Login Now</a>
      <p></p></td>
<?php } ?> 
  </tr>
</table>
  </div>
  <?php include_once("template_footer.php");?>
</div>
</body>
</html>