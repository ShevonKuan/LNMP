<!DOCTYPE html>
<html>

<head>
    <title>Welcome to nginx!</title>
    <style>
        body {
            width: 35em;
            margin: 0 auto;
            font-family: Tahoma, Verdana, Arial, sans-serif;
        }
    </style>
</head>

<body>
    <h1>Welcome to LNMP by shevonkuan!</h1>
    <p>If you see this page, the nginx web server and php-fpm server is successfully installed and
        working.
    </p>

    <p><em>Thank you for using docker.</em></p>
    <?php
    phpinfo()
    ?>
</body>

</html>