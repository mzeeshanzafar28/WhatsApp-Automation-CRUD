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
<style>
  .container-fluid {
  width: fit-content !important;
}
</style>

<main id = 'main' class = 'main'>
<div class = 'pagetitle'>
<h1>List Pending</h1>
<nav>
<ol class = 'breadcrumb'>
<li class = 'breadcrumb-item'><a href = 'view_pending.php'>List Pending</a></li>
<li class = 'breadcrumb-item active'>View Page</li>
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
<div class = 'col-lg-12'>
<div class = 'main-card mb-3 card'>
<div class = 'card-body'>
<h5 class = 'card-title'>View Files</h5>
<table class = 'mb-0 table'>
<thead >
<tr>
<th> Phone No. </th>
<th> Message </th>
<th> Type </th>
<th> Data </th>
<th> Status </th>
<th colspan = '2' style = 'text-align:center'> Action </th>
</tr>
</thead>
<tbody>
<?php
$result = mysqli_query( $conn, "SELECT * FROM sms WHERE status='pending' ORDER BY id DESC" );

while ( $row = mysqli_fetch_array( $result ) ) {
    ?>
    <tr class = 'gradeX odd' role = 'row'>
    <td><?php echo $row[ 'phone_no' ];
    ?></td>
    <td><?php echo $row[ 'msg' ];
    ?></td>
    <td><?php echo $row[ 'type' ];
    ?></td>
    <td><?php echo $row[ 'data' ];
    ?></td>
    <td><?php echo $row[ 'status' ];
    ?></td>
    <td>
    <form action = 'edit_data.php' method = 'POST' enctype = 'multipart/form-data'>
    <input type = 'hidden'  name = 'id' value = "<?php echo $row['id']; ?>"/>
    <input type = 'submit' class = 'btn btn-primary' style = 'float:right' name = 'submit' value = 'Edit'/>
    </form>
    </td>
    <td>
    <form  action = 'del_data.php' method = 'POST' enctype = 'multipart/form-data'  onsubmit = "return confirm('Do you really want to delete?');">
    <input type = 'hidden'  name = 'id' value = "<?php echo $row['id']; ?>"/>
    <input type = 'submit'  class = 'btn btn-danger' style = 'float:right' name = 'submit' value = 'Delete'/>
    </form>
    </td>
    </tr>
    <?php
}

?>
</tbody>
</table>
</div>
</div>
</div>
</div>
</div>
</div>
</div><!-- End News & Updates -->
</main><!-- End #main -->
</body>
