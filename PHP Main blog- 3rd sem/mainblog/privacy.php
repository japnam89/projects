<?php require('includes/config.php'); ?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>Privacy Policy</title>
    <link rel="stylesheet" href="style/normalize.css">
    <link rel="stylesheet" href="style/main.css">
</head>
<body>

	<div id="wrapper">
            

		<h1>Privacy Page</h1>
		<br />

                <div id="main">
		<?php
			try {

				$stmt = $db->query('SELECT privacy FROM Misc');
				while($row = $stmt->fetch()){
					
					echo '<div>';
						echo $row ["privacy"];				
					echo '</div>';

				}

			} catch(PDOException $e) {
			    echo $e->getMessage();
			}
		?>
                </div>
	

                <div id='clear'></div>
                </div>

</body>
</html>