<?php get_header(); ?>

<section class="py-5">
        <div class="container">
            <hr>
            <h2 class="py-5"><strong class="text-primary">My</strong> Personal <strong class="text-primary">Blog</strong></h2>
            <hr>

            <div class="row">
                <div class="container">
                    <div class="flex-container">

                        <!-- Start Articles -->
                        <div class="articles">
                            <article class="article">
                                <a href="single.html"><h3>Lorem ipsum dolor sit amet consectetur.</h3></a>
                                <small><p>Date: 23/07/2019</p></small>
                                <small>
                                    <p>Categories: <a href="#">tecnology</a> / <a href="#">server</a></p>
                                </small>
                                <small>
                                    <p>Tags: <a href="#">hd</a> / <a href="#">cloud</a></p>
                                </small>
                                <figure>
                                    <img src="http://lorempixel.com/1200/400/technics/" alt="image article">
                                </figure>
                                <p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Sed, molestias hic laborum quis similique ipsam, officiis et eaque necessitatibus voluptatem praesentium blanditiis porro harum tempore impedit a assumenda minima numquam...</p>
                                <a class="btn my-btn-primary" href="single.html">read more</a>
                            </article>
                            
                        </div>
                        <!-- End Articles -->

                        
                        <!-- Start Aside -->
                        <aside class="sidebar">
                            <div class="marketing">
                                <h2>Publicidade</h2>
                                <figure>
                                    <img src="http://lorempixel.com/300/450/sports/" alt="">
                                </figure>
                            </div>
                            <div class="last-posts">
                                <h2>latest articles</h2>

                                <div>
                                    <a href="single.html"><small>01. </small>Consectetur adipisicing elit. Alias, non.</a>
                                    <a href="single.html"><small>02. </small>Totam corporis veritatis magnam.</a>
                                    <a href="single.html"><small>03. </small>Excepturi neque libero aliquam deleniti amet animi distinctio reiciendis.</a>
                                    <a href="single.html"><small>04. </small>Lorem, ipsum dolor.</a>
                                    <a href="single.html"><small>05. </small>Amet consectetur adipisicing elit.</a>
                                </div>
                            </div>
                        </aside>
                        <!-- End Aside -->
                    </div>
                </div>
            </div>
        </div>
    </section>

    <?php get_footer(); ?>