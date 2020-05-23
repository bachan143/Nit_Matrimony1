<!DOCTYPE html>
<!--[if lt IE 7]><html class="lt-ie9 lt-ie8 lt-ie7"><![endif]-->
<!--[if IE 7]><html class="lt-ie9 lt-ie8"><![endif]-->
<!--[if IE 8]><html class="lt-ie9"><![endif]-->
<!--[if gt IE 8]><!--><html><!--<![endif]-->
<head>
<title>Matrimony | About</title>
<meta charset="utf-8">
<link rel="stylesheet" href="css/normalize.css">
<link rel="stylesheet" href="css/foundation.min.css">
<link rel="stylesheet" href="css/superfish.css">
<link rel="stylesheet" href="css/stylesheet.css">
<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300' rel='stylesheet' type='text/css'>
<script src="js/custom.modernizr.js"></script>
<script>
	Modernizr.load({
    // test if browser understands media queries
    test: Modernizr.mq('only all'),
    // if not load ie8-grid
    nope: 'css/ie8-grid-foundation-4.css'
});
</script>
<!--[if lt IE 9]>
<link rel="stylesheet" href="css/ie-fixes.css">
<![endif]-->
</head>
<body>
<div class="row header">
  <div class="columns large-12">
    <div class="row collapse header-inner">
      <div class="columns large-3"> <a href="index.jsp"><img src="images/logo.png" alt=""></a> </div>
      <div class="columns top-menu large-9  top-nav">
        <nav>
          <section>
            <ul class="sf-menu large-12">
              <li class="active"><a href="index.jsp">Home</a></li>
              <li><a href="about.jsp">About us</a></li>
              <li><a href="blog.jsp">Blog</a></li>
             
                <li><a href="services.jsp">Services</a></li>
              <!--  
              <li class="has-dropdown"><a href="services.html">Services</a>
                <ul class="dropdown">
                  <li class="has-dropdown"><a href="#">Dropdown Level 1a</a>
                    <ul class="dropdown">
                      <li><a href="#">Dropdown Level 2a</a></li>
                      <li><a href="#">Dropdown Level 2b</a></li>
                    </ul>
                  </li>
                  <li><a href="#">Dropdown Level 1b</a></li>
                  <li><a href="#">Dropdown Level 1c</a></li>
                  <li><a href="#">Dropdown Level 1d</a></li>
                  <li><a href="#">See all &rarr;</a></li>
                </ul>
              </li> -->
              <li><a href="contact.jsp">Contact Us</a></li>
            </ul>
          </section>
        </nav>
      </div>
    </div>
  </div>
  <div class="columns large-12 small-top-menu">
    <div class="row">
      <div class="columns large-12 plr0 top-nav">
        <form name="dropdown" class="dropdown" action="#">
          <nav>
            <section>
              <select name="selected" id="target" accesskey="E" onChange="goToNewPage(document.dropdown.selected)">
                <option value="index.jsp">home</option>
                <option value="about.jsp">about us</option>
                <option value="blog.jsp">blog</option>
                <option value="services.html">services</option>
                <option value="contact.jsp">contact us</option>
              </select>
            </section>
          </nav>
        </form>
      </div>
    </div>
  </div>
</div>
<div class="row content-wrapper">
  <div class="columns large-12">
    <div class="row wrapper">
      <div class="columns large-12 content">
        <h1 class="page-title">About Us</h1>
        <div>
          <h2 class="sub-title">Matrimony.com is an advanced search engine for people looking to get married. Matrimony.com aggregates Indian profiles from multiple matrimonial service providers in one place for you to find your dream life partner matching your search preferences. Search for your match on Matrimony.com - 
          it's free, it's fast, it's easy to use and it works!</h2>
          </h2>
        </div>
        <ul class="row about-staff">
          <li class="columns large-4">
            <div class="img-wrapper"><img src="images/i2.png" alt="" class="about-image"></div>
            <h3 class="employer-name">aaaaaaaaaaa</h3>
            <p>kkbkbkjbkjbs  </p>
          </li>
          <li class="columns large-4">
            <div class="img-wrapper"><img src="images/i2.png" alt="" class="about-image"></div>
            <h3 class="employer-name">aaaaaaaaaaaa</h3>
            <p> jjkbkbkskskkg</p>
          </li>
          <li class="columns large-4">
            <div class="img-wrapper"><img src="images/i2.png" alt="" class="about-image"></div>
            <h3 class="employer-name">aaaaaaaaaaaaaa</h3>
            <p> kbkbkbkbkskbkbskbksl</p>
          </li>
        </ul>
      </div>
    </div>
  </div>
</div>
<footer class="row footer">
  <div class="columns large-12">
    <div class="row footer-inner">
      <div class="columns footer-content large-12">
      <div class="row collapse">
          <div class="columns large-6 small-12"> H.O & Training Centre,Plot No-M4/46 , Acharya Vihar,Bhubaneswar-13,Odisha</div>
          <div class="columns large-3 small-12"> &copy; 0045 copyright. LIT All rights reserved </div>
          <div class="columns large-3  small-12 theme-credit"> Design by: <a href="http://www.litindia.in">LIT group of India</a> </div>
        </div>
      
        <div class="row collapse footer-meta">
          <div class="columns large-6 small-12">
            <nav class="footer-bar">
              <section class="footer-bar-section">
                <ul class="inline-list">
                  <li><a href="index.jsp">Home</a></li>
                  <li>/</li>
                  <li><a href="about.jsp">About Us</a></li>
                  <li>/</li>
                  <li><a href="#">Testimonials</a></li>
                  <li>/</li>
                  <li><a href="#">Products</a></li>
                </ul>
              </section>
            </nav>
          </div>
          <div class="columns large-6 small-12"> <a class="media facebook" href="#"></a> <a class="media twitter" href="#"></a> <a class="media gplus" href="#"></a> <a class="media youtube" href="#"></a> </div>
        </div>
      </div>
    </div>
  </div>
</footer>
<script src="js/jquery.min.js"></script>
<script src="js/hoverIntent.js"></script>
<script src="js/superfish.js"></script>
<script src="js/jquery.jscrollpane.min.js"></script>
<script>
Modernizr.load({
    test: Modernizr.placeholder,
    nope: 'js/placeholder.min.js'
});
function goToNewPage() {
    if (document.getElementById('target').value) {
        window.location.href = document.getElementById('target').value;
    }
}
</script>
<script>
$(document).ready(function () {
    $('.scroll-pane').jScrollPane({
        showArrows: true
    });
    $('ul.sf-menu').superfish({
        animation: {
            height: 'show'
        },
        delay: 400
    });
});
</script>
</body>
</html>