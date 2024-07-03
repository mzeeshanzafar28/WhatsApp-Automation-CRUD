<?php require_once( 'parts/header.php' );
?>
</head>

<body>

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
<h1>Add Details</h1>
<nav>
<ol class = 'breadcrumb'>
<li class = 'breadcrumb-item'><a href = 'view_pending.php'>List Pending</a></li>
<li class = 'breadcrumb-item active'>Add Details</li>
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
<h6 class = 'm-0 font-weight-bold text-primary'>Add Details</h6>
</div>
<div class = 'card-body'>
<br>
<form action = 'add_data2.php' method = 'POST' enctype = 'multipart/form-data'>
<div class = 'from-group'>
<div class = 'row'>
<div class = 'col md-12'>
<label> Phone No. </label>
<input type = 'number' class = 'form-control' name = 'phone_no' value = '' aria-describedby = 'fileHelp' required />
</div>
</div>
<div class = 'row'>
<div class = 'col md-12'>
<label> Message </label>
<textarea class = 'form-control' name = 'msg' aria-describedby = 'fileHelp' placeholder = 'Enter your Message here...' required></textarea>
</div>
</div>
<div class = 'row'>
<div class = 'col md-12'>
<label> Type </label>
<select class = 'form-control' name = 'type'>
<option value = ''>Select Type</option>
<option value = 'type1'>Type1</option>
<option value = 'type2'>Type2</option>
<option value = 'type3'>Type3</option>
<!-- Add more options as needed -->
</select>
</div>
</div>
<div class = 'row'>
<div class = 'col md-12'>
<label> Data </label>
<textarea class = 'form-control' name = 'data' aria-describedby = 'fileHelp' placeholder = 'Enter additional data here...'></textarea>
</div>
</div>
</div>
<br>
<input type = 'submit' class = 'btn btn-primary' style = 'float:right' name = 'submit' value = 'Send' />
</form>
</div>
</div>
</div>
</div>
</div><!-- End News & Updates -->
</div><!-- End Right side columns -->
</div>
</section>

</main><!-- End #main -->

?>
</body>
</html>
