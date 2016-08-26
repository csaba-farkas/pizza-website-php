<!DOCTYPE html>
<head>
	<title>Pizza Order Receipt</title>
	<meta charset="utf-8">
	<style>
		td, th {
			padding: 5px;
		}
	</style>
</head>

<body>

	<h1>Receipt:</h1>
	<table border="1px">
		<thead>
			<tr>
				<th>ID</th>
				<th>Student</th>
				<th>First Name</th>
				<th>Last Name</th>
				<th>Email</th>
				<th>Address</th>
				<th>Phone</th>
				<th>Price</th>
				<th>Size</th>
				<th>Anchovies</th>
				<th>Pineapple</th>
				<th>Pepperoni</th>
				<th>Peppers</th>
				<th>Olives</th>
				<th>Onions</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td><?= $order['order_id'] ?></td>
				<td><?= $order['student'] ?></td>
				<td><?= $order['firstname'] ?></td>
				<td><?= $order['lastname'] ?></td>
				<td><?= $order['email'] ?></td>
				<td><?= $order['address'] ?></td>
				<td><?= $order['phone'] ?></td>
				<td><?= $order['price'] ?></td>
				<td><?= $order['size'] ?></td>
				<td><?= $order['anchovies'] ?></td>
				<td><?= $order['pineapple'] ?></td>
				<td><?= $order['pepperoni'] ?></td>
				<td><?= $order['peppers'] ?></td>
				<td><?= $order['olives'] ?></td>
				<td><?= $order['onion'] ?></td>
			</tr>
		</tbody>
	</table>
	<br />
	<a href="UpdateOrder.php?order_id=<?= $order['order_id'] ?>">Update Order</a>
	<br />
	<a href="DeleteOrder.php?order_id=<?= $order['order_id'] ?>">Delete Order</a>




</body>
</html>
