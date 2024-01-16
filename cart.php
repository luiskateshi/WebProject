<?php

	session_start();
	require_once "./functions/database_functions.php";
	require_once "./functions/cart_functions.php";

	//book.php ben Post vleren e bookisbn
	if(isset($_POST['bookisbn'])){
		$book_isbn = $_POST['bookisbn'];
	}

	if(isset($book_isbn)){
		//Libri i pare qe po shtohet ne shporte (behet inicializimi i Session)
		if(!isset($_SESSION['cart'])){
			$_SESSION['cart'] = array();

			$_SESSION['total_items'] = 0;
			$_SESSION['total_price'] = '0.00';
		}


		if(!isset($_SESSION['cart'][$book_isbn])){
			$_SESSION['cart'][$book_isbn] = 1;
		} elseif(isset($_POST['cart'])){
            //key => value++
			$_SESSION['cart'][$book_isbn]++;
			unset($_POST);
		}
	}

	// if save change button is clicked , change the qty of each bookisbn
	if(isset($_POST['save_change'])){
		foreach($_SESSION['cart'] as $isbn =>$qty){
			if($_POST[$isbn] == '0'){
				unset($_SESSION['cart']["$isbn"]);
			} else {
				$_SESSION['cart']["$isbn"] = $_POST["$isbn"];
			}
		}
	}

	// print out header here
	$title = "Your shopping cart";
	require "./template/header.php";
?>
	<h4 class="fw-bolder text-center">Shporta ime</h4>
      <center>
          <hr class="bg-warning" style="width: 5em; height: 3px; opacity: 1; background: linear-gradient(to right, #8e44ad, #e74c3c);">

      </center>
<?php
	if(isset($_SESSION['cart']) && (array_count_values($_SESSION['cart']))){
		$_SESSION['total_price'] = total_price($_SESSION['cart']);
		$_SESSION['total_items'] = total_items($_SESSION['cart']);
?>
	<div class="card rounded-0 shadow">

		<div class="card-body">
			<div class="container-fluid">
				<form action="cart.php" method="post" id="cart-form">
					<table class="table">
						<tr>
							<th>Produkti</th>
							<th>Çmimi</th>
							<th>Sasia</th>
							<th>Shuma</th>
						</tr>
						<?php
							foreach($_SESSION['cart'] as $isbn => $qty){
								$conn = db_connect();
								$book = mysqli_fetch_assoc(getBookByIsbn($conn, $isbn));
						?>
						<tr>
							<td><?php echo $book['book_title'] . " nga " . $book['book_author']; ?></td>
							<td><?php echo "ALL " . $book['book_price']; ?></td>
							<td><input type="text" value="<?php echo $qty; ?>" size="2" name="<?php echo $isbn; ?>"></td>
							<td><?php echo "ALL " . $qty * $book['book_price']; ?></td>
						</tr>
						<?php } ?>
						<tr>
							<th>&nbsp;</th>
							<th>&nbsp;</th>
							<th><?php echo $_SESSION['total_items']; ?></th>
							<th><?php echo "ALL " . $_SESSION['total_price']; ?></th>
						</tr>
					</table>
				</form>
			</div>
		</div>
		<div class="card-footer text-end">
			<input type="submit" class="btn btn-primary rounded-1.5 border-0" style="background: #8e44ad;" name="save_change" value="Ruaj" form="cart-form">
			<a href="checkout.php" class="btn btn-dark rounded-1.5 border-0" >Kryej blerjen</a>
			<a href="books.php" class="btn btn-dark rounded-1.5 border-0" style="background: #e74c3c;">Shiko produkte te tjera</a>

		</div>
	</div>
	
<?php
	} else {
		?>
<div class="alert alert-warning rounded-0">Shporta juaj është bosh! Shtoni të paktën një libër.</div>
<?php

	}
	if(isset($conn)){ mysqli_close($conn); }
	require_once "./template/footer.php";
?>