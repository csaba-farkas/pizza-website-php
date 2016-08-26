<html>
	<head>
	<title>Delete Order</title>
	<meta charset ="utf-8" />
</head>

<body>

<?php
	if(isset($_GET['order_id'])) {
?>
	<!-- Use must confirm deletion. -->
	<h2>Are you sure you want to delete order with order id <?= $_GET['order_id'] ?> ?</h2>
	<form action = "DeleteOrder.php" method="post">
		<input type="hidden" name="order_id" value="<?= $_GET['order_id'] ?>" />
		Yes
		<input type="radio" name="confirmRadioGroup" value="yes" />
		No
		<input type="radio" name="confirmRadioGroup" value="no" checked/>

		<button type="submit" name = "submit" value="submit">Submit</button>
	</form>
<?php
	} else if(isset($_POST['submit'])) {
		if($_POST['confirmRadioGroup'] === 'yes') {

			$order_id = $_POST['order_id'];

			//Connect to the database
	    include('inc_DBConnect.php');

			//Create delete query
			$SQLQuery = "DELETE FROM orders WHERE order_id='$order_id'";

			//Execute query
			$SQLQueryResult = mysqli_query($conn, $SQLQuery);

			//If error -> display error
			if(!$SQLQueryResult) {
	      echo "<p>There was an error updating the record in the database.<br />\n" .
	           "The error was " . (mysqli_error($conn)) .
	           "The query was " . $SQLQuery . "</p>\n";
	    } else {
				//Else, display a message, and provide a link to navigate back to the main page
				?>
					<h2>Order deleted</h2>
					<a href="OrderPizza.html">Back to Homepage</a>
				<?php
			}
		}
	}
?>
</body>
</html>
