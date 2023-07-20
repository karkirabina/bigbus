<style>
    body {
    background-image: url(./assets/img/bigbusimg.jpg) ;
    height: 100%;
    background-position: center;
    background-repeat: no-repeat;
}
    </style>
<section id="" class="d-flex align-items-center">
    <div class="container">
    <center>
      <br>
    <h1 class="highlight">EZYTICKET</h1></center>
      <?php if(!isset($_SESSION['login_id'])): ?>
      	
      <?php else: ?>
        
		<center><br><br><br><h2 class="highlight2">Welcome, <?php echo $_SESSION['login_name'] ?></h2></center>
	  <div class="container">
		<h2>About Our Company</h2>
		<p>Nepal's largest company for bus ticket booking online, we offers an easy-to-use online platform, 7500+ bus operators to choose from, and plenty of offers on bus ticket booking to make road journeys super convenient for travellers. A leading platform for booking bus tickets, it has driven the country's bus booking journey over the past 2 years through thousands of cities and routes in Nepal. Striving to reach new heights regarding online bus reservations in nepal, it has become the perfect platform to have a smooth bus ticket booking experience.</p>
	</div>
      <?php endif; ?>
    </div>
  </section>
  <script>
  	$('#book_now').click(function(){
      uni_modal('Find Schedule','book_filter.php')
  })
  </script>