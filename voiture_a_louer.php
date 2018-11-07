<!DOCTYPE html>
<html>
<head>
	<title>Louer une voiture</title>
	<meta charset="utf-8">
	<link rel="stylesheet" href="TakeCarStyleSheet2.css"/>
</head>
<body>
	  <div id="navbar">
        <span><a href="index.html"><img src="Logo-takecar.png" alt="logo" height="42" width="42" /></a></span>
		<a href="#contact">Contact</a>
        <a href="#Inscription">S'inscrire</a>
        <a href="#Connection">Connection</a>
		<a href="voiture_a_louer.php">Louer ma voiture</a>
    </div>
	<form method="POST" action="" id="myForm" enctype="multipart/form-data">
			<h1>Louer une voiture</h1>
			<label for="marque" style="text-decoration: underline;">Marque</label> : 
			</br>
			<input type="text" name="marque" required>
			<br>
			<br>
			<label for="modele" style="text-decoration: underline;">Modèle</label>:
			</br>
			<input type="text" name="modele" required>
			<br>
			<br>
			<label for="annee" style="text-decoration: underline;">Année</label>:
			<br>
			<br>
			<select name="year" size="1" required>
			<option>2018
			<option>2017
			<option>2016
			<option>2015
			<option>2014
			<option>2013
			<option>2012
			<option>2011
			<option>2010
			<option>2009
			<option>2008
			<option>2007
			<option>2006
			<option>2005
			<option>2004
			<option>2003
			<option>2002
			<option>2001
			<option>2000
			</select>
			<br>
			<!--<input type="number" name="annee" required>-->
			</br>
			<br>
			<label for="kilometrage" style="text-decoration: underline;">Kilometrage</label> :
			</br>
			<input type="number" name="kilometrage" required>
			<br>
			<br>
			<label for="file" style="text-decoration: underline;">Choisir l'image de la voiture</label> :
			<br>
			<br>
			<div><input type="file" onchange="handleFiles(files)" id="upload" multiple name="file"></div>
            <div><label for="upload"><span id="preview"></span></label></div>
			<script>
				function handleFiles(files) {
					var imageType = /^image\//;
				for (var i = 0; i < files.length; i++) {
				var file = files[i];
				if (!imageType.test(file.type)) {
					alert("veuillez sélectionner une image");
				}else{
					if(i == 0){
						preview.innerHTML = '';
					}
					var img = document.createElement("img");
					img.classList.add("obj");
					img.file = file;
					preview.appendChild(img); 
					var reader = new FileReader();
					reader.onload = ( function(aImg) { 
					return function(e) { 
					aImg.src = e.target.result; 
					}; 
				})(img);

				reader.readAsDataURL(file);
				}
 
				}
				}
			</script>

			<br>
			<br>
			<br>
			<input id="myButton" type="button" value="Mettre à louer" name="kilometrage" required>
			
	</form>
</body>
</html>