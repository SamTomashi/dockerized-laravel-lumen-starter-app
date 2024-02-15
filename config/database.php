<?php

return [
    'default' => 'mysql',
        'connections' => [
            'sqlsrv' => [
                'driver' => 'sqlsrv',
                'host' => env('DB_HOST'),
                'database' => env('DB_DATABASE'),
                'username' => env('DB_USERNAME'),
                'password' => env('DB_PASSWORD'),
                'charset'   => 'utf8',
                'collation' => 'utf8_unicode_ci',
            ],
            'mysql' => [
                'driver' => 'mysql',

                // 'host' => env('DB_HOST'),
                // 'database' => env('DB_DATABASE'),
                // 'username' => env('DB_USERNAME'),
                // 'password' => env('DB_PASSWORD'),

                'host' => env('DB_HOST'),
                'port' => env('DB_PORT'),
                'database' => env('DB_DATABASE'),
                'username' => env('DB_USERNAME'),
                'password' => env('DB_PASSWORD'),

                'charset'   => 'utf8',
                'collation' => 'utf8_unicode_ci',
            ],
        ]
];

?>