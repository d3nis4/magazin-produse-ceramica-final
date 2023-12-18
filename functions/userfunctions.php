<?php
session_start();
include('config/dbcon.php');

function getAllActive($table){
    global $con;
    $query= "SELECT * from $table where status='1'  ";
    return $query_run = mysqli_query($con,$query);
}

function getBySearch($cuvant){
    global $con;

    // Separă cuvintele din variabilă
    $cuvinte = explode(" ", $cuvant);
    
    // Inițializează un array pentru rezultate
    $rezultate = array();

    foreach ($cuvinte as $cuv) {
        // Pentru fiecare cuvânt din variabilă, construiește interogarea SQL
        $query = "SELECT * FROM products WHERE meta_keywords LIKE '%$cuv%' ";
        
        // Rulează interogarea și verifică dacă a fost executată cu succes
        $query_run = mysqli_query($con, $query);
        
        if ($query_run) {
            // Verifică dacă există rezultate
            if (mysqli_num_rows($query_run) > 0) {
                while ($row = mysqli_fetch_assoc($query_run)) {
                    $rezultate[] = $row;
                }
            }
        } else {
            echo "Eroare în interogare: " . mysqli_error($con);
        }
    }

    // Returnează toate rezultatele găsite pentru fiecare cuvânt
    return $rezultate;
}


function getAllActiveAndPopular($table){
    global $con;
    $query= "SELECT * from $table where status='1' and trending='1'  ";
    return $query_run = mysqli_query($con,$query);
}

function getSlugActive($table, $slug){
    global $con;
    $query= "SELECT * FROM $table WHERE slug='$slug' and status='1' limit 1 ";
    return $query_run = mysqli_query($con,$query);
}

function getFeedback(){
    global $con;
    $query = "SELECT * from reviews order by created_at desc";
    return $query_run = mysqli_query($con,$query);
}

function getCartItems(){
    global $con;
    $userId = $_SESSION['auth_user']['user_id'];
    $query= "SELECT c.id as cid ,c.prod_id, c.prod_qty, p.id as pid, p.name, p.image, p.selling_price 
                from carts c, products p where c.prod_id=p.id and c.user_id='$userId' order by c.id desc ";
     return $query_run = mysqli_query($con,$query);
}


function getOrders(){
    global $con;
    $userId = $_SESSION['auth_user']['user_id'];

    $query = "SELECT * from orders where user_id='$userId' order by id desc ";
    return $query_run = mysqli_query($con,$query);

}

function checkTrackingNoValid($trackingNo){
    global $con;
    $userId = $_SESSION['auth_user']['user_id'];

    $query= "SELECT * from orders where tracking_no='$trackingNo' and user_id='$userId'   ";
    return $query_run = mysqli_query($con,$query);

}



function getProdByCategory($category_id){
    global $con;
    $query= "SELECT * FROM products WHERE category_id='$category_id' and status='1' ";
    return $query_run = mysqli_query($con,$query);
}



function getIDActive($table,$id){
    global $con;
    $query= "SELECT * from $table where id='$id' ";
    return $query_run = mysqli_query($con,$query);
}


function redirect($url,$message){
    
    $_SESSION['message']=$message;
    header('Location: '.$url);
    exit();
}





?>