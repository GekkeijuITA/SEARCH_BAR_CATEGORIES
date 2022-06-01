<?php
    $server = "localhost";
    $username = "root";
    $password = "";
    $dbName = "searchbarcategories";

    $conn = mysqli_connect($server,$username,$password,$dbName);
    if(!$conn)
    {
        die("Error");
    }

    if(isset($_POST["searchVal"]))
    {
        $searchItem = $_POST["searchVal"];
        $category = $_POST["category"];
        if($searchItem != "")
        {
            $sql = "SELECT title,description FROM $category WHERE title LIKE '%$searchItem%'";
            $result = $conn -> query($sql);
            if($result -> num_rows > 0)
            {
                while($row = $result -> fetch_assoc())
                {
                    echo '
                        <h2>'.$row["title"].'</h2>
                        <p>'.$row["description"].'</p>
                    ';
                }
            }
            else
            {
                echo '
                    <p class="mt-2">0 Results</p>
                ';
            }
        }
    } 
?>