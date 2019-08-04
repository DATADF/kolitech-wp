<?php get_header(); ?>

    <!-- Hero -->
    <!-- <section id="home" class="hero">
        
        <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
            <div class="container">
                <ol class="carousel-indicators">
                    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                </ol>
                <div class="scroll carousel-inner">
                    <div class="carousel-item active">
                        <h1>Lorem, ipsum dolor.</h1>
                        <h2>Lorem ipsum dolor sit amet consectetur.</h2>
                        <button href="single.html" class="btn my-btn-outline">Read More</button>
                    </div>
                    <div class="carousel-item">
                        <h1>Lorem ipsum dolor sit .</h1>
                        <h2>Lorem ipsum dolor sit amet consectetur adipisicing elit.</h2>
                        <button href="single.html" class="btn my-btn-outline">Read More</button>
                    </div>
                    <div class="carousel-item ">
                        <h1>Lorem ipsum.</h1>
                        <h2>Lorem ipsum dolor sit amet consectetur.</h2>
                        <button href="single.html" class="btn my-btn-outline">Read More</button>
                    </div>
                </div>
            </div>
        </div>
        
    </section> -->
    <!-- Hero -->

    <!-- Start about -->
    <section id="about" class="about py-5">
        <div  class="container">
            <h2 class="pt-5">About <strong class="text-primary">US</strong></h2>

            <figure>
                <img src="image/avatar.png" alt="avatar kleber">
            </figure>

            <p class="text-center">Lorem ipsum, dolor sit amet consectetur adipisicing elit. Eveniet ex eaque earum nulla reiciendis quas, rem tempore eius corporis distinctio illum voluptas! Quaerat, amet nihil! Eos saepe dolore provident fugiat facilis laudantium fuga ipsam distinctio, alias hic voluptate velit assumenda accusamus? Iusto dolorem doloremque similique deleniti incidunt? Quod, fugit quas.</p>

            <div class="flex-container">
                <div class="skills">
                    <h3>skills</h3>
                    <p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Eveniet ex eaque earum nulla reiciendis quas, rem tempore
                        eius corporis distinctio illum voluptas! Quaerat, amet nihil! Eos saepe dolore provident fugiat facilis laudantium
                        fuga ipsam distinctio, alias hic voluptate velit assumenda accusamus? Iusto dolorem doloremque similique deleniti
                        incidunt? Quod, fugit quas.</p>
                </div>
                <div class="experience">
                    <h3>experiences</h3>
                    <p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Vel natus nesciunt quae quos ipsam unde.</p>
                    <ul>
                        <li><a href="#">Empresa tal</a> - <small>2000 to 2003</small></li>
                        <li><a href="#">Mais uma empresa</a> - <small>2004 to 2010</small></li>
                        <li><a href="#">Outra empresa</a> - <small>2010 to 2016</small></li>
                        <li><a href="#">Esta empresa também</a> - <small>2016 to 2018</small></li>
                    </ul>
                </div>
            </div>
        </div>
    </section>
    <!-- End about -->

    <!-- Contact -->
    <section id="contact" class="contact py-5">
        <div class="container">
            <h2 class="pt-5">Contact <strong>US</strong></h2>
    
            <p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Eveniet ex eaque earum nulla reiciendis quas, rem
                tempore eius corporis distinctio illum voluptas! Quaerat, amet nihil! Eos saepe dolore provident fugiat
                facilis laudantium fuga ipsam distinctio, alias hic voluptate velit assumenda accusamus? Iusto dolorem
                doloremque similique deleniti incidunt? Quod, fugit quas.</p>
            
            <div class="flex-container">
                <div class="means-contact">
                    <h2>means of contact</h2>
                    <h3>telephones</h3>
                    <div class="form-group">
                        <ul>
                            <li><strong>Fixed: </strong>
                                <p>+55 5654-56489</p>
                            </li>
                            <li><strong>Cell Phone: </strong>
                                <p>+55 5654-56489</p>
                            </li>
                        </ul>
                    </div>
                    <h3>E-mails</h3>
                    <div class="form-group">
                        <ul>
                            <li><strong>Option 1: </strong>
                                <p><a href="mailto:bitelo@gmail.com">bitelo@gmail.com</a></p>
                            </li>
                            <li><strong>Option 2: </strong>
                                <p><a href="mailto:kolitech@koli.tech">kolitech@koli.tech</a></p>
                            </li>
                        </ul>
                    </div>
                    <h3>social media</h3>
                    <ul class="mb-5">
                        <li><a href="#"><i class="fab fa-facebook"></a></i></li>
                        <li><a href="#"><i class="fab fa-twitter"></a></i></li>
                        <li><a href="#"><i class="fab fa-instagram"></a></i></li>
                    </ul>
                </div>
                
                <form class="form-contact">
                    <h2>send your message</h2>
                    <div class="form-group">
                        <label for="name">Name</label>
                        <input type="text" class="form-control" id="name" placeholder="Name">
                    </div>
                    <div class="form-group">
                        <label for="email">Email address</label>
                        <input type="email" class="form-control" id="email" placeholder="name@example.com">
                    </div>
                    <div class="form-group">
                        <label for="subject">Subject</label>
                        <input type="subject" class="form-control" id="subject" placeholder="Subject">
                    </div>
                    <div class="form-group">
                        <label for="message">Message</label>
                        <textarea class="form-control" id="exampleFormControlTextarea1" rows="5"></textarea>
                    </div>
                
                    <button class="btn my-btn-primary" type="submit">Send</button>
                </form>
                
            </div>
        </div>

        
    </section>
    <!-- Contact -->

<?php get_footer(); ?> 