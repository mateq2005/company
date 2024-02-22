<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="script.js" defer></script>
    <link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
    <?php

        # Connection Data

        $host = 'localhost';
        $username = 'root';
        $password = '';
        $database = 'company';

        # Create Connection

        $conn = mysqli_connect($host, $username, $password);

        # Select Database
        
        mysqli_select_db($conn, $database);

        # Customers

        $clients = mysqli_query($conn, 'select * from clients');

        echo('<table class="customers">');

        echo('<caption><h1>Customers</h1></caption>');

        echo('<thead>');
            echo('<th>CustomerID</th>');
            echo('<th>FullName</th>');
            echo('<th>Phone</th>');
            echo('<th>Email</th>');
            echo('<th>Address</th>');
        echo('</thead>');

        echo('<tbody>');
        while($row = mysqli_fetch_array($clients)) {
            echo('<tr>');
                echo('<td>'.$row['CustomerID'].'</td>');
                echo('<td>'.$row['FullName'].'</td>');
                echo('<td>'.$row['Phone'].'</td>');
                echo('<td>'.$row['Email'].'</td>');
                echo('<td>'.$row['Address'].'</td>');
            echo('</tr>');
        }
        echo('</tbody>');

        echo('</table>');

        # Orders

        $orders = mysqli_query($conn, 'select * from orders');

        echo('<table class="orders">');

        echo('<caption><h1>Orders</h1></caption>');

        echo('<thead>');
            echo('<th>OrderID</th>');
            echo('<th>CustomerID</th>');
            echo('<th>OrderName</th>');
            echo('<th>OrderDate</th>');
        echo('</thead>');

        echo('<tbody>');
        while($row = mysqli_fetch_array($orders)) {
            echo('<tr>');
            echo('<td>'.$row['OrderID'].'</td>');
            echo('<td>'.$row['CustomerID'].'</td>');
            echo('<td>'.$row['OrderName'].'</td>');
            echo('<td>'.$row['OrderDate'].'</td>');
            echo('</tr>');
        }
        echo('</tbody>');

        echo('</table>');

        # Close Connection

        mysqli_close($conn);

    ?>
</body>
</html>