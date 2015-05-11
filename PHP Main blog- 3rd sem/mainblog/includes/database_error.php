<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<!-- the head section -->
<head>
    <title>Blog </title>
    <link rel="stylesheet" href="style/normalize.css">
        <link rel="stylesheet" href="style/main.css">
</head>

<!-- the body section -->
<body>

	<div id="wrapper">
            

		<h7>Scribble...</h7>
		<br />
        <div id="main">
            <h1>Database Error</h1>
            <p>There was an error connecting to the database.</p>
            <p>The database must be installed as described in the appendix.</p>
            <p>MySQL must be running as described in chapter 1.</p>
            <p>Error message: <?php echo $error_message; ?></p>
            <p>&nbsp;</p>
        </div><!-- end main -->

         <div id='clear'></div>
                </div>
<?php require('footer.php'); ?>
</body>
</html>