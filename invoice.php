<!DOCTYPE html>
<html>
<?php
	session_start();
	ob_end_flush();
	if(!isset($_POST['orderSubmit']))
		header("Location: order.php");
?>
<script>
/* For Splitting Display After clicking Order
function addframe()
{
	document.getElementById('sometext').style.display="none";
	document.getElementById('mainorder').className="w3-sidenav w3-hide-small w3-quarter w3-animate-left left order";
}
*/
</script>
<!-- Header-->
<title>ABC Catering Services</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="w3.css">
<link rel="stylesheet" href="w3-theme-black.css">
<link rel="stylesheet" href="robotofont.css">
<link rel="stylesheet" href="font-awesome.min.css">
<link rel="stylesheet" href="home.css?ts=<?=time()?>&quot;"/>
<style>
html,body,h1,h2,h3,h4,h5,h6 {font-family: "Roboto", sans-serif}
.w3-sidenav a,.w3-sidenav h4{padding:12px;}
.w3-navbar a{padding-top:12px !important;padding-bottom:12px !important;}
</style>
<body>

<div class="w3-top w3-large header" style="z-index:10; height:100px;">
<h1>FOOD SERVICE SYSTEM</h1>
</div>
<!-- Navbar -->
<!-- Navbar -->
<ul class="w3-navbar w3-theme w3-top w3-left-align w3-large" style="z-index:4; top:100px;">
  <li class="w3-right w3-large w3-theme w3-hide-small" style="">
		<?php 
			if(!isset($_SESSION['username']))
				echo '<a href="loginpage.php" class="w3-hover-white">Login</a>';

			else
				echo '<a href="#"class="w3-hover-white"> Hello '.$_SESSION['name'].'!</a>';
		?>
  </li>
  <li><a href="home.php" class="w3-hover-white">Home</a></li>
  <li><a href="order.php" class="w3-theme-l1">Order</a></li>
</ul>

<center>
<div class="main" style="margin-top:150px; position:relative;">

	<div class="w3-row w3-padding-64">
		<div class=" w3-container order" style="position:relative !important" id="mainorder">
		<form class="confirm" name="confirmOrder" method="POST" action="orderSuccess.php"> 
			<h1 class="w3-text-teal">Confirm Order</h1>
			<b> Order </b>
			<ul>
			<?php
				$bld=$_POST['bld'];
				foreach($bld as $value)
				{
					echo "<li> <span> $value </span></li>";
					echo "<input type='hidden' name='bld[]' value='$value'>";
				}
			?>
			</ul>
			<b> Date </b>
			<?php
				echo "<p> $_POST[date]";
			?>
			<input type="hidden" name="date" value="<?php echo $_POST['date'];?>">
			<br><br><br>
			<b> Special Requirements </b>
			<br><br>
			<?php
				if(empty($_POST['spclReq']))
					echo "None";
				else
					echo " $_POST[spclReq]";
			?>
			<input type="hidden" name="spclReq" value="<?php echo $_POST['spclReq'];?>">
			<br><br>

			<button type="submit" name="confirmOrderSubmit" style="padding:0px 50px; font-size:120%;">Proceed</button>
			<br><br>
		</form>
		</div>
	</div>
</div>
</center>
</body>
<?php 
	if(isset($_POST['confirmOrderSubmit']))
	{
		define('DB_HOST', 'localhost:81'); 
		define('DB_NAME', 'foodservice'); 
		define('DB_USER','root'); 
		define('DB_PASSWORD',''); 
		
		$con=mysql_connect(DB_HOST,DB_USER,DB_PASSWORD) or die("Failed to connect to MySQL: " . mysql_error()); 
		$db=mysql_select_db(DB_NAME,$con) or die("Failed to connect to MySQL: " . mysql_error()); 

		$bld=$_POST['bld'];
		foreach($bld as $value)
		{	echo $value;
			mysql_query("insert into orders(date,customer_username,meal_type,spr) values('$_POST[date]','$_SESSION[username]','$value','$_POST[spclReq]');")or die(mysql_error());	
		}
		header("Location: invoice.php");
		exit();
	}
?>
</html>