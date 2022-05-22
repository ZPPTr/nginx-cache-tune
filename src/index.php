<?php
if ($_SERVER['REQUEST_URI'] === '/' || $_SERVER['REQUEST_URI'] === '/index.php') {
    exit('specify an image');
}

$name = './images'.$_SERVER['REQUEST_URI'];
$fp = fopen($name, 'rb');

header("Content-Type: image/jpg");
header("Content-Length: " . filesize($name));

fpassthru($fp);
exit;