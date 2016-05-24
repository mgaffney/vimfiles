<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>PHP Page</title>
</head>

<body>

<ul>
<?php 
foreach (getallheaders() as $name => $value) {
    echo "<li>$name: $value</li>\n";
}
?>
</ul>

</body>

</html>
