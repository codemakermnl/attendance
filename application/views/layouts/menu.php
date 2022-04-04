<body>
<div class="nav-top container-fluid">
	<div class="row" >
		<img style="margin-left: 1em;" class="nav-logo" src="<?=base_url()?>assets/img/logos/feu.png">
		<div class="col col-md-8 ">
			<div class="div-nav-heading" >
				<span class="nav-heading-top">
					FAR EASTERN UNIVERSITY
				</span>
			</div>
			<div class="div-nav-heading" >
				<span class="nav-title">
					<b>Attendance Monitoring System</b>
				</span>
			</div>
			
		</div>
	</div>

	<div class="row" >
		<div class="col col-md-8"> 
			
		</div>	
	</div>
	
</div>
 <nav class="navbar navbar-expand-sm navbar-dark bg-custom">
	<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExample03" aria-controls="navbarsExample03" aria-expanded="false" aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>

	<div class="collapse navbar-collapse" id="navbarsExample03">
		<ul class="navbar-nav mr-auto">
			<?php $position_id = $this->session->userdata('position_Id');
			 	if ($position_id == 1) { ?>
			 		<li id="home" class="nav-item">
			 			<a class="nav-link nav-color" href="<?=base_url()?>time-logs">Attendance Sheet<span class="sr-only">(current)</span></a>
			 		</li>
					</li>
			<?php } elseif ( $position_id == 2) { ?>
					<li id="home" class="nav-item">
			 			<a class="nav-link nav-color" href="<?=base_url()?>time-logs">Attendance Sheet<span class="sr-only">(current)</span></a>
			 		</li>
			<?php } ?>
		</ul>


		<ul class="navbar-nav">	
			<li class="nav-item dropdown">
				<a class="nav-link nav-color dropdown-toggle nav-user" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
					<?= $this->session->userdata('first_name') . ' ' . $this->session->userdata('last_name'); ?>
				</a>
				<div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdown">
					<a class="dropdown-item" href="<?=base_url()?>change-password">Change Password</a>
					<a class="dropdown-item" href="<?=base_url()?>logout">Sign Out</a>
					<div class="dropdown-divider"></div> 
				</div>
			</li>
		</ul>
	</div>
</nav> 