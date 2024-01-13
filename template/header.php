<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title><?php echo $title; ?></title>

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />

    <link href="./bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="./bootstrap/css/styles.css" rel="stylesheet">

    <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/js/all.min.js" integrity="sha512-6PM0qYu5KExuNcKt5bURAoT6KCThUmHRewN3zUFNaoI6Di7XJPTMoT6K0nsagZKk2OB4L7E3q1uQKHNHd4stIQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>

    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script type="text/javascript" src="./bootstrap/js/jquery-3.6.0.min.js"></script>
    <script type="text/javascript" src="./bootstrap/js/bootstrap.bundle.min.js"></script>
  </head>

  <body>
    <div class="clear-fix pt-5 pb-3"></div>
    <nav class="navbar navbar-expand-lg  navbar-expand-md navbar-light bg-warning bg-gradient fixed-top">
      <div class="container">
        <div class="navbar-header">
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#topNav" aria-controls="topNav" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
          <a class="navbar-brand" href="index.php">Simple Online Book Store</a>
        </div>

        <!--/.navbar-collapse -->
        <div class="collapse navbar-collapse" id="topNav">
          <ul class="nav navbar-nav">
            <?php if(isset($_SESSION['admin']) && $_SESSION['admin'] == true): ?>
                <li class="nav-item"><a class="nav-link" href="admin_book.php"><span class="fa fa-th-list"></span> Book List</a></li>
                <li class="nav-item"><a class="nav-link" href="admin_add.php"><span class="far fa-plus-square"></span> Add New Book</a></li>
                <li class="nav-item"><a class="nav-link" href="admin_signout.php"><span class="fa fa-sign-out-alt"></span> Logout</a></li>
            <?php else: ?>
              <!-- link to publiser_list.php -->
              <li class="nav-item"><a class="nav-link" href="publisher_list.php"><span class="fa fa-paperclip"></span> Publisher</a></li>
              <!-- link to books.php -->
              <li class="nav-item"><a class="nav-link" href="books.php"><span class="fa fa-book"></span> Books</a></li>
              <!-- link to shopping cart -->
              <li class="nav-item"><a class="nav-link" href="cart.php"><span class="fa fa-shopping-cart"></span> My Cart</a></li>
            <?php endif; ?>
            </ul>
        </div>
      </div>
    </nav>
    <?php
      if(isset($title) && $title == "Home") {
    ?>
    <!-- Main jumbotron for a primary marketing message or call to action -->
      <div class="container">
        <h1>Welcome to Simple Online Book Store</h1>
        <hr>
      </div>
    <?php } ?>

    <div class="container" id="main">