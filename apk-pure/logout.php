<?php

include 'ayar.php';

unset($_SESSION["user_id"]);
unset($_SESSION["user_name"]);
session_destroy();
header("Location:login.php");

