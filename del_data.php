<?php

include("config.php");

	mysqli_query($conn,"delete from sms where id='".mysqli_real_escape_string($conn,$_POST['id'])."'");


	mysqli_close($conn);	

header("location:view_pending.php");

?>