<html>
<head>
	<meta charset = "utf-8">
	<title>Update Order</title>
</head>

<body>

	<?php
		if(isset($_GET['order_id'])) {

			$order_id = $_GET['order_id'];

			//Include database connection
			include('inc_DBConnect.php');

			//Get record from database where order id = $_GET['order_id']
			$SQLQuery = "SELECT * FROM orders WHERE order_id='$order_id' LIMIT 1";
			$queryResult = mysqli_query($conn, $SQLQuery);
			if(!$queryResult) {
				echo "<h1>Oder with $order_id doesn't exist.</h1>";
				die();
			}

			$order = mysqli_fetch_assoc($queryResult);
			?>
			<!-- Create a new form populated with retreived order data. -->
			<form  id="pizza-form" action="UpdateOrder.php" name="orderPizza" method="post" >
				<h3>What Size of Pizza Would You Like? </h3>

					Small
					<input id="small" type="radio" name="pizzaSize" value="small" onChange="redraw()" <?php

							if($order['size'] === "small") {
								echo 'checked';
							}

					?>/>
					Medium
					<input id="medium" type="radio" name="pizzaSize" value="medium" onChange="redraw()" <?php

							if($order['size'] === "medium") {
								echo 'checked';
							}

					?>/>
					Large
					<input id="large" type="radio" name="pizzaSize" value="large" onChange="redraw()" <?php

							if($order['size'] === "large") {
								echo 'checked';
							}
					?>/>

				<h3>Add Extra Toppings</h3>

					Anchovies
				 <input id="anchovies" type="checkbox" name="toppings[]" value="Anchovies" onChange="redraw()" <?php

						if($order['anchovies'] === 'Y') {
								echo 'checked';
						}
					?>/>

					Pineapple
				<input id="pineapple" type="checkbox" name="toppings[]" value="Pineapple" onChange="redraw()" <?php

					if($order['pineapple'] === 'Y') {
							 echo 'checked';
					}
				 ?>/>

					Pepperoni
				 <input id="pepperoni" type="checkbox" name="toppings[]" value="Pepperoni" onChange="redraw()" <?php

						if($order['pepperoni'] === 'Y') {
							echo 'checked';
						}
					?>/>

					Olives
					<input id="olives" type="checkbox" name="toppings[]" value="Olives" onChange="redraw()" <?php
						if($order['olives'] === 'Y') {
								 echo 'checked';
						}
					 ?>/>

					Onion
					<input id="onion" type="checkbox" name="toppings[]" value="Onion" onChange="redraw()" <?php
						if($order['onion'] === 'Y') {
								 echo 'checked';
						}
					 ?>/>

					Peppers
					<input id="peppers" type="checkbox" name="toppings[]" value="Peppers" onChange="redraw()" <?php
						if($order['peppers'] === 'Y') {
								 echo 'checked';
						}
					 ?>/>



			 <h3>Total Price is: €<span id="pricetext"><?php
					if(isset($order)) {
						echo $order['price'];
					}
				?></span></h3>
		 <input name="totalPrice" id="totalPrice" value = <?= $order['price'] ?> type="hidden" />

					<h3>Enter your  details</h3>

					Order ID:

						<input name="order_id" id="orderId" type="text" value="<?= $order['order_id'] ?>" readonly="readonly" />
						<br />
						<br />
					First Name:
					<input name="firstName" id="cname" type="text" <?php
							$firstname = $order['firstname'];
							echo 'value = "'.$firstname.'"';

					 ?> required />
					<br/>
					<br/>
			Last Name:
					<input name="lastName" id="cname" type="text" <?php

							$lastname = $order['lastname'];
							echo 'value = "'.$lastname.'"';

					 ?> required />
					<br/>
					<br/>
					Address:
					<textarea name="address" id = "caddress" type="text"rows="5" cols="30" required><?php

							$address = $order['address'];
							echo htmlspecialchars($address);

					 ?> </textarea>
					<br/>
					<br/>
					Email Address:
					<input name="emailAddress" type="email" <?php

							$email = $order['email'];
							echo 'value = "'.$email.'"';

					 ?> required />
					<br/>
					<br/>

					<br/>
					Phone Number:
					<input name="phoneNo" id="phoneNumber" type="text" <?php

							$phone = $order['phone'];
							echo 'value = "'.$phone.'"';

					 ?> required/>
			 <br/>
					 <br/>
			Tick here if you are student:
					<input type="checkbox" id="studentdiscount" name="student" onChange="redraw()" <?php
						if($order['student'] === 'Y') {
								 echo 'checked';
						}
					 ?>/>


				<br/>

				<button type="submit" name = "submit" value="submit">Update Order</button>

			</form>

			<?php
	  } else if($_POST['submit']) {
			//Create unique id
	    $order['order_id'] = $_POST['order_id'];

	    //Set 'student' to 'No' by default
	    //If 'student' is in $_POST, then student=yes
	    $order['student'] = 'N';
	    if(isset($_POST['student'])) {
	      $order['student'] = 'Y';
	    }

	    $order['size'] = $_POST['pizzaSize'];

	    //Set all toppings to 'No' by default
	    $order['anchovies'] = 'N';
	    $order['pineapple'] = 'N';
	    $order['pepperoni'] = 'N';
	    $order['peppers'] = 'N';
	    $order['olives'] = 'N';
	    $order['onion'] = 'N';

	    //If a topping is selected by the user, set its value to 'Yes'
	    foreach($_POST['toppings'] as $key=>$value) {
	      if($value === 'Anchovies') $order['anchovies'] = 'Y';
	      else if($value === 'Pineapple') $order['pineapple'] = 'Y';
	      else if($value === 'Pepperoni') $order['pepperoni'] = 'Y';
	      else if($value === 'Olives') $order['olives'] = 'Y';
	      else if($value === 'Onion') $order['onion'] = 'Y';
	      else if($value === 'Peppers') $order['peppers'] = 'Y';
	    }

	    //All the form elements are set to 'required' in the html file so I assume that they
	    //are all included in the $_POST variable.

	    //Get total price
	    $order['price'] = $_POST['totalPrice'];

	    //Get first name
	    $order['firstname'] = trim($_POST['firstName']);

	    //Get last name
	    $order['lastname'] = trim($_POST['lastName']);

	    //Get address
	    $order['address'] = trim($_POST['address']);

	    //Get email address
	    $order['email'] = trim($_POST['emailAddress']);

	    //Get phone number
	    $order['phone'] = trim($_POST['phoneNo']);

	    //Connect to the database
	    include('inc_DBConnect.php');

	    //Sanitise all data before inserting into the database. Yes, even values coming from checkboxes
	    //and radiobuttons should be sanitized, because an attacker can create his own post request with
	    //a software such as Postman
	    $order_id = mysqli_real_escape_string($conn, $order['order_id']);
	    $student = mysqli_real_escape_string($conn, $order['student']);
	    $firstname = mysqli_real_escape_string($conn, $order['firstname']);
	    $lastname = mysqli_real_escape_string($conn, $order['lastname']);
	    $email = mysqli_real_escape_string($conn, $order['email']);
	    $address = mysqli_real_escape_string($conn, $order['address']);
	    $phone = mysqli_real_escape_string($conn, $order['phone']);
	    $price = mysqli_real_escape_string($conn, $order['price']);
	    $size = mysqli_real_escape_string($conn, $order['size']);
	    $anchovies = mysqli_real_escape_string($conn, $order['anchovies']);
	    $pineapple = mysqli_real_escape_string($conn, $order['pineapple']);
	    $pepperoni = mysqli_real_escape_string($conn, $order['pepperoni']);
	    $peppers = mysqli_real_escape_string($conn, $order['peppers']);
	    $olives = mysqli_real_escape_string($conn, $order['olives']);
	    $onion = mysqli_real_escape_string($conn, $order['onion']);

	    //Update record in database with new fields
	    $SQLQuery = "UPDATE orders
									SET student = '$student',
											firstname = '$firstname',
											lastname = '$lastname',
											email = '$email',
											address = '$address',
											phone = '$phone',
											price = $price,
											size = '$size',
											anchovies = '$anchovies',
											pineapple = '$pineapple',
											pepperoni = '$pepperoni',
											peppers = '$peppers',
											olives = '$olives',
											onion = '$onion'
									WHERE order_id = '$order_id'";

			//Execute query
	    $SQLQueryResult = mysqli_query($conn, $SQLQuery);

			//If there was an error, display error
	    if(!$SQLQueryResult) {
	      echo "<p>There was an error updating the record in the database.<br />\n" .
	           "The error was " . (mysqli_error($conn)) .
	           "The query was " . $SQLQuery . "</p>\n";
	    }

	    //Display updated data in receipt
	    include('Receipt.html.php');
		}
	 ?>

</body>
</html>
