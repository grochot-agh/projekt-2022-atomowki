<?php

	session_start();
	
	//if (!isset($_SESSION['zalogowany']))
	//{
		//header('Location: stronalog.php');
		//exit();
	//}

    if (!isset($_SESSION['zalogowany'])) //dzieki temu nie da sie odpalic strony bez zalogowania
	{
		header('Location: stronalog.php');
		exit();
	}
	
?>

<!DOCTYPE html>
<html lang="pl">
    <head>
        <meta charset="UTF-8" />
        <title>ProjekcikGrochocika</title>
        <script src="code.js"></script>
        <link rel="stylesheet" href="style.css" type="text/css">
        <meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1">
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <link type="text/css" href="main.css" rel="stylesheet" />
        <link
            rel="stylesheet"
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css"
            integrity="sha512-+4zCK9k+qNFUR5X+cKL9EIR+ZOhtIloNl9GIKS57V1MyNsYpYcUrUeQc9vNfzsWfV28IaLL3i96P9sdNyeRssA=="
            crossorigin="anonymous"
        />
	<script src="https://code.jquery.com/jquery-3.5.1.js" integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc=" crossorigin="anonymous"></script>
        <script src="jquery-3.5.1.min.js"></script>
        <script src="multislider.min.js"></script>

    </head>
    <body>
        <!--header-->
        <header class="header">
            <button id="menuButton"><i class="fas fa-bars"></i></button>
            <!--Logo-->
            <h2 class="logo"><a href="sklep.php">sklep</a></h2>
            <nav class="links">
                <a>podstrona1</a>  
                <a>podstrona2</a>
                <a>podstrona3</a>
            </nav>
            <!--Moje konto-->
            <div class="icons">
                <div class="account">
                    <a href="stronalog.php">
                    <button class="account-btn"> <i class="fas fa-user-alt" style="font-size:24px"></i></button>
                    <span class="account-text">Moje konto</span> <!-- to sie nie wystwietla nie wiem czemu-->
                    </a>
                </div>
                <!-- koszyk-->
                <div class="shopping-cart">
                    <div class="sum-prices">
                    <!-- logo koszyka-->
                    <i class="fas fa-shopping-cart shoppingCartButton" style="font-size:24px"></i>
                    <!-- suma w koszyku-->
                    <h6 id="sum-prices"></h6>
                </div>
            </div>
            <!-- Tu można dodać szukanie na stronie, jak klikniesz pojawi się pole do wpisania -->
            <div class="producstOnCart hide"> 
                <div class="overlay"></div>
                <div class="top">
                    <button id="closeButton">
                        <i class="fas fa-times-circle"></i>
                    </button>
                    <h3>Koszyk</h3>
                </div>
                <ul id="buyItems">
                    <h4 class="empty">koszyk jest pusty</h4>
                </ul>
                <div style="display: none" id="suma">Suma:</div><h6 id="sum-all-prices"></h6>
                <form action="stronalog.php" method="post">
                    <button class="checkout">Złóż zamówienie</button>
                </form>
            </div>
        </header>

        <!-- FORMULARZ -->
        <main class="formStyle">
            <div id="form">
                <div id="formularz">
                <?php
	                if(isset($_SESSION['blad'])){
                    echo $_SESSION['blad'];
                    unset($_SESSION['blad']);
                    }
                ?>
                <form method="POST" name="user_data" action="check.php">
                    
                    <div class="row"><div class="labelform"><span class="spanform">Imię *</span><input class="inputform" type="text" name="imie" value="<?php if(isset($_SESSION["imie"])) {echo $_SESSION["imie"]; unset($_SESSION["imie"]);} ?>"></div></div>
                    <?php
                        if (isset($_SESSION["imie_error"])) {
                            echo $_SESSION["imie_error"];
                            unset($_SESSION["imie_error"]);
                        }
                    ?>
                    <div class="row"><div class="labelform"><span class="spanform">Nazwisko *</span><input class="inputform" type="text" name="nazwisko" value="<?php if(isset($_SESSION["nazwisko"])) {echo $_SESSION["nazwisko"]; unset($_SESSION["nazwisko"]);} ?>"></div></div>
                    <?php
                        if (isset($_SESSION["nazwisko_error"])) {
                            echo $_SESSION["nazwisko_error"];
                            unset($_SESSION["nazwisko_error"]);
                        }
                    ?>
                    
                    <div class="row"><div class="labelform"><span class="spanform">Adres e-mail *</span><input type="email" name="email" value="<?php if(isset($_SESSION["email"])) {echo $_SESSION["email"]; unset($_SESSION["email"]);} ?>"></div></div>
                    <?php
                        if (isset($_SESSION["email_error"])) {
                            echo $_SESSION["email_error"];
                            unset($_SESSION["email_error"]);
                        }
                    ?>

                    <div class="row"><div class="labelform">Numer telefonu *<input type="tel" name="numer" value="<?php if(isset($_SESSION["numer"])) {echo $_SESSION["numer"]; unset($_SESSION["numer"]);} ?>"></div></div>
                    <?php
                        if (isset($_SESSION["numer_error"])) {
                            echo $_SESSION["numer_error"];
                            unset($_SESSION["numer_error"]);
                        }
                    ?>

                    <div class="row"><div class="labelform">Nazwa ulicy<input type="text" name="ulica" value="<?php if(isset($_SESSION["ulica"])) {echo $_SESSION["ulica"]; unset($_SESSION["ulica"]);} ?>"></div></div>
                    <?php
                        if (isset($_SESSION["ulica_error"])) {
                            echo $_SESSION["ulica_error"];
                            unset($_SESSION["ulica_error"]);
                        }
                    ?>

                    <div class="row"><div class="labelform">Numer domu/bloku i mieszkania<input type="text" name="numerdomu" value="<?php if(isset($_SESSION["numerdomu"])) {echo $_SESSION["numerdomu"]; unset($_SESSION["numerdomu"]);} ?>"></div></div>
                    <?php
                        if (isset($_SESSION["numerdomu_error"])) {
                            echo $_SESSION["numerdomu_error"];
                            unset($_SESSION["numerdomu_error"]);
                        }
                    ?>

                    <div class="row"><div class="labelform">Kod pocztowy<input type="text" name="kod" value="<?php if(isset($_SESSION["kod"])) {echo $_SESSION["kod"]; unset($_SESSION["kod"]);} ?>"></div></div>
                    <?php
                        if (isset($_SESSION["kod_error"])) {
                            echo $_SESSION["kod_error"];
                            unset($_SESSION["kod_error"]);
                        }
                    ?>

                    <div class="row"><div class="labelform">Województwo<input type="text" name="wojewodztwo" value="<?php if(isset($_SESSION["wojewodztwo"])) {echo $_SESSION["wojewodztwo"]; unset($_SESSION["wojewodztwo"]);} ?>"></div></div>
                    <?php
                        if (isset($_SESSION["wojewodztwo_error"])) {
                            echo $_SESSION["wojewodztwo_error"];
                            unset($_SESSION["wojewodztwo_error"]);
                        }
                    ?>

                    <div class="row"><div class="labelform">Miasto<input type="text" name="miasto" value="<?php if(isset($_SESSION["miasto"])) {echo $_SESSION["miasto"]; unset($_SESSION["miasto"]);} ?>"></div></div>
                    <?php
                        if (isset($_SESSION["miasto_error"])) {
                            echo $_SESSION["miasto_error"];
                            unset($_SESSION["miasto_error"]);
                        }
                    ?>
                    <?php
                        if (isset($_SESSION['zalogowany']))
                        {
                            print<<<KONIEC
                            <fieldset>
                                <legend>Sposób dostawy</legend>
                                    <div><input type="radio" name="dostawa" value="1"><label>Kurier DPD</label></div>
                                    <div><input type="radio" name="dostawa" value="2"><label>Poczta Polska XD</label></div>
                                    <div><input type="radio" name="dostawa" value="3"><label>Kurier GLS</label></div>
                            </fieldset>
                            KONIEC;
                        }      
                    ?>
                    <div><input type="checkbox"><div>Przeczytałem(am) i zrozumiałem(am) informacje dotyczące korzystania z moich danych osobowych wyjaśnione w Polityce Prywatności</div></div>
                </div> 
    
                    <div class="row" style="margin-top: 15px;">
                        <input id="send" type="submit" value="Prześlij">
                    </div>

            </div>
        </form>
        <form action="wylogowanie.php" method="post">
            <input type="submit" value="Wyloguj się" name="wyloguj">
        </form>

        </main>
        <?php
        if ($_SESSION['zalogowany'] = 1) {
            //echo $_SESSION['login'];
            //$_SESSON['login'] = $login;
            //$link = mysqli_connect("localhost", "root", "", "projekt");
            //$login = $_POST['login'];
            //$sql = "SELECT `imienazwisko` FROM `users` WHERE `login`='$login'";
            //$result = $link->query($sql);
            //while ($obj = mysqli_fetch_object($result))
            //printf("<tr><td>%s</td></tr>",
            //$obj->imienazwisko);
            //$result->free();
            //$link->close();
            
            //echo $_SESSION['imienazwisko'].', witaj na stronie!'; //login dziala w obu przypadkch wiec na razie zostaje
            echo $_SESSION['login'].', witaj na stronie!';
        }
        ?>

    </body>
    <script src="script.js"></script>
    <script src="shopping-cart.js"></script>
</html>

                   
