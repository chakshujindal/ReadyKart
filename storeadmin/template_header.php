<div id="pageHeader"><table width="100%" border="0" cellspacing="0" cellpadding="12">
  <tr>
    <td width="32%"><a href="http://localhost:81/itc1/storeadmin/index.php"><img src="logo1.jpg" alt="Logo" width="200" height="50" border="0" /></a></td>
<?php
error_reporting(E_ERROR | E_WARNING | E_PARSE);

session_start();
if(!isset($_SESSION['user']))
{
 ?>


    <td width="68%" align="right"> <a href="http://localhost:81/itc1/user_login.php">Login</a> | <a href="http://localhost:81/itc1/forgetpass.php">Reset Your Password</a></td>
<?php } ?>
<?php
error_reporting(E_ERROR | E_WARNING | E_PARSE);

session_start();
if(isset($_SESSION['user']))
{
 ?>


    <td width="68%" align="right"> You are logged in as: <?php echo $_SESSION["user"] ?> <a href="http://localhost:81/itc1/logout.php">Logout</a> | <a href="http://localhost:81/itc1/cart.php">Your Cart</a> | <a href="http://localhost:81/itc1/user_profile.php">Edit profile</a></td>
<?php } ?>
	</tr>
  <tr>
    <td colspan="2"><a href="http://localhost:81/itc1/storeadmin/index.php">Home</a> &nbsp; &middot; &nbsp; <a href="http://localhost:81/itc1/list_all_products.php">Products</a> &nbsp; &middot; &nbsp; <a href="http://localhost:81/itc1/help.php">Help</a> &nbsp; &middot; &nbsp; <a href="http://localhost:81/itc1/contact.php">Contact</a></td>
    </tr>
  </table>
</div>