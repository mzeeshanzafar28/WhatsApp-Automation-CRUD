<?php

include( 'config.php' );

$phone_nos = explode( "\n", $_POST[ 'phone_nos' ] );

$msg = mysqli_real_escape_string( $conn, $_POST[ 'msg' ] );
$type = mysqli_real_escape_string( $conn, $_POST[ 'type' ] );
$data = mysqli_real_escape_string( $conn, $_POST[ 'data' ] );

foreach ( $phone_nos as $phone_no ) {
    $phone_no = trim( $phone_no );

    $phone_number = preg_replace( '/[^0-9]/', '', $phone_no );

    if ( $phone_number[ 0 ] == '0' ) {
        $formatted_phone = '+92' . ltrim( $phone_number, '0' );
    } else {
        $formatted_phone = $phone_number;
    }

    if ( !empty( $formatted_phone ) ) {
        $phone_no = mysqli_real_escape_string( $conn, $formatted_phone );
        $sql = "INSERT INTO sms (phone_no, msg, type, data, status) VALUES ('$phone_no', '$msg', '$type', '$data', 'pending')";
        mysqli_query( $conn, $sql );
    }
}

mysqli_close( $conn );

header( 'location:view_pending.php' );
?>
