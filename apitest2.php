<?php

  $conn = mysqli_connect("db_host", "root", "1234", "ships");
  // Check connection
  if ($conn->connect_error) {
   die("Connection failed: " . $conn->connect_error);
  }


  if(isset($_GET['id'])){
    $id = $_GET['id'];
    $sql = "select * from spacecraft where id=$id";
  }
  else{
   $sql = "select * from spacecraft";
  }

  $get_data_query = mysqli_query($conn, $sql) or die(mysqli_error($conn));

  if(mysqli_num_rows($get_data_query)!=0){
      $result = array();

      while($r = mysqli_fetch_array($get_data_query)){
         extract($r);
         $result[] = array("id" => $id, "name" => $name, "class" => $class, "crew" => $crew, "image" => $image, "value" => $value, 'status' => $status );
                }
                $json = array("data" => $result);
        }
        else{
                $json = array("error" => "no records found");
        }

   $sql = "select * from arms where id=$id";
   $get_data_query = mysqli_query($conn, $sql) or die(mysqli_error($conn));

   if(mysqli_num_rows($get_data_query)!=0){
       $result = array();

       while($r = mysqli_fetch_array($get_data_query)){
           extract($r);
           $result[] = array("title" => $title, "qty" => $qty );
                }
           $json["armament"] = $result;
       }
        else{
                $json = array("error" => "no records found");
        }

   @mysqli_close($conn);

// Set Content-type to JSON
header('Content-type: application/json');
echo json_encode($json);
?>
