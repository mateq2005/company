<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <script src="script.js" defer></script>
</head>
<body>
    <?php

        $host = 'localhost';
        $username = 'root';
        $password = '';
        $database = 'company';

        $conn = mysqli_connect($host, $username, $password);

        mysqli_select_db($conn, $database);
        $result = mysqli_query($conn, 'select * from clients');

        while($row = mysqli_fetch_array($result)) {
            echo($row['id'].'. ');
            echo($row['first_name'].' ');
            echo($row['year_of_birth'].' ');
            echo('<br>');
        }

        mysqli_close($conn);

    ?>
</body>
</html>