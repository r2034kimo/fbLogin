<?php
    $url=parse_url(getenv("CLEARDB_DATABASE_URL"));
    
    $server = $url["host"];
    $username = $url["user"];
    $password = $url["pass"];
    $db = substr($url["path"],1);
    $table = $_POST["tName"];
    
    $con = mysql_connect($server, $username, $password);
    if (!$con)
    {
        die('Could not connect: ' . mysql_error());
    }
    
    mysql_select_db($db);
    
    $db_select = mysql_select_db($db,$con);
    if (!$db_select) {
        die("Database selection failed: " . mysql_error());
    }
    
    
?>