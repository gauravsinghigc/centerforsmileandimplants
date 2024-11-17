<?php
//POST DATA
function POST($data)
{
 $results = SECURE(htmlentities($_POST["$data"]), "e");
 if ($_POST["$data"] == null or $_POST["$data"] == "") {
  return null;
 } else {
  return $results;
 }
}


//GET DATA
function GET($data)
{
 $results = SECURE(htmlentities($_GET["$data"]), "e");
 if ($_GET["$data"] == null or $_GET["$data"] == "") {
  return null;
 } else {
  return $results;
 }
}

//Request DATA
function REQUEST($data)
{
 $results = SECURE(htmlentities($_REQUEST["$data"]), "e");
 if ($_REQUEST["$data"] == null or $_REQUEST["$data"] == "") {
  return null;
 } else {
  return $results;
 }
}
