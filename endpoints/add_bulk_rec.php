<?php
include( '../config.php' );

header( 'Content-Type: application/json' );

$data = json_decode( file_get_contents( 'php://input' ), true );

if ( json_last_error() !== JSON_ERROR_NONE ) {
    http_response_code( 400 );
    echo json_encode( [ 'error' => 'Invalid JSON' ] );
    exit;
}

if ( !isset( $data[ 'phone_nos' ], $data[ 'msg' ], $data[ 'type' ], $data[ 'data' ] ) ) {
    http_response_code( 400 );
    echo json_encode( [ 'error' => 'Missing required fields' ] );
    exit;
}

$phone_nos = explode( "\n", $data[ 'phone_nos' ] );
$msg = mysqli_real_escape_string( $conn, $data[ 'msg' ] );
$type = mysqli_real_escape_string( $conn, $data[ 'type' ] );
$data_field = mysqli_real_escape_string( $conn, $data[ 'data' ] );

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
        $sql = "INSERT INTO sms (phone_no, msg, type, data, status) VALUES ('$phone_no', '$msg', '$type', '$data_field', 'pending')";
        if ( !mysqli_query( $conn, $sql ) ) {
            http_response_code( 500 );
            echo json_encode( [ 'error' => 'Database insert failed', 'details' => mysqli_error( $conn ) ] );
            mysqli_close( $conn );
            exit;
        }
    }
}

mysqli_close( $conn );

http_response_code( 200 );
echo json_encode( [ 'success' => 'Data inserted successfully' ] );
?>
