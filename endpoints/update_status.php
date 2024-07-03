<?php
require_once( '../config.php' );
header( 'Content-Type: application/json' );

if ( $_SERVER[ 'REQUEST_METHOD' ] == 'POST' ) {
    $id = isset( $_POST[ 'id' ] ) ? $_POST[ 'id' ] : '';
    $status = isset( $_POST[ 'status' ] ) ? $_POST[ 'status' ] : '';

    if ( !empty( $id ) && !empty( $status ) ) {
        $id = mysqli_real_escape_string( $conn, $id );
        $status = mysqli_real_escape_string( $conn, $status );
        
        $query = "UPDATE sms SET status='$status' WHERE id='$id'";
        $result = mysqli_query( $conn, $query );

        if ( $result ) {
            echo json_encode( [ 'status' => 'success', 'message' => 'Status updated successfully' ] );
        } else {
            echo json_encode( [ 'status' => 'error', 'message' => 'Failed to update data' ] );
        }
    } else {
        echo json_encode( [ 'status' => 'error', 'message' => 'ID and status are required' ] );
    }
} else {
    echo json_encode( [ 'status' => 'error', 'message' => 'Invalid request method' ] );
}
?>
