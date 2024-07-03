<?php

include("config.php");


		$phone_number = preg_replace( '/[^0-9]/', '', $_POST['phone_no'] );

		if ( $phone_number[ 0 ] == '0' ) {
			$formatted_phone = '+92' . ltrim( $phone_number, '0' );
		}
		else{
			$formatted_phone = $phone_number;
		}

		mysqli_query($conn, 
			"INSERT INTO sms 
			SET phone_no='" . mysqli_real_escape_string($conn, $formatted_phone) . 
			"', msg='" . mysqli_real_escape_string($conn, $_POST['msg']) . 
			"', status='pending', 
			type='" . mysqli_real_escape_string($conn, $_POST['type']) . 
			"', data='" . mysqli_real_escape_string($conn, $_POST['data']) . "'"
		);

			mysqli_close($conn);		

			header('location:view_pending.php');



?>