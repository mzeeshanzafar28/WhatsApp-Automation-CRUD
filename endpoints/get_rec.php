<?php
require_once( '../config.php' );
header( 'Content-Type: application/json' );
if ( $_SERVER[ 'REQUEST_METHOD' ] == 'POST' ) {
    $fetch = isset( $_POST[ 'fetch' ] ) ? $_POST[ 'fetch' ] : '*';
    $fetch_by = isset( $_POST[ 'fetch_by' ] ) ? $_POST[ 'fetch_by' ] : '';
    $fetch_only = isset( $_POST[ 'fetch_only' ] ) ? $_POST[ 'fetch_only' ] : '';
    $limit = isset( $_POST[ 'limit' ] ) ? $_POST[ 'limit' ] : 0;
    if ( !empty( $fetch_only ) ) {
        $fetch_only_sanitized = mysqli_real_escape_string( $conn, $fetch_only );
        $fetch_only_clause = "WHERE $fetch_by='$fetch_only_sanitized'";
    } else {
        $fetch_only_clause = '';
    }
    $limit_clause = $limit > 0 ? "LIMIT $limit" : '';
    $query = "SELECT $fetch FROM sms $fetch_only_clause ORDER BY created_at ASC $limit_clause";

    $result = mysqli_query( $conn, $query );
    if ( $result ) {
        $data = mysqli_fetch_all( $result, MYSQLI_ASSOC );
        echo json_encode( [ 'status' => 'success', 'data' => $data ] );
    } else {
        echo json_encode( [ 'status' => 'error', 'message' => 'Failed to fetch data' ] );
    }
} else {
    echo json_encode( [ 'status' => 'error', 'message' => 'Invalid request method' ] );
}
