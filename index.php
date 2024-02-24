<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
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

        $customers = mysqli_query($conn, 'select * from customers');

        # Orders

        $orders = mysqli_query($conn, 'select * from orders');

        # Employees

        $employees = mysqli_query($conn, 'select * from employees');

        # Close Connection

        mysqli_close($conn);

    ?>

    <table class="customers">
        <caption>
            Customers
        </caption>
        <thead>
            <th>CustomerID</th>
            <th>FullName</th>
            <th>Phone</th>
            <th>Email</th>
            <th>Address</th>
        </thead>
        <tbody>
            <?php
                while($row = mysqli_fetch_array($customers)) {
                    echo("<tr>");
                        echo("<td>{$row['CustomerID']}</td>");
                        echo("<td>{$row['FullName']}</td>");
                        echo("<td><a href='tel:{$row['Phone']}'>{$row['Phone']}</a></td>");
                        echo("<td><a href='mailto:{$row['Email']}'>{$row['Email']}</a></td>");
                        echo("<td><address>{$row['Address']}</address></td>");
                    echo("</tr>");
                }
            ?>
        </tbody>
    </table>

    <table class="orders">
        <caption>
            Orders
        </caption>
        <thead>
            <th>OrderID</th>
            <th>CustomerID</th>
            <th>OrderName</th>
            <th>OrderDate</th>
        </thead>
        <tbody>
            <?php
                while($row = mysqli_fetch_array($orders)) {
                    echo("<tr>");
                        echo("<td>{$row['OrderID']}</td>");
                        echo("<td>{$row['CustomerID']}</td>");
                        echo("<td>{$row['OrderName']}</td>");
                        echo("<td>{$row['OrderDate']}</td>");
                    echo("</tr>");
                }
            ?>
        </tbody>
    </table>

    <table class="employees">
        <caption>
            Employees
        </caption>
        <thead>
            <th>EmployeeID</th>
            <th>FullName</th>
            <th>Phone</th>
            <th>Email</th>
        </thead>
        <tbody>
            <?php
                while($row = mysqli_fetch_array($employees)) {
                    echo("<tr>");
                        echo("<td>{$row['EmployeeID']}</td>");
                        echo("<td>{$row['FullName']}</td>");
                        echo("<td><a href='tel:{$row['Phone']}'>{$row['Phone']}</a></td>");
                        echo("<td><a href='mailto:{$row['Email']}'>{$row['Email']}</a></td>");
                    echo("</tr>");
                }
            ?>
        </tbody>
    </table>

</body>
</html>