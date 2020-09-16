<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
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
    <link href='${pageContext.request.contextPath}/assets/css/googleapis.css' rel='stylesheet' type='text/css'>
</head>


<body>
<!-- Header -->
<header class="header home">
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
                        <a class="logo" href="${pageContext.request.contextPath}/user/toIndex"><img src="${pageContext.request.contextPath}/assets/images/logo.png" alt=""></a>
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
                        <a href="${pageContext.request.contextPath}/book/allBook">Product</a>
                        <ul class="dropdown-menu">
                            <li><a href="${pageContext.request.contextPath}/book/allBook">
                                Product grid</a>
                            </li>
                            <li><a href="${pageContext.request.contextPath}/book/allBook">Product list</a></li>
                            <li><a href="${pageContext.request.contextPath}/book/allBook">Product sidebar</a></li>

                            <li><a href="${pageContext.request.contextPath}/book/allBook">Product single</a></li>
                        </ul>
                    </li>
                    <li class="dropdown"><a href="about.jsp">About</a></li>
                    <li class="dropdown">
                        <a href="#">Pages</a>
                        <ul class="dropdown-menu">
                            <li><a href="faq.jsp">FAQ</a>
                            </li>
                            <li><a href="contact.jsp">Contact</a></li>
                            <li><a href="404.jsp">Page 404</a></li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a href="#">Blog</a>
                        <ul class="dropdown-menu">
                            <li><a href="UserOrderList.jsp">Blog Grid</a>
                            </li>
                            <li><a href="blog_list.jsp">Blog List</a></li>
                            <li><a href="blog_single.jsp">Single Blog</a></li>
                        </ul>
                    </li>
                    <li><a href="contact.jsp">Contact</a></li>
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
                            <span class="cartcost"><span class="money" data-currency-usd="$0.00"></span></span>
                        </a>
                
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
                <a class="logo" href="${pageContext.request.contextPath}/user/toIndex"><img src="${pageContext.request.contextPath}/assets/images/logo.png" alt=""> </a>
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
                    </ul>
                </li>
                <li class="dropdown">
                    <a href="#l" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                       aria-expanded="false">Page<span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="faq.jsp">FAQ</a></li>
                        <li><a href="404.jsp">Page 404</a></li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a href="UserOrderList.jsp" class="dropdown-toggle" data-toggle="dropdown" role="button"
                       aria-haspopup="true"
                       aria-expanded="false">Blog<span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="UserOrderList.jsp">Blog Grid</a></li>
                        <li><a href="blog_list.jsp">Blog List</a></li>
                        <li><a href="blog_single.jsp">Single Blog</a></li>
                    </ul>
                </li>
                <li><a href="contact.jsp">Contact</a></li>
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
        <h1>Products</h1>
        <ol class="item-breadcrumb">
            <li><a href="${pageContext.request.contextPath}/user/toIndex">Home</a></li>
            <li>Category 2</li>
        </ol>
    </div>
    <!-- /container -->
</div>
<!-- End breadcrumb ====
 ======================================= -->

<!-- =====================================
    ==== Start archive-product-list -->
<div class="archive-product">
    <!-- Container -->
    <div class="container">
        <!-- Row -->
        <div class="row">
            <div class="col-md-3">
                <aside class="sidebar product-filter">
                    <!-- Categories -->
                    <section class="widget section-categories">
                        <h3 class="widget-title">Categories</h3>
                        <div class="widget-content">
                            <ul class="list-categories list-widget">
                                <li class="list-widget__item">
                                    <a class="list-widget__link active" href="#">All Products</a>
                                </li>
                                <li class="list-widget__item">
                                    <a class="list-widget__link" href="#">Climbing</a>
                                </li>
                                <li class="list-widget__item">
                                    <a class="list-widget__link" href="#">Camping and Hiking</a>
                                </li>
                                <li class="list-widget__item">
                                    <a class="list-widget__link" href="#">Snowsports</a>
                                </li>
                                <li class="list-widget__item">
                                    <a class="list-widget__link" href="#">Travel</a>
                                </li>
                            </ul>
                        </div>
                    </section>
                    <!-- /Categories -->

                    <!-- Brand -->
                    <section class="widget section-brand">
                        <h3 class="widget-title">by Brand</h3>
                        <div class="widget-content">
                            <ul class="list-checked">
                                <li><a href="#">Alchemy Equipment</a></li>
                                <li><a href="#">Arc'teryx</a></li>
                                <li class="current"><a href="#">Black Diamond</a></li>
                                <li><a href="#">Canada Goose</a></li>
                                <li class="current"><a href="#">Craft</a></li>
                                <li><a href="#">Mountain Hardwear</a></li>
                                <li><a href="#">The North Face</a></li>
                                <li><a href="#">Arc'teryx</a></li>
                                <li><a href="#">The North Face</a></li>
                            </ul>
                        </div>
                    </section>
                    <!-- /Brand -->

                    <!-- Price -->
                    <section class="widget section-price widget_filter">
                        <h3 class="widget-title">Price range</h3>
                        <div class="widget-content">
                            <div class="ps-slider" data-default-min="0" data-default-max="500" data-max="1000"
                                 data-step="100" data-unit="$"></div>
                            <p class="ps-slider__meta">Price:<span class="ps-slider__value ps-slider__min"></span>-<span
                                    class="ps-slider__value ps-slider__max"></span></p>
                        </div>
                    </section>
                    <!--/Price -->

                    <!-- Size -->
                    <section class="widget section-size">
                        <h3 class="widget-title">refine by Size</h3>
                        <div class="widget-content">
                            <ul class="list-checked list-two">
                                <li><a href="#">XS</a></li>
                                <li class="current"><a href="#">XL</a></li>
                                <li class="current"><a href="#">S</a></li>
                                <li><a href="#">2XL</a></li>
                                <li><a href="#">M</a></li>
                                <li><a href="#">3XL</a></li>
                                <li><a href="#">L</a></li>
                                <li><a href="#">2XL</a></li>
                            </ul>
                        </div>
                    </section>
                    <!-- /Size -->

                    <!-- Color -->
                    <section class="widget section-color">
                        <h3 class="widget-title">by Color</h3>
                        <div class="widget-content">
                            <ul class="list-checked list-two">
                                <li><a href="#">Black</a></li>
                                <li class="current"><a href="#">Pink</a></li>
                                <li class="current"><a href="#">Blue</a></li>
                                <li><a href="#">Purple</a></li>
                                <li><a href="#">Brown</a></li>
                                <li><a href="#">Red</a></li>
                                <li><a href="#">Green</a></li>
                                <li><a href="#">Yellow</a></li>
                                <li><a href="#">Grey</a></li>
                                <li><a href="#">White</a></li>
                            </ul>
                        </div>
                    </section>
                    <!--/Color -->
                </aside>
            </div>
            <div class="col-md-9">
                <!-- product-shorting -->
                <div class="product-shorting d-flex align-items-center justify-content-between">
                    <div class="grid-list-view">
                        <ul class="nav tabs-area">
                            <li>
                                <a data-toggle="tab" href="#grid-view">
                                    <i class="fa fa-th"></i>
                                </a>
                            </li>
                            <li class="active">
                                <a data-toggle="tab" href="#list-view" class="">
                                    <i class="fa fa-list-ul"></i>
                                </a>
                            </li>
                        </ul>
                        <span class="show-items">Showing 1 to 9</span>
                    </div>
                    <div class="toolbar-sorter">
                        <select name="orderby" class="orderby">
                            <option value="menu_order" selected="selected">Default sorting</option>
                            <option value="popularity">Sort by popularity</option>
                            <option value="rating">Sort by average rating</option>
                            <option value="date">Sort by newness</option>
                            <option value="price">Sort by price: low to high</option>
                            <option value="price-desc">Sort by price: high to low</option>
                        </select>
                    </div>
                </div>
                <!--/product-shorting -->

                <!-- tab-content -->
                <c:forEach var="book" items="${requestScope.get('booklist')}">
                    <div class="tab-content">
                        <div id="list-view" class="tab-pane fade in active">
                            <div class="product products-list">
                                <div class="row row-products">
                                    <div class="col-md-12">
                                        <div class="product-block">
                                            <div class="row">
                                                <div class="col-md-4 col-lg-4 col-sm-4">
                                                    <div class="product-image product_1">
                                                        <div class="product-thumbnail">
                                                            <a href="${pageContext.request.contextPath}/book/toBookDetail/${book.id}" title="">
                                                                <img class="product-featured-image"
                                                                     src="${pageContext.request.contextPath}/${book.image}" alt="">
                                                            </a>
                                                        </div>
                                                    </div><!-- /.product-image -->
                                                </div>
                                                <div class="col-md-8 col-lg-8 col-sm-8">
                                                    <div class="product-meta">
                                                        <!-- end rating -->
                                                        <h4 class="product-name">
                                                            <a href="${pageContext.request.contextPath}/book/toBookDetail/${book.id}" title="">
                                                                    ${book.id}
                                                            </a>
                                                        </h4><!-- /.product-product -->

                                                        <div class="product-price">
													<span class="amout">
														<span class="money"
                                                              data-currency-usd="${book.price}">${book.price}</span>
													</span>
                                                        </div><!-- /.product-price -->
                                                        <div class="excerpt">
                                                                ${book.info}
                                                        </div>
                                                    </div><!-- /.product-meta -->
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </c:forEach>
                <!-- /tab-content -->

                <!-- pagination -->
                <nav class="pagination clearfix">
                    <ul class="page-numbers">
                        <li><a class="prev page-numbers" href="#"><i class="fa fa-angle-left"
                                                                     aria-hidden="true"></i></a></li>
                        <li><span class="page-numbers current">1</span></li>
                        <li><a class="page-numbers" href="#">2</a></li>
                        <li><a class="page-numbers" href="#">3</a></li>
                        <li><a class="page-numbers" href="#">4</a></li>
                        <li><a class="page-numbers" href="#">5</a></li>
                        <li><a class="next page-numbers" href="#"><i class="fa fa-angle-right"
                                                                     aria-hidden="true"></i></a></li>
                    </ul>
                </nav>
                <!-- /pagination -->
            </div>
        </div>
    </div>
</div>
<!-- End archive-product-list ====
    ======================================= -->

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
                        <li><a href="about.jsp">About Us</a></li>
                        <li><a href="contact.jsp">Contact Us</a></li>
                        <li><a href="UserOrderList.jsp">Blog</a></li>
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

</body>
</html>