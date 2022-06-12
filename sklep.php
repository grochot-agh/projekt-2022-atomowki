<?php
session_start();

?>
<!DOCTYPE html>
<html lang="sv">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <link type="text/css" href="main.css" rel="stylesheet" />
        <link
            rel="stylesheet"
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css"
            integrity="sha512-+4zCK9k+qNFUR5X+cKL9EIR+ZOhtIloNl9GIKS57V1MyNsYpYcUrUeQc9vNfzsWfV28IaLL3i96P9sdNyeRssA=="
            crossorigin="anonymous"
        />
        <script src="JS/jquery-3.5.1.min.js"></script>
        <script src="JS/multislider.min.js"></script>
        <title></title>
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
            <!--Moje konto, jak sie kilkie to przenosi do logowania oczywiscie tego jeszcze nie dodalam-->
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
        <main>
            <section class="main-section">
                <div class="product-container">  <!-- tak wiem strasznie duzo tych divów -->
                    <div class="products">
                        <!-- produkt1-->
                        <div class="product">    
                            <div class="product-under">
                                <figure class="product-image">
                                    <!-- tu można dodac zdjecie-->
                                    <div class="product-over">
                                        <!-- jak sie doda zdjecie to te przyciski powinny byc jakby na zdjeciu,
                                        fajnie by bylo jak sie najedzie na zdjecie to sie pokazuje przycisk "dodaj do koszyka"-->
                                        <button
                                            class="btn btn-small addToCart"
                                            data-product-id="1"
                                        >
                                            <i class="fas fa-cart-plus"></i>Dodaj do koszyka
                                        </button>
                                    </div>
                                </figure>
                                <div class="product-summary">
                                    <h4 class="productName">Produkt 1</h4>
                                    <h6 class="price">
                                        <span class="priceValue">15</span>
                                    </h6>
                                </div>
                            </div>
                        </div>
                        <!-- koniec produktu1-->
                        <!-- produkt2-->
                        <div class="product">
                            <div class="product-under">
                                <figure class="product-image">
                                    <!--zdjecie-->
                                    <div class="product-over">
                                        <button
                                            class="btn btn-small addToCart"
                                            data-product-id="2"
                                        >
                                            <i class="fas fa-cart-plus"></i>Dodaj do koszyka
                                        </button>
                                    </div>
                                </figure>
                                <div class="product-summary">
                                    <h4 class="productName">Produkt 2</h4>
                                    <h6 class="price">
                                        <span class="priceValue">20</span>
                                    </h6>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>   
            </section>
            <div class="podsumowanie hide"> 
                <div class="overlay"></div>
                <div class="top">
                    <h3>Koszyk</h3>
                </div>
                <ul id="podsumowanie">
                    <h4 class="empti">koszyk jest pusty</h4>
                </ul>
                <div style="display: none" id="suma">Suma:</div><h6 id="sum-all-prices"></h6>
            </div>
        </main>
        <script src="script.js"></script>
        <script src="shopping-cart.js"></script>
    </body>
</html>
