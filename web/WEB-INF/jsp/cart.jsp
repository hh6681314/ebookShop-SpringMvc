<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%@ page import="com.maple.pojo.Cart" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title></title>

    <!-- preloader CSS -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/preloader.css">

    <!-- prettyPhoto CSS -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/prettyPhoto.css">

    <!-- slider-pro CSS -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/slider-pro.css">

    <!-- slick CSS -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/slick.css">

    <!-- font-awesome CSS -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/font-awesome.css">

    <!-- Main Style CSS CSS -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/style.css">

    <!-- Fonts -->
    <link href='https://fonts.googleapis.com/css?family=Yantramanav:300,400,500,700,900' rel='stylesheet'
          type='text/css'>
</head>


<body>
<!-- Header -->
<header class="header home">
    <!-- top-bar -->
    <div class="topbar pt-15 pb-15 mb-35">
        <div class="container">
            <div class="top-bar">
                <div class="top-bar__left pull">
                    <div class="top-bar-register">
                        <a class="top-bar__item" href="${pageContext.request.contextPath}/user/toLogin">
                            <i class="fa fa-user-o" aria-hidden="true"></i>
                            Register
                        </a>
                    </div>
                    <div class="top-bar-account">
                        <a class="top-bar__item" href="${pageContext.request.contextPath}/user/toLogin">
                            <i class="fa fa-lock" aria-hidden="true"></i>
                            login
                        </a>
                        <div class="content-dropdown left">
                            <div class="account-inner ">
                                <div class="login-form-head">
                                    <span class="login-form-title">Sign in</span>
                                    <span class="pull-right">
								     	 	<a class="register-link" href="#" title="Register">Create an Account</a>
								     	 </span>
                                </div>
                                <form class="opal-login-form-ajax" data-toggle="validator">
                                    <p>
                                        <label>Username or email <span class="required">*</span></label>
                                        <input name="username" type="text" required="" placeholder="Username">
                                    </p>
                                    <p>
                                        <label>Password <span class="required">*</span></label>
                                        <input name="password" type="password" required="" placeholder="Password">
                                    </p>
                                    <button type="submit" data-button-action="" class="btn btn-primary btn-block">
                                        Login
                                    </button>
                                    <input type="hidden" name="action" value="">
                                    <input type="hidden" id="security-login" name="security-login"
                                           value="97915018af"><input type="hidden" name="login" value="">
                                </form>
                                <div class="login-form-bottom">
                                    <a href="#" class="lostpass-link" title="Lost your password?">Lost your
                                        password?</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="top-bar__right">
                    <div class="header-language item-dropdown">
                        <a href="#" class="top-bar__item">English
                            <i class="fa fa-angle-down"></i>
                        </a>
                        <ul class="content-dropdown">
                            <li class="active"><a href="#">English</a></li>
                            <li><a href="#">French</a></li>
                            <li><a href="#">German</a></li>
                        </ul>
                    </div>
                    <div class="header-currency item-dropdown">
                        <a href="#" class="top-bar__item">USD
                            <i class="fa fa-angle-down"></i>
                        </a>
                        <ul class="content-dropdown">
                            <li><a href="#"><span class="symbol">€</span>EUR</a></li>
                            <li class="active"><a href="#"><span class="symbol">$</span>USD</a></li>
                            <li><a href="#"><span class="symbol">£</span>GBP</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <!-- /Container -->
    </div>
    <!-- /top-bar -->

    <!-- header-main -->
    <div class="header-main">
        <div class="container">
            <nav id="nav" class="navbar">
                <div class="nav-collapse">
                    <span></span>
                </div>
                <div class="navbar-header">
                    <!-- Logo -->
                    <div class="navbar-brand">
                        <a class="logo" href="${pageContext.request.contextPath}/user/toIndex"><img
                                src="${pageContext.request.contextPath}/assets/images/logo.png" alt=""></a>
                    </div>
                    <!-- /Logo -->
                </div>
                <!--  Main navigation  -->

                <div class="otf-flex-item"></div>

                <ul class="main-nav nav navbar-nav navbar-right">
                    <li class="dropdown">
                        <a href="${pageContext.request.contextPath}/user/toIndex">Home</a>
                        <ul class="dropdown-menu">
                            <li><a href="../${pageContext.request.contextPath}/user/toIndex">Home 1</a></li>
                            <li><a href="../v3/${pageContext.request.contextPath}/user/toIndex">Home 3</a></li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a href="#">Product</a>
                        <ul class="dropdown-menu">
                            <li><a href="${pageContext.request.contextPath}/book/allBook">
                                Product grid</a>
                            </li>
                            <li><a href="${pageContext.request.contextPath}/book/allBook">Product list</a></li>
                            <li><a href="${pageContext.request.contextPath}/book/allBook">Product sidebar</a></li>

                            <li><a href="${pageContext.request.contextPath}/book/allBook">Product single</a></li>
                        </ul>
                    </li>
                    <li class="dropdown"><a href="about.html">About</a></li>
                    <li class="dropdown">
                        <a href="#">Pages</a>
                        <ul class="dropdown-menu">
                            <li><a href="faq.html">FAQ</a>
                            </li>
                            <li><a href="contact.html">Contact</a></li>
                            <li><a href="404.html">Page 404</a></li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a href="#">Blog</a>
                        <ul class="dropdown-menu">
                            <li><a href="blog.html">Blog Grid</a>
                            </li>
                            <li><a href="blog_list.html">Blog List</a></li>
                            <li><a href="blog_single.html">Single Blog</a></li>
                        </ul>
                    </li>
                    <li><a href="contact.html">Contact</a></li>
                </ul>
                <!-- /Main navigation -->
                <div class="otf-flex-item"></div>
                <div class="site-header -icon">
                    <!-- search -->
                    <div class="site-header__search">
                        <div class="ps-search-btn">
                            <i class="fa fa-search" aria-hidden="true"></i>
                        </div>
                        <div class="ps-search">
                            <div class="ps-search__content">
                                <a class="ps-search__close" href="#"><span></span></a>
                                <h3 class="search_title">Enter your keyword</h3>
                                <form method="get" class="searchform" action="#">
                                    <div class="wiget-search input-group">
                                        <input name="s" maxlength="40" class="form-control input-search" type="text"
                                               size="20" placeholder="Searching...">

                                        <span class="input-group-addon input-large btn-search">
									 	<span class="fa fa-search"></span>
										<input type="submit" class="fa" value="">
									 </span>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                    <!-- cart -->
                    <div class="site-header__cart item-dropdown">
                        <a href="${pageContext.request.contextPath}/cart/list" class="site-header__cart-toggle">
                            <span class="cartcount">3</span>
                            <i class="fa fa-shopping-basket" aria-hidden="true"></i>
                            <span class="cartcost"><span class="money" data-currency-usd="$0.00">$0.00</span></span>
                        </a>
                        <div class="widget_shopping_cart_content  content-dropdown">
                            <div class="cart_list ">
                                <div class="media widget-product">
                                    <div class="media-left">
                                        <a href="${pageContext.request.contextPath}/book/allBook" class="image pull-left">
                                            <img src="${pageContext.request.contextPath}/assets/images/product/product_1.jpg"
                                                 alt="">
                                        </a>
                                    </div>
                                    <div class="cart-main-content media-body">
                                        <h3 class="name">
                                            <a href="${pageContext.request.contextPath}/book/allBook">
                                                Gym Training Gloves
                                            </a>
                                        </h3>
                                        <p class="cart-item">
                                            <span class="quantity">2 × <span class="price-amount amount"><span
                                                    class="price-currencySymbol">$</span>250.00</span></span>
                                        </p>
                                        <a href="#" class="remove" title="Remove this item">×</a>
                                    </div>
                                </div>
                                <div class="media widget-product">
                                    <div class="media-left">
                                        <a href="${pageContext.request.contextPath}/book/allBook" class="image pull-left">
                                            <img src="${pageContext.request.contextPath}/assets/images/product/product_3.jpg"
                                                 alt="">
                                        </a>
                                    </div>
                                    <div class="cart-main-content media-body">
                                        <h3 class="name">
                                            <a href="${pageContext.request.contextPath}/book/allBook">
                                                Gym Training Gloves
                                            </a>
                                        </h3>
                                        <p class="cart-item">
                                            <span class="quantity">2 × <span class="price-amount amount"><span
                                                    class="price-currencySymbol">$</span>250.00</span></span></p>
                                        <a href="#" class="remove" title="Remove this item">×</a>
                                    </div>
                                </div>
                                <div class="media widget-product">
                                    <div class="media-left">
                                        <a href="${pageContext.request.contextPath}/book/allBook" class="image pull-left">
                                            <img src="${pageContext.request.contextPath}/assets/images/product/product_3.jpg"
                                                 alt="">
                                        </a>
                                    </div>
                                    <div class="cart-main-content media-body">
                                        <h3 class="name">
                                            <a href="${pageContext.request.contextPath}/book/allBook">
                                                Gym Training Gloves
                                            </a>
                                        </h3>
                                        <p class="cart-item">
                                            <span class="quantity">2 × <span class="price-amount amount"><span
                                                    class="price-currencySymbol">$</span>200.00</span></span></p>
                                        <a href="#" class="remove" title="Remove this item">×</a>
                                    </div>
                                </div>
                            </div>
                            <p class="total"><strong>Subtotal:</strong>
                                <span class="price-amount amount">
								    <span class="price-currencySymbol">$</span>700.00</span>
                            </p>
                            <p class="buttons clearfix">
                                <a href="${pageContext.request.contextPath}/cart/list" class="btn view-cart btn-default btn-normal pull-right">View Cart</a>
                                <a href="#" class="btn check-out btn-primary btn-normal pull-left">Checkout</a>
                            </p>
                        </div>
                    </div>
                </div>
            </nav>
        </div>
    </div>
    <!-- /header-main -->
</header>
<!-- header-mobile -->
<div class="header-mobile">
    <div class="header-mobile-top">
        <div class="top-bar">
            <div class="header-language item-dropdown">
                <a href="#" class="top-bar__item">English
                    <i class="fa fa-angle-down"></i>
                </a>
                <ul class="content-dropdown">
                    <li class="active"><a href="#">English</a></li>
                    <li><a href="#">French</a></li>
                    <li><a href="#">German</a></li>
                </ul>
            </div>
            <div class="header-currency item-dropdown">
                <a href="#" class="top-bar__item">USD
                    <i class="fa fa-angle-down"></i>
                </a>
                <ul class="content-dropdown">
                    <li><a href="#"><span class="symbol">€</span>EUR</a></li>
                    <li class="active"><a href="#"><span class="symbol">$</span>USD</a></li>
                    <li><a href="#"><span class="symbol">£</span>GBP</a></li>
                </ul>
            </div>
        </div>
        <div class="site-header -icon">
            <!-- search -->
            <div class="site-header__search">
                <div class="ps-search-btn">
                    <i class="fa fa-search" aria-hidden="true"></i>
                </div>
                <div class="ps-search">
                    <div class="ps-search__content">
                        <a class="ps-search__close" href="#"><span></span></a>
                        <h3 class="search_title">Enter your keyword</h3>
                        <form method="get" class="searchform" action="#">
                            <div class="wiget-search input-group">
                                <input name="s" maxlength="40" class="form-control input-search" type="text" size="20"
                                       placeholder="Searching...">

                                <span class="input-group-addon input-large btn-search">
									 	<span class="fa fa-search"></span>
									 	<input type="submit" class="fa" value="">
									 </span>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            <!--end search -->
        </div>
    </div>

    <nav class="navbar">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
                    data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <!-- logo -->
            <div class="navbar-brand">
                <a class="logo" href="${pageContext.request.contextPath}/user/toIndex"><img src="${pageContext.request.contextPath}/assets/images/logo.png"
                                                       alt=""> </a>
            </div>
            <!-- logo -->
        </div>

        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">
                <li class="active dropdown">
                    <a href="${pageContext.request.contextPath}/user/toIndex" class="dropdown-toggle" data-toggle="dropdown" role="button"
                       aria-haspopup="true" aria-expanded="false">Home <span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="../${pageContext.request.contextPath}/user/toIndex">Home 1</a></li>
                        <li><a href="../v3/${pageContext.request.contextPath}/user/toIndex">Home 3</a></li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a href="${pageContext.request.contextPath}/book/allBook" class="dropdown-toggle" data-toggle="dropdown" role="button"
                       aria-haspopup="true" aria-expanded="false">Product <span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="${pageContext.request.contextPath}/book/allBook">Product grid</a></li>
                        <li><a href="${pageContext.request.contextPath}/book/allBook">Product list</a></li>
                        <li><a href="${pageContext.request.contextPath}/book/allBook">Product sidebar</a></li>
                        <li><a href="${pageContext.request.contextPath}/book/allBook">Product single</a></li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a href="#l" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                       aria-expanded="false">Page<span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="faq.html">FAQ</a></li>
                        <li><a href="404.html">Page 404</a></li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a href="blog.html" class="dropdown-toggle" data-toggle="dropdown" role="button"
                       aria-haspopup="true" aria-expanded="false">Blog<span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="blog.html">Blog Grid</a></li>
                        <li><a href="blog_list.html">Blog List</a></li>
                        <li><a href="blog_single.html">Single Blog</a></li>
                    </ul>
                </li>
                <li><a href="contact.html">Contact</a></li>
            </ul>
        </div>
    </nav>
</div>
<div class="footer-mobile-bar">
    <ul class="columns-2">
        <li class="my-account">
            <a class="my-accrount-footer" href="${pageContext.request.contextPath}/user/toLogin">
                <i class="fa fa-user-o" aria-hidden="true"></i>
            </a>
        </li>
        <li class="cart">
            <a class="footer-cart-contents" href="${pageContext.request.contextPath}/cart/list" title="View your shopping cart">
                <i class="fa fa-shopping-basket" aria-hidden="true"></i>
                <span class="count">1</span>
            </a>
        </li>
    </ul>
</div>
<!-- /Header -->


<!-- =====================================
    ==== Start breadcrumb -->
<div class="breadcrumb">
    <!-- container -->
    <div class="container">
        <h1>Cart</h1>
        <ol class="item-breadcrumb">
            <li><a href="${pageContext.request.contextPath}/user/toIndex">Home</a></li>
            <li>Cart</li>
        </ol>
    </div>
    <!-- /container -->
</div>
<!-- =====================================
    ==== End breadcrumb -->


<!-- =====================================
    ==== Start cart -->
<div class="page-cart">
    <!-- container -->
    <div class="container">
        <div class="row">
            <div class="col-md-8">
                <form class="cart-form table_responsive" action="#" method="post">
                    <table class="shop_table table cart cart-form__contents">
                        <thead>
                        <tr>
                            <th class="product-thumbnail">Product</th>
                            <th class="product-name">Name</th>
                            <th class="product-price">Price</th>
                            <th class="product-quantity">Quantity</th>
                            <th class="product-subtotal">Total</th>
                            <th class="product-remove">&nbsp;</th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:if test="${null != cartList}">
                            <c:forEach var="cart" items="${cartList}">
                                <tr class="cart-form__cart-item cart_item">
                                    <td class="product-thumbnail">
                                        <a href="${pageContext.request.contextPath}/book/allBook">
                                            <img src="${pageContext.request.contextPath}/${cart.pic}"
                                                 alt="">
                                        </a>
                                    </td>
                                    <td class="product-name" data-title="Product">
                                        <a href="${pageContext.request.contextPath}/book/allBook">${cart.name}</a>
                                    </td>
                                    <td class="product-price" data-title="Price">
                                        <span class="price-amount amount"><span
                                                class="price-currencySymbol">$</span>${cart.price}</span>
                                    </td>
                                    <td class="product-quantity" data-title="Quantity">
                                        <div class="quantity">
                                            <input type="hidden" id="id${cart.b_id}" value="${cart.b_id}">
                                            <input type="number" class="input-text qty text" size="3" name="num"
                                                   id="num${cart.b_id}" value="${cart.num}"
                                                   onchange="numChange(${cart.b_id})"/>
                                        </div>
                                    </td>
                                    <td class="product-subtotal" data-title="Total">
                                        <span class="price-amount amount"><span
                                                class="price-currencySymbol">$</span>${cart.price}</span>
                                    </td>

                                    <td class="product-remove">
                                        <a class="remove" aria-label="Remove this item" data-product_id="9114"
                                           data-product_sku="" onclick="delCartBook(${cart.b_id})"><i
                                                class="fa fa-trash-o"></i></a>
                                    </td>
                                </tr>
                            </c:forEach>
                        </c:if>
                        </tbody>
                    </table>
                </form>
            </div>
            <div class="col-md-4">
                    <a href="${pageContext.request.contextPath}/cart/checkout" class="btn btn-primary checkout-button">Proceed to Checkout</a>
            </div>
        </div>
    </div>
    <!-- /container -->
</div>
<!-- =====================================
    ==== End cart -->
<!-- =====================================================================
       ==== Start footer -->
<footer class="site-footer site-footer-1 clearfix">
    <div class="site-footer__top">
        <div class="container">
            <div class="newsletter text-white">
                <h3>Subscribe Newsletter</h3>
                <p class="newsletter-description">Sign up to receive 15% off your first order! </p>
                <form action="#" method="post" id="mc-embedded-subscribe-form" name="mc-embedded-subscribe-form"
                      target="_blank" class="form-horizontal">
                    <div class="newsletter-form">
                        <input type="email" value="" placeholder="Email address" name="EMAIL" id="mail"
                               aria-label="email@example.com">
                        <input type="submit" class="btn" name="subscribe" id="subscribe" value="">
                    </div>
                </form>
            </div>
        </div>
    </div>
    <div class="site-footer__main">
        <div class="container">
            <div class="row">
                <div class="col-md-3 col-sm-6 col-xs-12 footer-block footer-1 text-center">
                    <h3 class="widget-title">Quick Links</h3>
                    <ul>
                        <li><a href="about.html">About Us</a></li>
                        <li><a href="contact.html">Contact Us</a></li>
                        <li><a href="blog.html">Blog</a></li>
                        <li><a href="${pageContext.request.contextPath}/user/toLogin">My Account</a></li>
                        <li><a href="${pageContext.request.contextPath}/book/allBook">Shop</a></li>
                        <li><a href="${pageContext.request.contextPath}/user/toLogin">Register</a></li>
                    </ul>
                </div>
                <div class="col-md-6 col-sm-6 col-xs-12 footer-block footer-center text-center">
                    <img src="${pageContext.request.contextPath}/assets/images/logo.png" alt="">
                    <p class="address">Office: 972 Sylvan Street South Angelina, NL S0B2V9<br/>
                        Phone: (633) 497-1888 / (062) 109-9222<br/>
                        Email: example.com
                    </p>
                    <ul class="social">
                        <li>
                            <a href="#"><i class="fa fa-facebook"></i></a>
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-twitter"></i></a>
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-google"></i></a>
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-instagram"></i></a>
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-pinterest"></i></a>
                        </li>
                    </ul>
                </div>
                <div class="col-md-3 col-sm-12 col-xs-12 footer-block footer-3">
                    <h3 class="widget-title">OPENING TIME</h3>
                    <ul>
                        <li>
                            <span>Monday :</span>
                            <span>9am - 5pm</span>
                        </li>
                        <li>
                            <span>Tuesday :</span>
                            <span>9am - 1pm</span>
                        </li>
                        <li>
                            <span>Wendsday :</span>
                            <span>9am - 5pm</span>
                        </li>
                        <li>
                            <span>Thursday :</span>
                            <span>9am - 1pm</span>
                        </li>
                        <li>
                            <span>Friday :</span>
                            <span>9am - 1pm</span>
                        </li>
                        <li>
                            <span>Saturday - Sunday :</span>
                            <span>closed</span>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <div class="site-footer__copyright">
        <div class="container">
            <div class="copyright pull-left">
                Copyright &copy; 2019.Company name All rights reserved.<a target="_blank"
                                                                          href="http://sc.chinaz.com/moban/">&#x7F51;&#x9875;&#x6A21;&#x677F;</a>
            </div>
            <div class="payment pull-right">
                <img src="${pageContext.request.contextPath}/assets/images/payment.png" alt="">
            </div>
        </div>
    </div>
</footer>
<!-- =====================================================================
    ==== End slider -->

<!-- Back to top -->
<div id="back-to-top"></div>
<!--/ Back to top -->

<!-- Preloader -->
<div id="preloader">
    <div class="preloader">
        <span></span>
        <span></span>
        <span></span>
        <span></span>
    </div>
</div>
<!-- /Preloader -->

<!-- ================================================================
    ====Start all js here -->

<!-- jquery js-->
<script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>

<!-- bootstrap js-->
<script src="${pageContext.request.contextPath}/assets/js/bootstrap.min.js"></script>

<!-- slick js-->
<script src="${pageContext.request.contextPath}/assets/js/slick.min.js"></script>

<!-- spritespin js view  360-->
<script src="${pageContext.request.contextPath}/assets/js/spritespin.min.js"></script>

<!-- jquery-ui js price -->
<script src="${pageContext.request.contextPath}/assets/js/jquery-ui.min.js"></script>

<!-- sliderPro js -->
<script src="${pageContext.request.contextPath}/assets/js/jquery.sliderPro.min.js"></script>

<!-- prettyPhoto js-->
<script src="${pageContext.request.contextPath}/assets/js/jquery.prettyPhoto.js"></script>

<!-- counterup js-->
<script src="${pageContext.request.contextPath}/assets/js/jquery.waypoints.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/jquery.counterup.min.js"></script>

<!-- main js-->
<script src="${pageContext.request.contextPath}/assets/js/custom.js"></script>

<!-- ================================================================
    ==== End all js here -->
<link href="${pageContext.request.contextPath}/css/sweetalert.css" rel="stylesheet">
<script src="${pageContext.request.contextPath}/js/sweetalert.min.js"></script>

<script type="text/javascript">
    function numChange(id) {
        const num = document.getElementById("num" + id).value;
        if (num instanceof Number || num < 1) {
            alert("请输入购买数量");
            document.getElementById("num" + id).value = 1;
            document.getElementById("num" + id).focus();
            return;
        }
        $.ajax({
            url: "${pageContext.request.contextPath}/cart/updateCart/" + id + "/" + num,
            type: "PUT",
            data: {},
            dataType: "text",
            success: function (result) {
                if ("success" != result) {
                    swal("哎呦……", "数据出现了一点小问题，请重新提交！", "error");
                }
            }
        });
    }

    function delCartBook(id) {
        const num = document.getElementById("num" + id).value;
        $.ajax({
            url: "${pageContext.request.contextPath}/cart/updateCart/" + id,
            type: 'DELETE',
            data: {},
            dataType: "text",
            success: function (result) {
                if ("success" != result) {
                    swal({
                        title: "出错了！",
                        text: "删除失败，请重新删除！",
                        type: "error",
                        confirmButtonText: "确定",
                    }, function () {
                        window.location.href = "/cart/list"
                    });
                } else {
                    swal({
                        title: "成功！",
                        text: "删除成功！",
                        type: "success",
                        confirmButtonText: "确定",
                    }, function () {
                        window.location.href = "/cart/list"
                    });
                }
            }
        });
    }
</script>
</body>
</html>