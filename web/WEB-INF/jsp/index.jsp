<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">

	<title>Home</title>

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
						<li class="dropdown active">
							<a href="${pageContext.request.contextPath}/user/toIndex">Home</a>
							<ul class="dropdown-menu">
				            	<li><a href="../${pageContext.request.contextPath}/user/toIndex">Home 1</a>
				            	</li>
				            	<li><a href="../v3/${pageContext.request.contextPath}/user/toIndex">Home 3</a></li>
			            	</ul>
						</li>
			         	<li class="dropdown">
			         		<a href="${pageContext.request.contextPath}/book/allBook">Product</a>
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
	
 	<!-- slider home -->
	<div class="section-main-slider">
	    <div class="main-slider my-slider slider-pro" id="my-slider-1" data-slider-width="100%" data-slider-height="680">
	        <div class="sp-slides  text-white">
	            <!-- Slide 1 -->
	           	<div class="sp-slide">
				    <div class="container">

				        <h2 class="sp-layer main-slider__title" data-horizontal="0" data-vertical="120" data-show-transition="up" data-hide-transition="left" data-show-duration="800" data-show-delay="800" data-hide-delay="800">
								For people who do not<br>
								go with the times
						</h2>

				        <div class="sp-layer main-slider__text" data-horizontal="0" data-vertical="310"  data-show-transition="up" data-hide-transition="left" data-show-duration="800" data-show-delay="1200" data-hide-delay="1200">
				            <p>Designs that inspire us most exist beyond trend, span decades,<br>
							and live on for generations.</p>
				            <div class="main-slider__btn-group">
				                <a class="mt-20 btn-primary btn" href="${pageContext.request.contextPath}/book/allBook">Shop Now <i class="fa fa-long-arrow-right" aria-hidden="true"></i></a>
				                
				            </div>
				        </div>
				        <span class="sp-layer main-slider__img" data-horizontal="900" data-vertical="60" data-width="30%" data-show-transition="up" data-hide-transition="left" data-show-duration="800" data-show-delay="400" data-hide-delay="400">
								<img class="img-responsive" src="${pageContext.request.contextPath}/assets/images/slider/image_slider.png" height="630" width="545" alt="">
						</span>
				    </div>
				</div>
	            <!-- end sp-slide -->
	             <!-- Slide 1 -->
	           	<div class="sp-slide">
				    <div class="container">

				        <h2 class="sp-layer main-slider__title" data-horizontal="0" data-vertical="120" data-show-transition="up" data-hide-transition="left" data-show-duration="800" data-show-delay="800" data-hide-delay="800">
								For people who do not<br>
								go with the times
						</h2>

				        <div class="sp-layer main-slider__text" data-horizontal="0" data-vertical="310"  data-show-transition="up" data-hide-transition="left" data-show-duration="800" data-show-delay="1200" data-hide-delay="1200">
				           <p class="hidden-xs">Designs that inspire us most exist beyond trend, span decades,<br>
							and live on for generations.</p>
				            <div class="main-slider__btn-group">
				                
				                <a class="mt-20 btn-primary btn" href="product_list">Shop Now
				                <i class="fa fa-long-arrow-right" aria-hidden="true"></i></a>
				            </div>
				        </div>
				        <span class="sp-layer main-slider__img" data-horizontal="900" data-vertical="60" data-width="30%" data-show-transition="up" data-hide-transition="left" data-show-duration="800" data-show-delay="400" data-hide-delay="400">
								<img class="img-responsive" src="${pageContext.request.contextPath}/assets/images/slider/image_slider.png" height="630" width="545" alt="">
						</span>
				    </div>
				</div>
	            <!-- end sp-slide -->
	        </div>
	        <!-- end sp-slides -->
	    </div>
	    <!-- end main-slider -->
	</div>
	<!-- /end slider home -->

	<!-- Features -->
	<div class="features skin1 pt-100 pb-30">
		<!-- Container -->
		<div class="container-fluid">
			<!-- Row -->
			<div class="row">
				<!-- features -->
				<div class="col-md-4 col-sm-12 col-xs-12 features__left pb-50">
					<div class="heading text-uppercase">
						<div class="heading__sub">
							awesome features
						</div>
						<div class="heading__title">
							You’ll be happy to see our awesome features.
						</div>
					</div>
					<div class="features-description">
						Molestie at elementum eu facilisis sed odio. Scelerisque in dictum non consectetur a erat. Aliquam id diam maecenas ultricies mi eget mauris. Ultrices sagittis orci a scelerisque purus.
					<br/>
						Ultrices sagittis orci a scelerisque purus.
					</div>
					<a href="${pageContext.request.contextPath}/book/allBook" class="color-second pt-40">Exprore our products!</a>
				</div>
				<div class="col-md-4 col-sm-6 col-xs-12 features__cente pb-50">
					<img src="${pageContext.request.contextPath}/assets/images/image_feature.png" alt="">
				</div>
				<div class="col-md-4 col-sm-6 col-xs-12 features__right pb-50">
					<div class="features_list">
						<div class="features-images">
							<img src="${pageContext.request.contextPath}/assets/images/icon_feature1.png" alt="">
						</div>
						<div  class="features-description">
							<h4>Smart Connection</h4>
							<p>Paper had only a child’s pinkie bonewo with. His group surprise the wword in 20 reporting that it had extracted</p>
						</div>
					</div>
					<div class="features_list">
						<div class="features-images">
							<img src="${pageContext.request.contextPath}/assets/images/icon_feature2.png" alt="">
						</div>
						<div  class="features-description">
							<h4>Allways on color display</h4>
							<p>Maecenas tempus tellus eget condimentum rhoncus sem quam semper libero sit amet.</p>
						</div>
					</div>
					<div class="features_list">
						<div class="features-images">
							<img src="${pageContext.request.contextPath}/assets/images/icon_feature3.png" alt="">
						</div>
						<div  class="features-description">
							<h4>Voice reply notifications</h4>
							<p>Paper had only a child’s pinkie bonewo with. His group surprise the wword in 20 reporting that it had extracted</p>
						</div>
					</div>
				</div>
				<!-- /features -->
			</div>
			<!-- /Row -->
		</div>
		<!-- /Container -->
	</div>
	<!-- /Features -->

	<!-- Video -->
	<div class="video section-bg bg-overlay pt-120 pb-250" style="background-image:url(${pageContext.request.contextPath}/assets/images/bg_video.jpg)">
		<div class="heading text-uppercase text-center text-white">
			<div class="heading__sub">
				See it in action
			</div>
			<div class="heading__title">
				How to made
			</div>
		</div>
		<div class="video_player">
			<a href="http://www.datouwang.com/" data-rel="prettyPhoto[videos]" title="">
			    <div class="video-play-button" data-video-play-button="">
		          	<svg class="video-play-icon" xmlns="http://www.w3.org/2000/svg" width="24" height="39" viewBox="0 0 24 39">
		            <path fill="currentColor" fill-rule="evenodd" d="M24 19.355L0 38.71V0"></path>
		          	</svg>
        		</div>
			</a>
		</div>
	</div>
    <!-- /Video -->

	<!-- /quality -->
	<div class="quality section-bg pt-120 pb-80" style="background-image:url(${pageContext.request.contextPath}/assets/images/bg_quality.jpg)">
		<div class="container-fluid">
	        <div class="row">
	            <div class="col-lg-5 col-md-4">
	            	<img src="${pageContext.request.contextPath}/assets/images/image_quality.png" alt="">
	            </div>

	            <div class="col-lg-7 col-md-8">
	            	<div class="heading text-uppercase">
						<div class="heading__sub">
							Best Quality Watchs
						</div>
						<div class="heading__title">
							Tech SPECIFICATION
						</div>
					</div>
					<div class="row">
		            	<div class="col-md-4">
			                <div class="list-descriptions">
			                    <h5 class="list-descriptions__name">SIZE AND DIMENSIONS</h5>
			                    <div class="list-descriptions__description">2.5” x 2.0” x 0.8” (51.0 x 51.0 x 17.0 mm)</div>
			                </div>
			                <div class="list-descriptions">
			                    <h5 class="list-descriptions__name">DISPLAY SIZE. WXH</h5>
			                    <div class="list-descriptions__description">1.2” (30.4 mm)</div>
			                </div>
			                <div class="list-descriptions">
			                    <h5 class="list-descriptions__name">WEIGHT</h5>
			                    <div class="list-descriptions__description">2.3 oz / 66 g</div>
			                </div>
			                <div class="list-descriptions">
			                    <h5 class="list-descriptions__name">DISPLAY SIZE. WXH</h5>
			                    <div class="list-descriptions__description">1.2” (30.4 mm)</div>
			                </div>
			            </div>
			            <div class="col-md-4">
			                <div class="list-descriptions">
			                    <h5 class="list-descriptions__name">Battery Lifetime</h5>
			                    <div class="list-descriptions__description">
			                    	Upto 50 hours (with average use)
			                    </div>
			                </div>
			                <div class="list-descriptions">
			                    <h5 class="list-descriptions__name">Additional</h5>
			                    <div class="list-descriptions__description">
			                    	High-sensitivity receiver, Vibration alert,
	                            </div>
			                </div>
			                <div class="list-descriptions">
			                    <h5 class="list-descriptions__name">sensors</h5>
			                    <div class="list-descriptions__description">Indoor Tracker, Compass</div>
			                </div>
			                
			                <div class="list-descriptions">
			                    <h5 class="list-descriptions__name">ACTIVITIES</h5>
			                    <div class="list-descriptions__description">
			                    	Indoor Running, Outdoor Running, Cycling 
									Dedicated Bike Mount, Swimming
								</div>
			                </div>
			            </div>
			            <div class="col-md-4">
			                <div class="list-descriptions">
			                    <h5 class="list-descriptions__name">Waterproofing</h5>
			                    <div class="list-descriptions__description">40 m / 131 feet (5 ATM)</div>
			                </div>
			                <div class="list-descriptions">
			                    <h5 class="list-descriptions__name">WIRELESS</h5>
			                    <div class="list-descriptions__description">
			                    	2.4 GHz receiver (proprietary)
								</div>
			                </div>
			                <div class="list-descriptions">
			                    <h5 class="list-descriptions__name">IN THE BOX</h5>
			                    <div class="list-descriptions__description">
			                    	EX SportWatch GPS, Extra Strapes 
									USB charging cable, Quick start guide
								</div>
			                </div>
			                <div class="list-descriptions">
			                    <h5 class="list-descriptions__name">Battery Lifetime</h5>
			                    <div class="list-descriptions__description">
			                    	Upto 50 hours (with average use)
								</div>
			                </div>
			            </div>
			        </div>
	            </div>
	        </div>
	    </div>
	</div>
	<!-- /quality -->

    <!-- view-360 -->
	<div class="view-360 pt-120 pb-80">
		<!-- Container -->
		<div class="container">
			<div class="heading text-uppercase text-center">
				<div class="heading__sub">
					SEE IT IN
				</div>
				<div class="heading__title">
					360 - Degree View
				</div>
			</div>
			<div class="rotate" style="background-image:url(${pageContext.request.contextPath}/assets/images/bg_rotate.png)">
 				<div class="spritespin"></div>
 			</div>
	 	</div>
	</div>
	 <!-- /view-360 -->

  	<!-- Testimonials-->
	<div class="testimonials section-bg pb-100 pt-100" style="background-image:url(${pageContext.request.contextPath}/assets/images/bg_testimonial.jpg)">
		<!-- Container -->
		<div class="container">
			<div class="heading text-uppercase text-center">
				<div class="heading__sub">
					Testimonials
				</div>
				<div class="heading__title">
					Our Clients Say
				</div>
			</div>
			<div class="testimonials_content text-center">
 				<div class="owl-carousel owl-theme" data-pagination="false" data-nav="true" data-items="1" data-large="1" data-medium="1" data-smallmedium="1" data-extrasmall="1" data-verysmall="1" data-autoplay="true">
		            <div class="item">
		            	<img src="${pageContext.request.contextPath}/assets/images/icon_testimonial.png" alt="">
		                <div class="testimonials__content">
		                	Beware diet advice that recommends "eating light," for that is most certainly the way you become
							a black hole. I wonder if caterpillars know they're gonna fly some day or they just start building
							a cocoon and are like 'why am I doing this'. 
						</div>
		                <div class="testimonials__name"> PAMELA MOORE</div>
		                <div class="testimonials__job"> CEO, Industrial Company  </div>
		            </div>
		            <div class="item">
		            	<img src="${pageContext.request.contextPath}/assets/images/icon_testimonial.png" alt="">
		                <div class="testimonials__content">
		                	Beware diet advice that recommends "eating light," for that is most certainly the way you become
							a black hole. I wonder if caterpillars know they're gonna fly some day or they just start building
							a cocoon and are like 'why am I doing this'. 
						</div>
		                <div class="testimonials__name"> PAMELA MOORE</div>
		                <div class="testimonials__job"> CEO, Industrial Company  </div>
		            </div>
		            <div class="item">
		            	<img src="${pageContext.request.contextPath}/assets/images/icon_testimonial.png" alt="">
		                <div class="testimonials__content">
		                	Beware diet advice that recommends "eating light," for that is most certainly the way you become
							a black hole. I wonder if caterpillars know they're gonna fly some day or they just start building
							a cocoon and are like 'why am I doing this'. 
						</div>
		                <div class="testimonials__name"> PAMELA MOORE</div>
		                <div class="testimonials__job"> CEO, Industrial Company  </div>
		            </div>
		        </div>
 			</div>
	 	</div>
	</div>
	<!-- /Testimonials-->

	<!-- product-->
	<div class="product products-grid pt-100 pt-80">
		<!-- Container -->
		<div class="container">
			<div class="heading text-uppercase text-center">
				<div class="heading__sub">
					Our products
				</div>
				<div class="heading__title">
					choose the products
				</div>
			</div>
			<div  class="slick-product">
				<div class="owl-carousel owl-theme list-products" data-pagination="true" data-nav="false" data-items="3" data-large="3" data-medium="3" data-smallmedium="2" data-extrasmall="1" data-verysmall="1" data-autoplay="true">
		 			<div class="item">
		 				<div class="product-block" data-publish-date="">
								<div class="product-image">
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
										<a href="${pageContext.request.contextPath}/book/allBook" class="add_to_cart_button">Add to Cart</a>
									</div>
								</div><!-- /.product-meta -->
							</div>
		 			</div>
		 			<div class="item">
		 				<div class="product-block" data-publish-date="">
								<div class="product-image">
									<div class="product-thumbnail">
										<a href="${pageContext.request.contextPath}/book/allBook" title="">
											<img class="product-featured-image" src="${pageContext.request.contextPath}/assets/images/product/product_2.jpg" alt="">
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
										<a href="${pageContext.request.contextPath}/book/allBook" class="add_to_cart_button">Add to Cart</a>
									</div>
								</div><!-- /.product-meta -->
							</div>
		 			</div>
		 			<div class="item">
		 				<div class="product-block" data-publish-date="">
								<div class="product-image">
									<div class="product-thumbnail">
										<a href="${pageContext.request.contextPath}/book/allBook" title="">
											<img class="product-featured-image" src="${pageContext.request.contextPath}/assets/images/product/product_3.jpg" alt="">
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
										<a href="${pageContext.request.contextPath}/book/allBook" class="add_to_cart_button">Add to Cart</a>
									</div>
								</div><!-- /.product-meta -->
							</div>
		 			</div>
		 			<div class="item">
		 				<div class="product-block" data-publish-date="">
								<div class="product-image">
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
										<a href="${pageContext.request.contextPath}/book/allBook" class="add_to_cart_button">Add to Cart</a>
									</div>
								</div><!-- /.product-meta -->
							</div>
		 			</div>
			 	</div>
	 		</div>
	 	</div>
	</div>
	<!-- /product-->
	
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
			    	<div class="col-md-3 col-sm-3 col-xs-12 footer-block footer-1 text-center">
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
			    	<div class="col-md-6 col-sm-5 col-xs-12 footer-block footer-center text-center">
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
			    	<div class="col-md-3 col-sm-4 col-xs-12 footer-block footer-3">
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

   <!-- =====================================================================
    	==== Start preloader -->
    <div id="preloader">
		<div class="preloader">
			<span></span>
			<span></span>
			<span></span>
			<span></span>
		</div>
	</div>
   <!-- =====================================================================
    	==== End preloader -->

	<!-- =====================================
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

	<!-- =====================================
    	==== End all js here -->

</body>
</html>