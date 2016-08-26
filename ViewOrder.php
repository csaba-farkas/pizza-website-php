<!DOCTYPE html>
<head>
    <meta charset = "utf-8">
        <title>View Order</title>

</head>
<body>
<?php

  $fields = array('order_id', 'student', 'firstname', 'lastname', 'email', 'address', 'phone', 'price', 'size', 'anchovies', 'pineapple', 'pepperoni', 'peppers', 'olives', 'onion');

  $order = array();

  foreach($fields as $field) {
    $order[$field] = "";
  }

  if($_POST['submit']) {


    //Create unique id
    $order['order_id'] = uniqid();

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


    //'order_id', 'student', 'firstname', 'lastname', 'email', 'address', 'phone', 'price', 'size', 'anchovies', 'pineapple', 'pepperoni', 'peppers', 'olives', 'onion'
    //Insert data into database
    $SQLQuery = "INSERT INTO orders (order_id, student, firstname, lastname, email, address, phone, price, size, anchovies, pineapple, pepperoni, peppers, olives, onion)
    VALUES ('$order_id', '$student', '$firstname', '$lastname', '$email', '$address', '$phone', $price, '$size', '$anchovies', '$pineapple', '$pepperoni', '$peppers', '$olives', '$onion')";

    $SQLQueryResult = mysqli_query($conn, $SQLQuery);

    if(!$SQLQueryResult) {
      echo "<p>There was an error saving the record to the database.<br />\n" .
           "The error was " . (mysqli_error($conn)) .
           "The query was " . $SQLQuery . "</p>\n";
    }

    //Display data
    include('Receipt.html.php');
  } else {
    echo "something is wrong";
  }

?>
</body>
</html>
