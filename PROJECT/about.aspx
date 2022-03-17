﻿<%@ Page Title="" Language="C#" MasterPageFile="~/ClientMasterPage.master" AutoEventWireup="true" CodeFile="about.aspx.cs" Inherits="Default3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 

    <!-- inner banner -->
    <section class="inner-banner py-lg-4 pt-lg-0 pt-5">
        <div class="w3l-breadcrumb py-5 mt-lg-0 mt-3">
            <div class="container py-xl-5 py-md-4">
                <h4 class="inner-text-title font-weight-bold mb-md-2 mb-1">About Us</h4>
                <ul class="breadcrumbs-custom-path">
                    <li><a href="index.html">Home</a></li>
                    <li class="active"><span class="fa fa-chevron-right mx-2" aria-hidden="true"></span>About Us</li>
                </ul>
            </div>
        </div>
    </section>
    <!-- //inner banner -->

    <!-- about section -->
    <section class="w3l-features-6 pt-5">
        <div class="container pt-md-5 pt-4">
            <div class="row">
                <div class="col-lg-5 w3l-features-6-left order-lg-first order-last text-center">
                    <img src="assets/images/img1.png" class="img-fluid" alt="" />
                </div>
                <div class="col-lg-7 w3l-features-6-right order-lg-last order-first mb-lg-0 mb-4">
                    <div class="title-main text-center mx-auto mb-sm-5 mb-4" style="max-width:600px;">
                        <p class="mt-md-2">About Us</p>
                        <h3 class="title-style">Welcome to Our <span>Greensward</span>
                        </h3>
                    </div>
                    <div class="row mt-5 pt-lg-4">
                        <div class="col-sm-6 w3l-features-6-sub d-flex">
                            <div class="mr-3">
                                <i class="fas fa-thumbs-up"></i>
                            </div>
                            <div class="">
                                <h5 class="w3l-feature-text mb-3">Our Mission</h5>
                                <p>In a diam et dui elit, orci urna vel id neque. Donec sed tempus enims.</p>
                            </div>
                        </div>
                        <div class="col-sm-6 w3l-features-6-sub d-flex mt-sm-0 mt-4">
                            <div class="mr-3">
                                <i class="fab fa-angellist"></i>
                            </div>
                            <div class="">
                                <h5 class="w3l-feature-text mb-3">Our Vision</h5>
                                <p>In a diam et dui elit, orci urna vel id neque. Donec sed tempus enims.</p>
                            </div>
                        </div>
                    </div>
                    <div class="row mt-sm-5 mt-4">
                        <div class="col-sm-6 w3l-features-6-sub d-flex">
                            <div class="mr-3">
                                <i class="fas fa-lightbulb"></i>
                            </div>
                            <div class="">
                                <h5 class="w3l-feature-text mb-3">Who we are</h5>
                                <p>In a diam et dui elit, orci urna vel id neque. Donec sed tempus enims.</p>
                            </div>
                        </div>
                        <div class="col-sm-6 w3l-features-6-sub d-flex mt-sm-0 mt-4">
                            <div class="mr-3">
                                <i class="fas fa-seedling"></i>
                            </div>
                            <div class="">
                                <h5 class="w3l-feature-text mb-3">What we do</h5>
                                <p>In a diam et dui elit, orci urna vel id neque. Donec sed tempus enims.</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- //about section -->

    <!-- stats -->
    <section class="w3_stats py-5" id="stats">
        <div class="container py-md-5 py-4">
            <div class="w3-stats text-center py-md-4">
                <div class="row mt-4">
                    <div class="col-md-3 col-6">
                        <div class="counter">
                            <i class="fas fa-calendar-alt"></i>
                            <div class="timer count-title count-number mt-3" data-to="30" data-speed="1500"></div>
                            <p class="count-text">Years of Experience</p>
                        </div>
                    </div>
                    <div class="col-md-3 col-6">
                        <div class="counter">
                            <i class="fas fa-smile"></i>
                            <div class="timer count-title count-number mt-3" data-to="36076" data-speed="1500"></div>
                            <p class="count-text">Happy Customers</p>
                        </div>
                    </div>
                    <div class="col-md-3 col-6 mt-md-0 mt-5">
                        <div class="counter">
                            <i class="fas fa-spa"></i>
                            <div class="timer count-title count-number mt-3" data-to="16300" data-speed="1500"></div>
                            <p class="count-text">Gardens Designed</p>
                        </div>
                    </div>
                    <div class="col-md-3 col-6 mt-md-0 mt-5">
                        <div class="counter">
                            <i class="fas fa-award"></i>
                            <div class="timer count-title count-number mt-3" data-to="10630" data-speed="1500"></div>
                            <p class="count-text">Awwards Won</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- //stats -->

    <!-- team section -->
    <section class="w3l-team py-5">
        <div class="container py-md-5 py-4">
            <div class="title-main text-center mx-auto mb-md-5 mb-4" style="max-width:500px;">
                <p class="">Team</p>
                <h3 class="title-style">Meet Our Excellent <span>Team</span>
                </h3>
            </div>
            <div class="row team-row pt-lg-3">
                <div class="col-lg-3 col-sm-6 team-wrap">
                    <div class="team-info">
                        <div class="column position-relative img-circle">
                            <a href="#url"><img src="assets/images/team1.jpg" alt="" class="img-fluid team-image" /></a>
                        </div>
                        <div class="column-btm">
                            <h3 class="name-pos"><a href="#url">Teri Dac</a></h3>
                            <p>Garden Designer</p>
                            <div class="social">
                                <a href="#facebook" class="facebook"><i class="fab fa-facebook-f"></i></a>
                                <a href="#twitter" class="twitter"><i class="fab fa-twitter"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- end team member -->

                <div class="col-lg-3 col-sm-6 team-wrap mt-sm-0 pt-sm-0 mt-4 pt-2">
                    <div class="team-info">
                        <div class="column position-relative img-circle">
                            <a href="#url"><img src="assets/images/team3.jpg" alt="" class="img-fluid team-image" /></a>
                        </div>
                        <div class="column-btm">
                            <h3 class="name-pos"><a href="#url">Aida Joe</a></h3>
                            <p>Landscape Designer</p>
                            <div class="social">
                                <a href="#facebook" class="facebook"><i class="fab fa-facebook-f"></i></a>
                                <a href="#twitter" class="twitter"><i class="fab fa-twitter"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- end team member -->

                <div class="col-lg-3 col-sm-6 team-wrap mt-lg-0 pt-lg-0 mt-4 pt-2">
                    <div class="team-info">
                        <div class="column position-relative img-circle">
                            <a href="#url"><img src="assets/images/team2.jpg" alt="" class="img-fluid team-image" /></a>
                        </div>
                        <div class="column-btm">
                            <h3 class="name-pos"><a href="#url">Anton Bne</a></h3>
                            <p>Garden Designer</p>
                            <div class="social">
                                <a href="#facebook" class="facebook"><i class="fab fa-facebook-f"></i></a>
                                <a href="#twitter" class="twitter"><i class="fab fa-twitter"></i></a>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-lg-3 col-sm-6 team-wrap mt-lg-0 pt-lg-0 mt-4 pt-2">
                    <div class="team-info">
                        <div class="column position-relative img-circle">
                            <a href="#url"><img src="assets/images/team4.jpg" alt="" class="img-fluid team-image" /></a>
                        </div>
                        <div class="column-btm">
                            <h3 class="name-pos"><a href="#url">Olive Yew</a></h3>
                            <p>Landscape Designer</p>
                            <div class="social">
                                <a href="#facebook" class="facebook"><i class="fab fa-facebook-f"></i></a>
                                <a href="#twitter" class="twitter"><i class="fab fa-twitter"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- end team member -->
            </div>
        </div>
    </section>
    <!-- //team section -->

    <!-- content section -->
    <section class="w3l-content-sec py-5" id="testimonials">
        <div class="container py-md-5 py-4">
            <div class="title-main text-center mx-auto mb-lg-5 pb-lg-5" style="max-width:600px;">
                <p class="mt-2 text-white">Gardening</p>
                <h3 class="title-style text-white">We Creating an outdoor <span>Environment</span>
                </h3>
            </div>
        </div>
    </section>
    <section class="top-content-w3l">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-lg-4 col-sm-6">
                    <div class="grid-content-spe">
                        <i class="fas fa-heart"></i>
                        <h4><a href="services.html">We make with Love</a></h4>
                        <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque
                            laudantium.</p>
                        <a href="services.html" class="btn btn-style mt-5">Learn More</a>
                    </div>
                </div>
                <div class="col-lg-4 col-sm-6 mt-sm-0 mt-4">
                    <div class="grid-content-spe">
                        <i class="fas fa-users"></i>
                        <h4><a href="services.html">We Are Professionals</a></h4>
                        <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque
                            laudantium.</p>
                        <a href="services.html" class="btn btn-style mt-5">Learn More</a>
                    </div>
                </div>
                <div class="col-lg-4 col-sm-6 mt-lg-0 mt-4">
                    <div class="grid-content-spe">
                        <i class="fas fa-thumbs-up"></i>
                        <h4><a href="services.html">We do our Best</a></h4>
                        <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque
                            laudantium.</p>
                        <a href="services.html" class="btn btn-style mt-5">Learn More</a>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- //content section -->


    <!-- testimonials section -->
    <section class="w3l-clients py-5" id="testimonials">
        <div class="container py-md-5 py-4">
            <div class="title-main text-center mx-auto mb-5" style="max-width:600px;">
                <p class="mt-2">Testimonials</p>
                <h3 class="title-style">Happy With Customers & <span>Clients</span>
                </h3>
            </div>
            <div class="row mt-4 py-md-2 mb-md-4">
                <div class="item col-md-6 pl-md-0">
                    <div class="testimonial-content">
                        <div class="testimonial">
                            <blockquote>
                                <q>Pellen tesque libero ut justo</q>
                            </blockquote>
                            <p>Lorem ipsum dolor sit amet elit. hic odio tenetur. ante ipsum primis in
                                faucibus orci luctus et ultrices posuere,tesque libero ut justo Semper.</p>
                        </div>
                        <div class="bottom-info mt-4">
                            <div class="people-info align-self">
                                <h3>Johnson william</h3>
                                <ul class="d-flex">
                                    <li><a href="#rating"><i class="fas fa-star"></i></a></li>
                                    <li><a href="#rating"><i class="fas fa-star"></i></a></li>
                                    <li><a href="#rating"><i class="fas fa-star"></i></a></li>
                                    <li><a href="#rating"><i class="fas fa-star"></i></a></li>
                                    <li><a href="#rating"><i class="fas fa-star"></i></a></li>
                                </ul>
                            </div>
                            <a class="comment-img mt-3" href="#url"><img src="assets/images/testi1.jpg"
                                    class="img-responsive" alt="placeholder image"></a>
                        </div>
                    </div>
                </div>
                <div class="item col-md-6 pl-md-0 mt-md-0 mt-sm-5 mt-4">
                    <div class="testimonial-content">
                        <div class="testimonial">
                            <blockquote>
                                <q>Lorem ipsum dolor sit amet</q>
                            </blockquote>
                            <p>Lorem ipsum dolor sit amet elit. hic odio tenetur. ante ipsum primis in
                                faucibus orci luctus et ultrices posuere,tesque libero ut justo Semper.</p>
                        </div>
                        <div class="bottom-info mt-4">
                            <div class="people-info align-self">
                                <h3>Johnson william</h3>
                                <ul class="d-flex">
                                    <li><a href="#rating"><i class="fas fa-star"></i></a></li>
                                    <li><a href="#rating"><i class="fas fa-star"></i></a></li>
                                    <li><a href="#rating"><i class="fas fa-star"></i></a></li>
                                    <li><a href="#rating"><i class="fas fa-star"></i></a></li>
                                    <li><a href="#rating"><i class="fas fa-star"></i></a></li>
                                </ul>
                            </div>
                            <a class="comment-img mt-3" href="#url"><img src="assets/images/testi2.jpg"
                                    class="img-responsive" alt="placeholder image"></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- //testimonials section -->

</asp:Content>

