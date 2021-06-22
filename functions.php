<?php
function commentAmount($courseId){

    $host = "localhost";
    $user = "root";
    $userPassword = "";
    $dbName = "egzaminas";

    $mysqli = mysqli_connect($host, $user, $userPassword, $dbName);

    if (mysqli_connect_errno()) {
        printf("Failed to connect to database: ", mysqli_connect_error());
        exit();
    } else {
        $sql = "SELECT komentaras FROM komentarai WHERE kursas='" . $courseId . "'";
        $res = mysqli_query($mysqli, $sql);
//        echo mysqli_num_rows($res);
    }
    mysqli_close($mysqli);
}