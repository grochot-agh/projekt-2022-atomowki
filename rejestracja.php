<?php

session_start();

$link = mysqli_connect("mysql.agh.edu.pl:3306", "mpiwko", "Q5qYZ4aVsHgDACxH", "mpiwko");

if (isset($_POST['imienazwisko']) && isset($_POST['loginre']) && isset($_POST['haslore']) && is_string($_POST['imienazwisko']) && !empty($_POST['imienazwisko']) && !empty($_POST['loginre']) && !empty($_POST['haslore'])) {
    $login = $_POST['loginre'];
    $haslo = hash(sha512,$_POST['haslore']);
    $imienazwisko = $_POST['imienazwisko'];
    $link = mysqli_connect("mysql.agh.edu.pl:3306", "mpiwko", "Q5qYZ4aVsHgDACxH", "mpiwko");
    $sql = "SELECT * FROM  `users`  WHERE `login`='$login' ";
    $result = mysqli_query($link,$sql);

    if(!mysqli_num_rows($result) == 0) {
        header("Location: stronalog.php");
        $_SESSION['blad'] = '<span style="color:red">Login istnieje w bazie!</span>';
    }
    else {
        $sql = "INSERT INTO users(imienazwisko,login,haslo) VALUES(?,?,?)";
        $stmt = $link->prepare($sql);
        $stmt->bind_param("sss", $imienazwisko, $login, $haslo);
        $result = $stmt->execute();
        if (!$result) {
            printf("Query failed: %s\n", mysqli_error($link));
        }
        $stmt->close();
        $_SESSION['blad'] = '<span style="color:red">Udana rejestracja!</span>';
        $_SESSION['zalogowany'] = 1;
        $_SESSION['login'] = $login;
        $_SESSION['imienazwisko'] = $imienazwisko;
        header("Location: formpage.php");

}
}
else {
    header("Location: stronalog.php");
    $_SESSION['blad'] = '<span style="color:red;margin:auto;text-align:center;position:relative;left:33%">Login istnieje w bazie!</span>';
    
}

/*if (isset($_POST['zaloguj']) || isset($_POST['zarejestruj'])) { 
    $imienazwisko = $_POST['imienazwisko'];  
    $login = $_POST['loginre']; //ustawiam zmienna ktoram pobiera zawartosc z wpisywanego pola
    $haslo = $_POST['haslore']; //ustawiam zmienna haslo
    //$_SESSION['imienazwisko'] = $;
    $_SESSION['imienazwisko'] = $imienazwisko;
    $_SESSION['loginre'] = $loginre;
    $_SESSION['haslore'] = $haslore;

     
}*/

?>
