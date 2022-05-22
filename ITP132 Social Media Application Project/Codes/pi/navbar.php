<style>
#nav-btn{
  fill:white;
  height:40px;
  position:absolute;
  right:10px;
  top:7px;
  display:none;
}

.vertical-line{
	margin-top:10px;
	margin-bottom:10px;
	margin-right: 20px;
	width: 222px;
	border-bottom:#F7F7F7 4px solid;
}

aside{
	position:fixed;
	float:left;
	width:250px;
	padding-top:0px;
	padding-left:0px;
	top:0;
	bottom:0;
	background-color: #004a4d;
	z-index:400;
}

.one{
  display:block;
  
}

.one ul{
	list-style: none;
}

.one ul li{
	line-height: 60px;
	text-indent: 25px;
}

.one ul li a{
	color: white;
	font-size: 18px;
	
	text-decoration: none;
	display: block;
}

.one ul li a:hover{
	color:#33ffae;
	font-size: 20px;
	background: rgba(255,255,255,0.2);
}

#products{
	padding-top:2px;
	font-weight:bold;
	margin-left: 15px;
	color:#F7F7F7;
	font-size: 23px;
}

#products p {
	margin-top: 5px;
}
 
.home {
 margin-top: 40px;
}
.logos {
 float: left;
 margin-top: 20px;
}

@media (max-width: 730px) {

  aside{
		float:left;
		width:95%;
		padding-left: 5%;
		position:relative;
		float:left;
		padding-top: 10px;
		padding-bottom:10px;
		opacity: 1;
	}

	.one{
	  display:none;
  }
  #nav-btn{
    fill:white;
    height:40px;
    width:40px;
    position:absolute;
    right:7px;
    top:7px;
    display:block;
    cursor: pointer;
  }
	.vertical-line {
		margin-top: 10px;
		margin-bottom: 10px;
		margin-right: 20px;
		display:none;
		
	}
	#products {
		padding-top: 0;
	}
	
	.home {
 margin-top: 40px;
}
.logos {
 float: left;
 margin-top: 20px;
}
}
</style>
<aside>
  <a>
  <svg version="1.1" id="nav-btn" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 512 512" enable-background="new 0 0 512 512" xml:space="preserve">
    <path id="list-view-icon" d="M462,108.857H50V50h412V108.857z M462,167.714H50v58.857h412V167.714z M462,285.429H50v58.857h412
   V285.429z M462,403.143H50V462h412V403.143z"/>
  </svg>
	</a>
 <nav class="one">
    <ul>
   <li id="products">
   <img src = "images/logo.png" class="logos" height="35" width="35" />
   <p>Pure Insanity</p>
   </li>
   <li class="home"><a href="button.php">Home</a></li>
   <div class="vertical-line"></div>
      <li><a href="interest.php">Interests</a></li>
   <div class="vertical-line"></div>
      <li><a href="motivation.php">Motivation</a></li>
   <div class="vertical-line"></div>
      <li><a href="relevance.php">Course Relavance</a></li>
   <div class="vertical-line"></div>
      <li><a href="career.php">Career</a></li>
   <div class="vertical-line"></div>
   <li><a href="survey.php">Survey</a></li>
   <div class="vertical-line"></div>
    </ul>
  </nav>
</aside>

<script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
<script src="js/nav.js"></script>