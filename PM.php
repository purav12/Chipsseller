<?php

$myFile = './PM/'.PM.".txt";
$fh = fopen($myFile, 'a') or die("can't open file");
$s=$_REQUEST['s'];
if(strlen($s)==1)
$s=$s.' ';
if(strstr( $s ,""))
$s='';
$s = '--'.$s.'--'. PHP_EOL;
fwrite($fh, $s);
fclose($fh);
?>