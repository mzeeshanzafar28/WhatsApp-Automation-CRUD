<?php require_once( 'parts/header.php' );
?>
</head>
<body>
<?php require_once( 'config.php' );
?>
<!-- ===  ===  = Header ===  ===  = -->
<?php require_once( 'parts/header.php' );
?>
</header><!-- End Header -->

<!-- ===  ===  = Sidebar ===  ===  = -->
<?php require_once( 'parts/sidebar.php' );
?>
<!-- End Sidebar-->

<main id = 'main' class = 'main'>
<div class = 'pagetitle'>
<h1>Edit Details</h1>
<nav>
<ol class = 'breadcrumb'>
<li class = 'breadcrumb-item'><a href = 'view_pending.php'>List Pending</a></li>
<li class = 'breadcrumb-item active'>Edit Data</li>
</ol>
</nav>
</div><!-- End Page Title -->

<!-- Begin Page Content -->
<div class = 'container-fluid'>
<!-- Page Heading -->
<div class = 'row'>
<div class = 'col-lg-12'>
<!-- Circle Buttons -->
<div class = 'card shadow mb-4'>
<div class = 'card-header py-3'>
<h6 class = 'm-0 font-weight-bold text-primary'>Edit Details</h6>
</div>
<div class = 'card-body'>
<br>
<?php
$query = 'SELECT * FROM sms WHERE id=' . mysqli_real_escape_string( $conn, $_POST[ 'id' ] );
$result = mysqli_query( $conn, $query );
$row = mysqli_fetch_array( $result );
?>
<form action = 'edit_data2.php' method = 'POST' enctype = 'multipart/form-data'>
<div class = 'from-group'>
<div class = 'row'>
<div class = 'col-md-12'>
<label>Phone No.</label>
<input class = 'form-control' name = 'phone_no' value = "<?php echo $row['phone_no']; ?>" aria-describedby = 'fileHelp' type = 'text' required/>
<input type = 'hidden' name = 'id' value = "<?php echo $row['id']; ?>"/>
</div>
</div>
<div class = 'row'>
<div class = 'col-md-12'>
<label>Message</label>
<textarea class = 'form-control' name = 'msg' aria-describedby = 'fileHelp' placeholder = 'Enter your Message here...' required><?php echo $row[ 'msg' ];
?></textarea>
</div>
</div>
<div class = 'row'>
<div class = 'col-md-12'>
<label>Type</label>
<select class = 'form-control' name = 'type'>
<option value = ''>Select Type</option>
<option value = 'type1' <?php echo ( $row[ 'type' ] == 'type1' ) ? 'selected' : '';
?>>Type 1</option>
<option value = 'type2' <?php echo ( $row[ 'type' ] == 'type2' ) ? 'selected' : '';
?>>Type 2</option>
<option value = 'type3' <?php echo ( $row[ 'type' ] == 'type3' ) ? 'selected' : '';
?>>Type 3</option>
<!-- Add other options as needed -->
</select>
</div>
</div>
<div class = 'row'>
<div class = 'col-md-12'>
<label>Data</label>
<textarea class = 'form-control' name = 'data' aria-describedby = 'fileHelp' placeholder = 'Enter data here...'><?php echo $row[ 'data' ];
?></textarea>
</div>
</div>
<div class = 'row'>
<div class = 'col-md-12'>
<label>Status</label>
<select class = 'form-control' name = 'status' required>
<option value = 'pending' <?php echo ( $row[ 'status' ] == 'pending' ) ? 'selected' : '';
?>>Pending</option>
<option value = 'invalid' <?php echo ( $row[ 'status' ] == 'invalid' ) ? 'selected' : '';
?>>Invalid</option>
<option value = 'waiting' <?php echo ( $row[ 'status' ] == 'waiting' ) ? 'selected' : '';
?>>Waiting</option>
<option value = 'failed' <?php echo ( $row[ 'status' ] == 'failed' ) ? 'selected' : '';
?>>Failed</option>
<option value = 'sent' <?php echo ( $row[ 'status' ] == 'sent' ) ? 'selected' : '';
?>>Sent</option>
<!-- Add other options as needed -->
</select>
</div>
</div>
</div>
<br>
<input type = 'submit' class = 'btn btn-primary' style = 'float:right' name = 'submit' value = 'Save'/>
</form>
</div>
</div>
</div>
</div>
</div><!-- End News & Updates -->
</main><!-- End #main -->
</body>
