<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
	String path = request.getContextPath();
%>
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
	<link href='https://fonts.googleapis.com/css?family=Yantramanav:300,400,500,700,900' rel='stylesheet' type='text/css'>

	<link href="${path}/css/sweetalert.css" rel="stylesheet">
</head>


<body>
	<!-- Header -->
	<c:set var="book" value="${requestScope.get('detail')}"></c:set>
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
								        <button type="submit" data-button-action="" class="btn btn-primary btn-block">Login</button>
								        <input type="hidden" name="action" value="">
								        <input type="hidden" id="security-login" name="security-login" value="97915018af"><input type="hidden" name="login" value="">
								    </form>
								    <div class="login-form-bottom">
								      		<a href="#" class="lostpass-link" title="Lost your password?">Lost your password?</a>
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
									 <input name="s" maxlength="40" class="form-control input-search" type="text" size="20" placeholder="Searching..."> 

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
										      <img src="${pageContext.request.contextPath}/assets/images/product/product_1.jpg" alt=""> 
										  </a>
								      </div>
								      <div class="cart-main-content media-body">
									      	<h3 class="name">
										      <a href="${pageContext.request.contextPath}/book/allBook">
										      	Gym Training Gloves
										      </a>
									      	</h3>
									     	 <p class="cart-item">
									      		<span class="quantity">2 × <span class="price-amount amount"><span class="price-currencySymbol">$</span>250.00</span></span>  
									      	 </p>
									      <a href="#" class="remove" title="Remove this item">×</a>
								      </div>
								    </div>
								    <div class="media widget-product">
								      <div class="media-left">
									      <a href="${pageContext.request.contextPath}/book/allBook" class="image pull-left">
										      <img src="${pageContext.request.contextPath}/assets/images/product/product_3.jpg" alt=""> 
										  </a>
								      </div>
								      <div class="cart-main-content media-body">
									      <h3 class="name">
										      <a href="${pageContext.request.contextPath}/book/allBook">
										      	Gym Training Gloves
										      </a>
									      </h3>
									      <p class="cart-item">
									      <span class="quantity">2 × <span class="price-amount amount"><span class="price-currencySymbol">$</span>250.00</span></span>           </p>
									      <a href="#" class="remove" title="Remove this item">×</a>
								      </div>
								    </div>
								     <div class="media widget-product">
								      <div class="media-left">
									      <a href="${pageContext.request.contextPath}/book/allBook" class="image pull-left">
										      <img src="${pageContext.request.contextPath}/assets/images/product/product_3.jpg" alt=""> 
										  </a>
								      </div>
								      <div class="cart-main-content media-body">
									      <h3 class="name">
										      <a href="${pageContext.request.contextPath}/book/allBook">
										      	Gym Training Gloves
										      </a>
									      </h3>
									      <p class="cart-item">
									      <span class="quantity">2 × <span class="price-amount amount"><span class="price-currencySymbol">$</span>200.00</span></span>           </p>
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
									 <input name="s" maxlength="40" class="form-control input-search" type="text" size="20" placeholder="Searching..."> 

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
		      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
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
			          	<a href="${pageContext.request.contextPath}/user/toIndex" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Home <span class="caret"></span></a>
			          	<ul class="dropdown-menu">
				          	<li><a href="../${pageContext.request.contextPath}/user/toIndex">Home 1</a></li>
				            <li><a href="../v3/${pageContext.request.contextPath}/user/toIndex">Home 3</a></li>
			         	</ul>
		       		</li>
			        <li class="dropdown">
			          	<a href="${pageContext.request.contextPath}/book/allBook" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Product <span class="caret"></span></a>
			          	<ul class="dropdown-menu">
				          	<li><a href="${pageContext.request.contextPath}/book/allBook">Product grid</a></li>
			            	<li><a href="${pageContext.request.contextPath}/book/allBook">Product list</a></li>
			                <li><a href="${pageContext.request.contextPath}/book/allBook">Product sidebar</a></li>
			            	<li><a href="${pageContext.request.contextPath}/book/allBook">Product single</a></li>
			         	</ul>
		       		</li>
		       		<li class="dropdown">
			          	<a href="#l" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Page<span class="caret"></span></a>
			          	<ul class="dropdown-menu">
				            <li><a href="faq.html">FAQ</a></li>
					        <li><a href="404.html">Page 404</a></li>
			         	</ul>
		       		</li>
		       		 <li class="dropdown">
			          	<a href="blog.html" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Blog<span class="caret"></span></a>
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
			<h1>${book.name}</h1>
			<ol class="item-breadcrumb">
	            <li><a href="${pageContext.request.contextPath}/user/toIndex">Home</a></li>
	            <li><a href="${pageContext.request.contextPath}/book/allBook">Audio</a></li>
	            <li>${book.name}</li>
            </ol>
		</div>
		<!-- /container -->
   	</div>
    <!-- =====================================
    	==== End breadcrumb -->


	<!-- =====================================
    	==== Start single-product -->
	<div class="single-product">
		<!-- Container -->
		<div class="container">
			<!-- Row -->
			<div class="row">
				<div class="product-info">
					<div class="col-md-6">
						<div class="row">
		                    <div id="slick-page">
			                    <div class="pagerNavigation pagerNavigationTop">
			                        <span class="top"><i class="fa fa-angle-up"></i></span>                        
			                    </div>                    
			                    <div class="slick-pager">
			                      	<a data-slide-index="1">
			                      	  <img class="product-featured-image" src="${pageContext.request.contextPath}/${book.image}" alt="">
			                      	</a>
			                      
			                    </div>
			                    <div class="pagerNavigation pagerNavigationBottom">                        
			                        <span class="bottom"><i class="fa fa-angle-down"></i></span>
			                    </div>
			                </div>
		                </div>
			 		</div>
			 		<div class="col-md-6">
						<input type="hidden" name="id" id="bookId" value="${book.id}">
						<input type="hidden" name="name" id="name" value="${book.name}">
						<input type="hidden" name="type" id="type" value="${book.type}">
						<input type="hidden" name="price" id="price" value="${book.price}">
						<input type="hidden" name="press" id="press" value="${book.press}">
						<input type="hidden" name="author" id="author" value="${book.author}">
						<input type="hidden" name="publicdate" id="publicdate" value="${book.publicdate}">
						<input type="hidden" name="bookcount" id="bookcount" value="${book.bookcount}">
						<input type="hidden" name="image" id="image" value="${book.image}">
						<input type="hidden" name="info" id="info" value="${book.info}">
						<div class="product-meta clearfix">
							<h4 class="product-name">
								<a href="#" title="">${book.name}</a>
							</h4><!-- /.product-product -->

							<div class="product-price">
								<span class="amout">
									<span><span class="money" data-currency-usd="${book.name}">${book.name}</span></span>
								</span>
							</div><!-- /.product-price -->
							<div class="excerpt">
								${book.info}
						    </div>
						    <div class="product-footer">
								<input class="cart-qty-box" id="num" type="number" name="num" value="1">
								<a onclick="javascript:checkAddCarForm();">Add to Cart</a>
							</div>
						</div><!-- /.product-meta -->
			 		</div>
			 	</div>
			 	<!-- product-tab-description -->
			 	<div class="col-md-12 product-description-tabs">
	                <ul class="nav">
					    <li class="active"><a data-toggle="tab" href="#tab_description">Description</a></li>
					    <li><a data-toggle="tab" href="#tab_information">Additional information</a></li>
					    <li><a data-toggle="tab" href="#tab_reviews">Review (2)</a></li>
					</ul>
					<div class="tab-content">
					    <div id="tab_description" class="tab-pane fade in active">
					      	In a urna a ipsum lacinia fermentum id nec est. Ut eleifend neque at rutrum malesuada. Aenean dignissim rhoncus felis, sed varius eros elementum vitae. Donec vitae molestie tellus. Mauris mollis vestibulum condimentum. Curabitur eu nibh vitae ante rhoncus auctor tincidunt vitae ligula. Morbi tempus sit amet risus a scelerisque. Duis eget condimentum nibh, sit amet tincidunt lacus. Quisque vel diam suscipit neque bibendum viverra in eu nisi.
					      	<p>
					      	In a urna a ipsum lacinia fermentum id nec est. Ut eleifend neque at rutrum malesuada. Aenean dignissim rhoncus felis, sed varius eros elementum vitae. Donec vitae molestie tellus. Mauris mollis vestibulum condimentum. Curabitur eu nibh vitae ante rhoncus auctor tincidunt vitae ligula. Morbi tempus sit amet risus a scelerisque. Duis eget condimentum nibh, sit amet tincidunt lacus. Quisque vel diam suscipit neque bibendum viverra in eu nisi.
					      </p>
					      <p>
					      	In a urna a ipsum lacinia fermentum id nec est. Ut eleifend neque at rutrum malesuada. Aenean dignissim rhoncus felis, sed varius eros elementum vitae. Donec vitae molestie tellus. Mauris mollis vestibulum condimentum. Curabitur eu nibh vitae ante rhoncus auctor tincidunt vitae ligula. Morbi tempus sit amet risus a scelerisque. Duis eget condimentum nibh, sit amet tincidunt lacus. Quisque vel diam suscipit neque bibendum viverra in eu nisi.
					      	</p>
					      
					    </div>
					    <div id="tab_information" class="tab-pane fade">
					      	In a urna a ipsum lacinia fermentum id nec est. Ut eleifend neque at rutrum malesuada. Aenean dignissim rhoncus felis, sed varius eros elementum vitae. Donec vitae molestie tellus. Mauris mollis vestibulum condimentum. Curabitur eu nibh vitae ante rhoncus auctor tincidunt vitae ligula. Morbi tempus sit amet risus a scelerisque. Duis eget condimentum nibh, sit amet tincidunt lacus. Quisque vel diam suscipit neque bibendum viverra in eu nisi.
					      	In a urna a ipsum lacinia fermentum id nec est. Ut eleifend neque at rutrum malesuada. Aenean dignissim rhoncus felis, sed varius eros elementum vitae. Donec vitae molestie tellus. Mauris mollis vestibulum condimentum. Curabitur eu nibh vitae ante rhoncus auctor tincidunt vitae ligula. Morbi tempus sit amet risus a scelerisque. Duis eget condimentum nibh, sit amet tincidunt lacus. Quisque vel diam suscipit neque bibendum viverra in eu nisi.
					    </div>
					    <div id="tab_reviews" class="tab-pane fade">
				            <div class="rattings-wrapper">
				            	<div class="review-ratting">
                                    <div class="star-author-all">
                                        <div class="ratting-author">
                                            <h3>Jane Watson</h3>
                                            <span>12:24</span>
                                            <span>9 March 2018</span>
                                        </div>
                                        <div class="ratting-star">
                                            <span class="fa fa-star" aria-hidden="true"></span>
                                            <span class="fa fa-star" aria-hidden="true"></span>
                                            <span class="fa fa-star" aria-hidden="true"></span>
                                            <span class="fa fa-star" aria-hidden="true"></span>
                                            <span class="fa fa-star" aria-hidden="true"></span>
                                            <span>(5)</span>
                                        </div>
                                    </div>

                                    <div class="reviews_content clearfix">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Utenim ad minim veniam, quis nost rud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Utenim ad minim veniam, quis nost.</div>
                                </div>
                                <div class="review-ratting">
                                    <div class="star-author-all">
                                        <div class="ratting-author">
                                            <h3>Emma Doe</h3>
                                            <span>12:24</span>
                                            <span>9 March 2018</span>
                                        </div>
                                        <div class="ratting-star">
                                            <span class="fa fa-star" aria-hidden="true"></span>
                                            <span class="fa fa-star" aria-hidden="true"></span>
                                            <span class="fa fa-star" aria-hidden="true"></span>
                                            <span class="fa fa-star" aria-hidden="true"></span>
                                            <span class="fa fa-star" aria-hidden="true"></span>
                                            <span>(5)</span>
                                        </div>
                                    </div>

                                    <div class="reviews_content clearfix">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Utenim ad minim veniam, quis nost rud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Utenim ad minim veniam, quis nost.</div>
                                </div>
				            </div>
					        <form class="form-product-review" action="do_action" method="post">
				                <h5>ADD YOUR REVIEW</h5>
				                <div class="form-group">
			                    	<label class="control-label">Your Rating</label>
				                    <p class="ratting-star">
			                    	 	<span class="fa fa-star" aria-hidden="true"></span>
                                        <span class="fa fa-star" aria-hidden="true"></span>
                                        <span class="fa fa-star" aria-hidden="true"></span>
                                        <span class="fa fa-star" aria-hidden="true"></span>
                                        <span class="fa fa-star" aria-hidden="true"></span>
			                    	</p>
			                    </div>
			                    <div class="form-group">
			                    	<label class="control-label" for="comment">Your Review</label>
			                    	<textarea id="comment" class="form-control" name="comment" cols="45" rows="8" aria-required="true"></textarea>
			                    </div>
				                <div class="row">

				                    <div class="form-group col-md-6">
				                      	<label for="email" class="control-label">Email 
				                      		<span class="required">*</span>
				                      	</label>
				                      	<input id="email" class="form-control" name="email" type="text" value="" size="30" aria-required="true">
				                    </div>
				                    <div class="form-submit col-md-12">
										<input name="submit" type="submit" id="submit" class="btn btn-primary" value="Send"> 
										<input type="hidden" name="comment_post_ID" value="" id="comment_post_ID"> 
										<input type="hidden" name="comment_parent" id="comment_parent" value="">
									</div>
				                </div>
				             </form>
					    </div>    
					</div>
			 	</div>
			 	<!--/product-tab-description -->
	 		</div>
	 	</div>
	</div>
	<!-- =====================================
    	==== End single-product -->

	<!-- =====================================
    	==== Start up-sells -->
	<div class="up-sells pt-20">
		<!-- Container -->
		<div class="container">
			<!-- Row -->
			<div class="row">
				<div class="col-md-12">
					<div class=" up-sells_content pt-30">
						<h3 class="theme-heading">You May Also Like</h3>
						<div class="product products-grid">
							<div class="owl-carousel owl-theme" data-pagination="true" data-nav="flase" data-items="3" data-large="3" data-medium="3" data-smallmedium="2" data-extrasmall="1" data-verysmall="1" data-autoplay="true">
			            		<div class="item">
			            			<div class="product-block" data-publish-date="">
										<div class="product-image ">
											<div class="product-thumbnail">
												<a href="${pageContext.request.contextPath}/book/allBook" title="">
													<img class="product-featured-image" src="${pageContext.request.contextPath}/assets/images/product/product_4.jpg" alt="">
												</a>
											</div>
											<div class="product-actions">
												<a href="#" data-id="" class="btn wishlist product-quick-whistlist" title="Add to whistlist">
												<i class="fa fa-heart-o"></i>
												</a>
												<a href="" data-id="" class="btn product-quick-view btn-quickview" title="Quickview">
												    <i class="fa fa-eye"></i>
												</a>
												<a href="" data-id="" class="btn product-quick-compare btn-compare" title="Compare">
												    <i class="fa fa-retweet"></i>
												</a>
											</div>
										</div><!-- /.product-image -->
										<div class="product-meta">
											<span class="product-rating" data-rating="">
												<span class="star-rating">
													<i class="fa fa-star-o"></i>
													<i class="fa fa-star-o"></i>
													<i class="fa fa-star-o"></i>
													<i class="fa fa-star-o"></i>
													<i class="fa fa-star-o"></i>
												</span>
											</span>
											<!-- end rating -->
											<h4 class="product-name">
												<a href="${pageContext.request.contextPath}/book/allBook" title="">
													${book.name}
												</a>
											</h4>
											<div class="product-price">
												<span class="amout">
													<span class="money" data-currency-usd="$700.00">$700.0</span>
												</span>
												<a onclick="javascript:checkAddCarForm();">Add to Cart</a>
											</div>
										</div><!-- /.product-meta -->
									</div>
			            		</div>
			            		<div class="item">
			            			<div class="product-block" data-publish-date="">
										<div class="product-image ">
											<div class="product-thumbnail">
												<a href="${pageContext.request.contextPath}/book/allBook" title="">
													<img class="product-featured-image" src="${pageContext.request.contextPath}/assets/images/product/product_1.jpg" alt="">
												</a>
											</div>
											<div class="product-actions">
												<a href="#" data-id="" class="btn wishlist product-quick-whistlist" title="Add to whistlist">
												<i class="fa fa-heart-o"></i>
												</a>
												<a href="" data-id="" class="btn product-quick-view btn-quickview" title="Quickview">
												    <i class="fa fa-eye"></i>
												</a>
												<a href="" data-id="" class="btn product-quick-compare btn-compare" title="Compare">
												    <i class="fa fa-retweet"></i>
												</a>
											</div>
										</div><!-- /.product-image -->
										<div class="product-meta">
											<span class="product-rating" data-rating="">
												<span class="star-rating">
													<i class="fa fa-star-o"></i>
													<i class="fa fa-star-o"></i>
													<i class="fa fa-star-o"></i>
													<i class="fa fa-star-o"></i>
													<i class="fa fa-star-o"></i>
												</span>
											</span>
											<!-- end rating -->
											<h4 class="product-name">
												<a href="${pageContext.request.contextPath}/book/allBook" title="">
													Casual Premium edition
												</a>
											</h4>
											<div class="product-price">
												<span class="amout">
													<span class="money" data-currency-usd="$700.00">$700.0</span>
												</span>
												<a onclick="javascript:checkAddCarForm();">Add to Cart</a>
											</div>
										</div><!-- /.product-meta -->
									</div>
			            		</div>
			            		<div class="item">
			            			<div class="product-block" data-publish-date="">
										<div class="product-image ">
											<div class="product-thumbnail">
												<a href="${pageContext.request.contextPath}/book/allBook" title="">
													<img class="product-featured-image" src="${pageContext.request.contextPath}/assets/images/product/product_5.jpg" alt="">
												</a>
											</div>
											<div class="product-actions">
												<a href="#" data-id="" class="btn wishlist product-quick-whistlist" title="Add to whistlist">
												<i class="fa fa-heart-o"></i>
												</a>
												<a href="" data-id="" class="btn product-quick-view btn-quickview" title="Quickview">
												    <i class="fa fa-eye"></i>
												</a>
												<a href="" data-id="" class="btn product-quick-compare btn-compare" title="Compare">
												    <i class="fa fa-retweet"></i>
												</a>
											</div>
										</div><!-- /.product-image -->
										<div class="product-meta">
											<span class="product-rating" data-rating="">
												<span class="star-rating">
													<i class="fa fa-star-o"></i>
													<i class="fa fa-star-o"></i>
													<i class="fa fa-star-o"></i>
													<i class="fa fa-star-o"></i>
													<i class="fa fa-star-o"></i>
												</span>
											</span>
											<!-- end rating -->
											<h4 class="product-name">
												<a href="${pageContext.request.contextPath}/book/allBook" title="">
													Gold Limited edition
												</a>
											</h4>
											<div class="product-price">
												<span class="amout">
													<span class="money" data-currency-usd="$700.00">$700.0</span>
												</span>
												<a onclick="javascript:checkAddCarForm();">Add to Cart</a>
											</div>
										</div><!-- /.product-meta -->
									</div>
			            		</div>
			            		<div class="item">
			            			<div class="product-block" data-publish-date="">
										<div class="product-image ">
											<div class="product-thumbnail">
												<a href="${pageContext.request.contextPath}/book/allBook" title="">
													<img class="product-featured-image" src="${pageContext.request.contextPath}/assets/images/product/product_6.jpg" alt="">
												</a>
											</div>
											<div class="product-actions">
												<a href="#" data-id="" class="btn wishlist product-quick-whistlist" title="Add to whistlist">
												<i class="fa fa-heart-o"></i>
												</a>
												<a href="" data-id="" class="btn product-quick-view btn-quickview" title="Quickview">
												    <i class="fa fa-eye"></i>
												</a>
												<a href="" data-id="" class="btn product-quick-compare btn-compare" title="Compare">
												    <i class="fa fa-retweet"></i>
												</a>
											</div>
										</div><!-- /.product-image -->
										<div class="product-meta">
											<span class="product-rating" data-rating="">
												<span class="star-rating">
													<i class="fa fa-star-o"></i>
													<i class="fa fa-star-o"></i>
													<i class="fa fa-star-o"></i>
													<i class="fa fa-star-o"></i>
													<i class="fa fa-star-o"></i>
												</span>
											</span>
											<!-- end rating -->
											<h4 class="product-name">
												<a href="${pageContext.request.contextPath}/book/allBook" title="">
													Casual Premium edition
												</a>
											</h4>
											<div class="product-price">
												<span class="amout">
													<span class="money" data-currency-usd="$700.00">$700.0</span>
												</span>
												<a onclick="javascript:checkAddCarForm();">Add to Cart</a>
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
	</div>
	<!-- =====================================
    	==== End up-sells -->

  <!-- =====================================================================
    	==== Start footer -->
	<footer class="site-footer site-footer-1 clearfix">
    	<div class="site-footer__top">
    		<div class="container">
	    		<div class="newsletter text-white">
		    	    <h3>Subscribe Newsletter</h3>
					<p class="newsletter-description">Sign up to receive 15% off your first order! </p>
					<form action="#" method="post" id="mc-embedded-subscribe-form" name="mc-embedded-subscribe-form" target="_blank" class="form-horizontal">
						<div class="newsletter-form">
						<input type="email" value="" placeholder="Email address" name="EMAIL" id="mail" aria-label="email@example.com">
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
	        		Copyright &copy; 2019.Company name All rights reserved.<a target="_blank" href="http://sc.chinaz.com/moban/">&#x7F51;&#x9875;&#x6A21;&#x677F;</a>
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
	<script src="<%=path%>/js/sweetalert.min.js"></script>
	<script type="text/javascript">
		function checkAddCarForm() {
			const num = document.getElementById("num").value;
			if (num instanceof Number || num < 1) {
				alert("请输入购买数量");
				document.getElementById("num").focus();
			} else {
				//document.addCarForm.submit();
				const id = document.getElementById("bookId").value;
				const name = document.getElementById("name").value;
				const type = document.getElementById("type").value;
				const price = document.getElementById("price").value;
				const press = document.getElementById("press").value;
				const author = document.getElementById("author").value;
				const publicdate = document.getElementById("publicdate").value;
				const bookcount = document.getElementById("bookcount").value;
				const image = document.getElementById("image").value;
				const info = document.getElementById("info").value;
				const num = document.getElementById("num").value;
				const data = {
					id: id,
					name: name,
					type: type,
					price: price,
					press: press,
					author: author,
					publicdate: publicdate,
					bookcount: bookcount,
					image: image,
					info: info
				};
				console.log(data)
				$.ajax({
					type: "POST",
					url: "${pageContext.request.contextPath}/cart/updateCart/" + num,
					data: data,
					dataType: "text",
					success: function (result) {
						if ("notData" == result) {
							swal("哎呦……", "数据出现了一点小问题，请重新提交！", "error");
							return;
						}
						swal({
							title:"添加成功！",
							text: "正在跳转至购物车！",
							type: "success",
							confirmButtonText: "确定",
						}, function () {
							window.location.href = "/cart/list"
						});
					}
				})
			}
		}
	</script>

	<!-- ================================================================
    	==== End all js here -->
     
</body>
</html>