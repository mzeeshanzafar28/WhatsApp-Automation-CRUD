<?php
require_once( '../config.php' );
header( 'Content-Type: application/json' );

if ( $_SERVER[ 'REQUEST_METHOD' ] == 'POST' ) {
    $phone_no = isset( $_POST[ 'phone_no' ] ) ? $_POST[ 'phone_no' ] : '';
    $msg = isset( $_POST[ 'msg' ] ) ? $_POST[ 'msg' ] : '';
    $type = isset( $_POST[ 'type' ] ) ? $_POST[ 'type' ] : '';
    $data = isset( $_POST[ 'data' ] ) ? $_POST[ 'data' ] : '';
    $status = isset( $_POST[ 'status' ] ) ? $_POST[ 'status' ] : 'pending';
    
    $phone_no = preg_replace( '/[^0-9]/', '', $phone_no );
	if ( $phone_no[ 0 ] == '0' ) $phone_no = '+92' . ltrim( $phone_no, '0' );

    if ( !empty( $phone_no ) && !empty( $msg ) ) {
        $phone_no = mysqli_real_escape_string( $conn, $phone_no );
        $msg = mysqli_real_escape_string( $conn, $msg );
        $type = mysqli_real_escape_string( $conn, $type );
        $data = mysqli_real_escape_string( $conn, $data );
        $status = mysqli_real_escape_string( $conn, $status );

        $query = "INSERT INTO sms (phone_no, msg, type, data, status) VALUES ('$phone_no', '$msg', '$type', '$data', '$status')";
        $result = mysqli_query( $conn, $query );

        if ( $result ) {
            echo json_encode( [ 'status' => 'success', 'message' => 'Data inserted successfully' ] );
        } else {
            echo json_encode( [ 'status' => 'error', 'message' => 'Failed to insert data' ] );
        }
    } else {
        echo json_encode( [ 'status' => 'error', 'message' => 'Phone number and message are required' ] );
    }
} else {
    echo json_encode( [ 'status' => 'error', 'message' => 'Invalid request method' ] );
}
?>
