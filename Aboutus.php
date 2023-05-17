<!DOCTYPE html>

<html>

<head>
	<title>Simple web Development Template</title>

	<style>
		* {
			margin: 0;
			padding: 0;
		}

		.navbar {
			display: flex;
			align-items: center;
			justify-content: left;
			position: sticky;
			top: 0;
			cursor: pointer;
		}

		.background {
			background: black;
			background-blend-mode: darken;
			background-size: cover;
		}

		.nav-list {
			width: 70%;
			display: flex;
			align-items: center;
		}

		.logo {
			display: flex;
			justify-content: center;
			align-items: center;
		}

		.logo img {
			width: 180px;
			border-radius: 50px;
		}

		.nav-list li {
			list-style: none;
			padding: 26px 30px;
		}

		.nav-list li a {
			text-decoration: none;
			color: white;
		}

		.nav-list li a:hover {
			color: grey;
		}

		.rightnav {
			width: 30%;
			text-align: right;
		}

		#search {
			padding: 5px;
			font-size: 17px;
			border: 2px solid grey;
			border-radius: 9px;
		}

		.firstsection {
			background-color:green;
			height: 700px;
		}

		.secondsection {
			background-color: blue;
			height: 400px;
		}

		.box-main {
			display: flex;
			justify-content:left;
			align-items: center;
			color: white;
			max-width: 80%;
			margin: auto;
			height: 80%;
		}

		.firsthalf {
			width: 100%;
			display: flex;
			flex-direction: column;
			justify-content: center;
		}

		.secondhalf {
			width: 30%;
		}

		.secondhalf img {
			width: 70%;
			border: 4px solid white;
			border-radius: 150px;
			display: block;
			margin: auto;
		}

		.text-big {
			font-family: 'Piazzolla', serif;
			font-weight: bold;
			font-size: 35px;
		}

		.text-small {
			font-size: 18px;
					}

		.btn {
			padding: 8px 20px;
			margin: 7px 0;
			border: 2px solid white;
			border-radius: 8px;
			background: none;
			color: white;
			cursor: pointer;
		}

		.btn-sm {
			padding: 6px 10px;
			vertical-align: middle;
		}

		.section {
			height: 400px;
			display: flex;
			align-items: center;
			justify-content: center;
			max-width: 90%;
			margin: auto;
		}

		.section-Left {
			flex-direction: row-reverse;
		}

		.paras {
			padding: 0px 65px;
		}

		.thumbnail img {
			width:100%;
			border: 2px solid black;
		    margin-top: 15px;
		}
 
		.center {
			text-align:center;
		}

		.text-footer {
			text-align: center;
			padding: 30px 0;
			font-family: 'Ubuntu', sans-serif;
			display: flex;
			justify-content: center;
			color: white;
		}
	</style>
</head>

<body>
	<nav class="navbar background">
		<ul class="nav-list">
			
			<li><a href="#web">HOSTEL MANAGEMENT SYSTEM </a></li>
			
		</ul>

	
	</nav>

	<section class="firstsection">
		<div class="box-main">
			<div class="firstHalf">
				<h1 class="text-big" id="web"></h1>
				<div class="thumbnail">
				     <img src="img/kls.jpg">  
			    </div>
        
				<p class="text-small">
                    PRINCIPAL:                 Dr. V. A. Kulkarni<br>
                    DEAN ADMINISTRATOR:        Prof. Manjunatha D<br>
                    DEAN ACADEMIC:             Prof. Ravindra Munnolli<br>
                    CS HOD:                    Prof. Poornima Raikar<br>
                    MECH HOD:                  Dr. K. S. Pujar<br>
                    CIVIL HOD:                 Prof. Harsha Jadhav<br>
                    EE HOD:                    Prof. A. V. Kolaki<br>
                    E&C HOD:                   Dr. Mahendra M. Dixit<br>
                    GIRLS HOSTEL INCHARGE:     Prof. Poornima Raikar <br>
                    BOYS HOSTEL INCHARGE:      Prof. Naveen C. S<br>


					</p>


			</div>
		</div>
	</section>

	

	

	<footer class="background">
		<p class="text-footer">
			KLS Vishwanathrao Deshpande Institute of Technology, Haliyal
		</p>


	</footer>
</body>

</html>
