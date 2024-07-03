<?php

include( 'config.php' );

$sql = "UPDATE sms 
SET phone_no='" . mysqli_real_escape_string( $conn, $_POST[ 'phone_no' ] ) . "',
    msg='" . mysqli_real_escape_string( $conn, $_POST[ 'msg' ] ) . "',
    type='" . mysqli_real_escape_string( $conn, $_POST[ 'type' ] ) . "',
    data='" . mysqli_real_escape_string( $conn, $_POST[ 'data' ] ) . "',
    status='" . mysqli_real_escape_string( $conn, $_POST[ 'status' ] ) . "'
WHERE id='" . mysqli_real_escape_string( $conn, $_POST[ 'id' ] ) . "'";

mysqli_query( $conn, $sql );
mysqli_close( $conn );

header( 'location:view_pending.php' );
?>
