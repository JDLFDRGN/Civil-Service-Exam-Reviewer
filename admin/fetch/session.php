<?php
    session_start();

    if($_POST['setAdminSession']){
        $_SESSION['adminSession'] = $_POST['adminSession'];

        echo $_SESSION['adminSession'];
    }

    if($_POST['deleteSession']){
        session_destroy();
    }
?>