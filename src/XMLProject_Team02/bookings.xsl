<?xml version="1.0" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://www.w3.org/1999/xhtml">
	<xsl:output method="html" encoding="UTF-8" indent="yes"/>
<!--	<xsl:variable name="options" select="document('fewo_list.xml')//object/*"/>-->
	<xsl:template match="/">
		<html>
			<head>
				<title>XML Projekt - Ferienwohnungen</title>
				<meta http-equiv="content-type" content="text/html; charset=utf-8" />
				<meta name="description" content="" />
				<meta name="keywords" content="" />
				<!--[if lte IE 8]><script src="css/ie/html5shiv.js"></script><![endif]-->
				<script src="js/jquery.min.js"/>
				<script src="js/jquery.dropotron.min.js"/>
				<script src="js/skel.min.js"/>
				<script src="js/skel-layers.min.js"/>
				<script src="js/init.js"/>
				<noscript>
					<link rel="stylesheet" href="css/skel.css" />
					<link rel="stylesheet" href="css/style.css" />
					<link rel="stylesheet" href="css/style-wide.css" />
					<link rel="stylesheet" href="css/calendar.css" />
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
							<li>
								<a href="products_list.xml">Produkte</a>
							</li>
							<li>
								<a href="fewo_list.xml">Ferienwohnungen</a>
							</li>
							<li class="current">
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
						<h2>Booking Ferienwohnungen:</h2>
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
							<div>
								<form action="booking_add.php" method="post">
									<h2>Add new Booking</h2>
									<table>
										<tr>
											<td>
												<label for="txtId">ID </label>
											</td>
											<td>
												<input type="text" name="txtId" />
											</td>
										</tr>
										<tr>
											<td>
												<label for="txtFirstname">Firstname </label>
											</td>
											<td>
												<input type="text" name="txtFirstname" />
											</td>
										</tr>
										<tr>
											<td>
												<label for="txtLastname">Lastname </label>
											</td>
											<td>
												<input type="text" name="txtLastname" />
											</td>
										</tr>
										<tr>
											<td>
												<label for="txtStreet">Street </label>
											</td>
											<td>
												<input type="text" name="txtStreet" />
											</td>
										</tr>
										<tr>
											<td>
												<label for="txtSnumber">Number </label>
											</td>
											<td>
												<input type="text" name="txtSnumber" />
											</td>
										</tr>
										<tr>
											<td>
												<label for="txtZipcode">Zip code </label>
											</td>
											<td>
												<input type="text" name="txtZipcode" />
											</td>
										</tr>
										<tr>
											<td>
												<label for="txtCity">City </label>
											</td>
											<td>
												<input type="text" name="txtCity" />
											</td>
										</tr>
										<tr>
											<td>
												<label for="txtCountrycode">Country code </label>
											</td>
											<td>
												<input type="text" name="txtCountrycode" />
											</td>
										</tr>
										<tr>
											<td>
												<label for="txtFewoid">Ferienwohnung </label>
											</td>
											<td>
											
												 <xsl:apply-templates select="fewo"/>
													<!--<select name="txtFewoid">-->
													<!--	onchange="alert(this.form.txtFewoid.options[this.form.txtFewoid.selectedIndex].value)"> -->
													 <!-- <option value="01">01</option>
													  <option value="02">02</option>
													  <option value="03">03</option>
													  <option value="04">04</option>
													  <option value="05">05</option>
													</select>-->
												  
											</td>
										</tr>
										<!--<tr>
											<td>
												<label for="txtCalendar">Calendar </label>
											</td>
											<td>
												                        <xsl:processing-instruction name="php">
							<?php
							include 'calendar.php';
							$calendar = new Calendar();
							echo $calendar->show();
							?>
						</xsl:processing-instruction> 
												<a href="calendar.php?objectId={txtFewoid}">Check availability</a>
											</td>
										</tr>-->
										<tr>
											<td>
												<label for="txtStartdate">Startdate (yyyy-mm-dd) </label>
											</td>
											<td>
												<input type="date" name="txtStartdate" />
											</td>
										</tr>
										<tr>
											<td>
												<label for="txtEnddate">Enddate (yyyy-mm-dd) </label>
											</td>
											<td>
												<input type="date" name="txtEnddate" />
											</td>
										</tr>
									</table>

									<input type="submit" value="New Booking"/>&#160;&#160;&#160;
									<a href="bookings_list.xml">
										<input type="button" value="Show All" />
									</a>
								</form>
							</div>
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
				</div>-->
					<!--

            -->
					<!-- Icons -->
					<!--
            -->
					<!--<ul class="icons">
						<li><a href="#" class="icon fa-twitter"><span class="label">Twitter</span></a></li>
						<li><a href="#" class="icon fa-facebook"><span class="label">Facebook</span></a></li>
						<li><a href="#" class="icon fa-github"><span class="label">GitHub</span></a></li>
						<li><a href="#" class="icon fa-linkedin"><span class="label">LinkedIn</span></a></li>
						<li><a href="#" class="icon fa-google-plus"><span class="label">Google+</span></a></li>
					</ul>-->
					<!--

            -->
					<!-- Copyright -->
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

	   <xsl:template match="fewo">
		<select name="txtFewoid">
         <xsl:for-each select="object">
            <option value="{@id}">
               <xsl:value-of select="title"/>
            </option>
         </xsl:for-each>
		</select>
   </xsl:template>
</xsl:stylesheet>
	