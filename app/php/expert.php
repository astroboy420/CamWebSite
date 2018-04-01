<?php
  $major = $_REQUEST['major'];

  $link = mysqli_connect('127.0.0.1','root','','expert');

  $sql = "select * from experts where major = '$major'";

  mysqli_query($link,"set names utf8");

  $result = mysqli_query($link,$sql);

  $experts=[];

  while($arr=mysqli_fetch_array($result)){
    $expert=array("name"=>$arr['name'],"src"=>$arr['img'],"title"=>$arr['title'],"detail"=>$arr['detail']);
    array_push($experts,$expert);
  };
  echo $experts;
?>