<?php
require_once( '../config.php' );
header( 'Content-Type: application/json' );

if ( $_SERVER[ 'REQUEST_METHOD' ] == 'POST' ) {
    $id = isset( $_POST[ 'id' ] ) ? $_POST[ 'id' ] : '';
    $phone_no = isset( $_POST[ 'phone_no' ] ) ? $_POST[ 'phone_no' ] : '';
    $msg = isset( $_POST[ 'msg' ] ) ? $_POST[ 'msg' ] : '';
    $status = isset( $_POST[ 'status' ] ) ? $_POST[ 'status' ] : '';
    $type = isset( $_POST[ 'type' ] ) ? $_POST[ 'type' ] : '';
    $data = isset( $_POST[ 'data' ] ) ? $_POST[ 'data' ] : '';

    if ( !empty( $id ) && !empty( $phone_no ) && !empty( $msg ) && !empty( $status ) && !empty( $type ) && !empty( $data ) ) {
        $id = mysqli_real_escape_string( $conn, $id );
        $phone_no = mysqli_real_escape_string( $conn, $phone_no );
        $msg = mysqli_real_escape_string( $conn, $msg );
        $status = mysqli_real_escape_string( $conn, $status );
        $type = mysqli_real_escape_string( $conn, $type );
        $data = mysqli_real_escape_string( $conn, $data );

        $query = "UPDATE sms SET phone_no='$phone_no', msg='$msg', status='$status', type='$type', data='$data' WHERE id='$id'";
        $result = mysqli_query( $conn, $query );

        if ( $result ) {
            echo json_encode( [ 'status' => 'success', 'message' => 'Data updated successfully' ] );
        } else {
            echo json_encode( [ 'status' => 'error', 'message' => 'Failed to update data' ] );
        }
    } else {
        echo json_encode( [ 'status' => 'error', 'message' => 'ID, phone number, message, status, type, and data are required' ] );
    }
} else {
    echo json_encode( [ 'status' => 'error', 'message' => 'Invalid request method' ] );
}
?>
