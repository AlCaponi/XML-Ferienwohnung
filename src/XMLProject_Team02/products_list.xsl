<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema">
  <xsl:output method="html" encoding="UTF-8" indent="yes"/>
    <xsl:template match="/">
      <html>
        <head>
          <title>XML Projekt - Produkte</title>
          <meta http-equiv="content-type" content="text/html; charset=utf-8" />
          <meta name="description" content="" />
          <meta name="keywords" content="" />
          <!--[if lte IE 8]><script src="css/ie/html5shiv.js"></script><![endif]-->
          <script src="js/jquery.min.js"></script>
          <script src="js/jquery.dropotron.min.js"></script>
          <script src="js/skel.min.js"></script>
          <script src="js/skel-layers.min.js"></script>
          <script src="js/init.js"></script>
          <noscript>
            <link rel="stylesheet" href="css/skel.css" />
            <link rel="stylesheet" href="css/style.css" />
            <link rel="stylesheet" href="css/style-wide.css" />
          </noscript>
          <style type="text/css">
            td, th, tr { vertical-align: top; }
          </style>
          <!--[if lte IE 8]><link rel="stylesheet" href="css/ie/v8.css" /><![endif]-->
        </head>
        <body>

          <!-- Header -->
          <div id="header">
            <!-- Logo -->
            <h1>
              <a href="index.html" id="logo">Bio-Hofladen</a>
            </h1>

            <!-- Nav -->
            <nav id="nav">
              <ul>
                <li>
                  <a href="index.html">Home</a>
                </li>
                <li class="current">
                  <a href="products_list.xml">Produkte</a>
                </li>
                <li>
                  <a href="fewo_list.xml">Ferienwohnungen</a>
                </li>
                <li>
                  <a href="bookings.php">Buchungen</a>
                </li>
                <li>
                  <a href="product_administration.php">Administration Produkte</a>
                </li>
                <li>
                  <a href="fewo_administration.php">Administration Ferienwohnungen</a>
                </li>
              </ul>
            </nav>
          </div>

          <!-- Banner -->
          <section id="banner">
            <div>
              <a href="#" class="image image-full">
                <img src="images/laden_innen_gr.jpg" alt="" />
              </a>
            </div>

            <header>
              <h2>Produkteliste:</h2>
            </header>
          </section>

          <!-- Highlights -->
          <!--<section class="wrapper style1">
				<div class="container">
					<div class="row 200%">
						<section class="4u 12u(narrower)">
							<div class="box highlight">
								<i class="icon major fa-paper-plane"></i>
								<h3>This Is Important</h3>
								<p>Duis neque nisi, dapibus sed mattis et quis, nibh. Sed et dapibus nisl amet mattis, sed a rutrum accumsan sed. Suspendisse eu.</p>
							</div>
						</section>
						<section class="4u 12u(narrower)">
							<div class="box highlight">
								<i class="icon major fa-pencil"></i>
								<h3>Also Important</h3>
								<p>Duis neque nisi, dapibus sed mattis et quis, nibh. Sed et dapibus nisl amet mattis, sed a rutrum accumsan sed. Suspendisse eu.</p>
							</div>
						</section>
						<section class="4u 12u(narrower)">
							<div class="box highlight">
								<i class="icon major fa-wrench"></i>
								<h3>Probably Important</h3>
								<p>Duis neque nisi, dapibus sed mattis et quis, nibh. Sed et dapibus nisl amet mattis, sed a rutrum accumsan sed. Suspendisse eu.</p>
							</div>
						</section>
					</div>
				</div>
			</section>-->

          <!-- Gigantic Heading -->
          <section class="wrapper style2">
            <div class="container">
              <header class="major">
                <xsl:apply-templates select="//products"/>
              </header>
            </div>
          </section>

          <!-- Posts -->
          <!--<section class="wrapper style1">
				<div class="container">
					<div class="row">
						<section class="6u 12u(narrower)">
							<div class="box post">
								<a href="#" class="image left"><img src="images/pic01.jpg" alt="" /></a>
								<div class="inner">
									<h3>The First Thing</h3>
									<p>Duis neque nisi, dapibus sed mattis et quis, nibh. Sed et dapibus nisl amet mattis, sed a rutrum accumsan sed. Suspendisse eu.</p>
								</div>
							</div>
						</section>
						<section class="6u 12u(narrower)">
							<div class="box post">
								<a href="#" class="image left"><img src="images/pic02.jpg" alt="" /></a>
								<div class="inner">
									<h3>The Second Thing</h3>
									<p>Duis neque nisi, dapibus sed mattis et quis, nibh. Sed et dapibus nisl amet mattis, sed a rutrum accumsan sed. Suspendisse eu.</p>
								</div>
							</div>
						</section>
					</div>
					<div class="row">
						<section class="6u 12u(narrower)">
							<div class="box post">
								<a href="#" class="image left"><img src="images/pic03.jpg" alt="" /></a>
								<div class="inner">
									<h3>The Third Thing</h3>
									<p>Duis neque nisi, dapibus sed mattis et quis, nibh. Sed et dapibus nisl amet mattis, sed a rutrum accumsan sed. Suspendisse eu.</p>
								</div>
							</div>
						</section>
						<section class="6u 12u(narrower)">
							<div class="box post">
								<a href="#" class="image left"><img src="images/pic04.jpg" alt="" /></a>
								<div class="inner">
									<h3>The Fourth Thing</h3>
									<p>Duis neque nisi, dapibus sed mattis et quis, nibh. Sed et dapibus nisl amet mattis, sed a rutrum accumsan sed. Suspendisse eu.</p>
								</div>
							</div>
						</section>
					</div>
				</div>
			</section>-->

          <!-- CTA -->
          <!--<section id="cta" class="wrapper style3">
				<div class="container">
					<header>
						<h2>Are you ready to continue your quest?</h2>
						<a href="#" class="button">Insert Coin</a>
					</header>
				</div>
			</section>-->

          <!-- Footer -->
          <div id="footer">
           <!--<div class="container">
					<div class="row">
						<section class="3u 6u(narrower) 12u$(mobilep)">
							<h3>Links to Stuff</h3>
							<ul class="links">
								<li><a href="#">Mattis et quis rutrum</a></li>
								<li><a href="#">Suspendisse amet varius</a></li>
								<li><a href="#">Sed et dapibus quis</a></li>
								<li><a href="#">Rutrum accumsan dolor</a></li>
								<li><a href="#">Mattis rutrum accumsan</a></li>
								<li><a href="#">Suspendisse varius nibh</a></li>
								<li><a href="#">Sed et dapibus mattis</a></li>
							</ul>
						</section>
						<section class="3u 6u$(narrower) 12u$(mobilep)">
							<h3>More Links to Stuff</h3>
							<ul class="links">
								<li><a href="#">Duis neque nisi dapibus</a></li>
								<li><a href="#">Sed et dapibus quis</a></li>
								<li><a href="#">Rutrum accumsan sed</a></li>
								<li><a href="#">Mattis et sed accumsan</a></li>
								<li><a href="#">Duis neque nisi sed</a></li>
								<li><a href="#">Sed et dapibus quis</a></li>
								<li><a href="#">Rutrum amet varius</a></li>
							</ul>
						</section>
						<section class="6u 12u(narrower)">
							<h3>Get In Touch</h3>
							<form>
								<div class="row 50%">
									<div class="6u 12u(mobilep)">
										<input type="text" name="name" id="name" placeholder="Name" />
									</div>
									<div class="6u 12u(mobilep)">
										<input type="email" name="email" id="email" placeholder="Email" />
									</div>
								</div>
								<div class="row 50%">
									<div class="12u">
										<textarea name="message" id="message" placeholder="Message" rows="5"></textarea>
									</div>
								</div>
								<div class="row 50%">
									<div class="12u">
										<ul class="actions">
											<li><input type="submit" class="button alt" value="Send Message" /></li>
										</ul>
									</div>
								</div>
							</form>
						</section>
					</div>
				</div>--><!--

            --><!-- Icons --><!--
            --><!--<ul class="icons">
						<li><a href="#" class="icon fa-twitter"><span class="label">Twitter</span></a></li>
						<li><a href="#" class="icon fa-facebook"><span class="label">Facebook</span></a></li>
						<li><a href="#" class="icon fa-github"><span class="label">GitHub</span></a></li>
						<li><a href="#" class="icon fa-linkedin"><span class="label">LinkedIn</span></a></li>
						<li><a href="#" class="icon fa-google-plus"><span class="label">Google+</span></a></li>
					</ul>--><!--

            --><!-- Copyright -->
            <div class="copyright">
              <ul class="menu">
                <li>Copyright by Dominique Nobel, Kai Gossens, Rukshan Srirangarajah, Angelo Conconi. All rights reserved</li>
                <li>
                  Design: <a href="http://html5up.net">HTML5 UP</a>
                </li>
              </ul>
            </div>

          </div>

        </body>
      </html>
    </xsl:template>
  <xsl:template match="product">
    <table>
      <th>
        <h1>
          <xsl:value-of select="name"/>
        </h1>
      </th>
      <th >
      </th>
      <tr>
        <td>
          <img src="images/products/{image}" width="408" height="294" />
        </td>
        <td>
          <table>
            <tr>
              <td>Beschreibung:</td>
              <td>
                <xsl:value-of select="descr"/>
              </td>
            </tr>
            <tr>
              <td>Lagerbestand:</td>
              <td>
                <xsl:value-of select="quantity"/>
                <xsl:value-of select="unit"/>
              </td>
            </tr>
            <tr>
              <td>
                Preis pro <xsl:value-of select="unit"/>:
              </td>
              <td>
                <xsl:value-of select="priceByUnit"/>
              </td>
            </tr>
          </table>
        </td>
      </tr>
    </table>
    <p/>
  </xsl:template>  
</xsl:stylesheet>