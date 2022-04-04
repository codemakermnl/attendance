		<footer class="footer">
			<div class="container text-center">
				<span class="footer-copyright">Copyright &copy; <?= date('Y') ?> Far Eastern University. Developed by Charlotte Jane Pelagio. All Rights Reserved. </span>
			</div>
		</footer>

<!-- 		<?php// if($this->session->userdata('start_rfid')) { ?> -->
			<script>
			$(document).ready(function(){

 



				$(document).on('click', '.dropdown-toggle', function(){
					$('.count').html('');
					check_incoming_rfid('yes');
					check_request_date();
				});


			});
		</script>






	</body>
	</html>
