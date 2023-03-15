<?php

/** @var \Laravel\Lumen\Routing\Router $router */

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It is a breeze. Simply tell Lumen the URIs it should respond to
| and give it the Closure to call when that URI is requested.
|
*/
use Illuminate\Support\Facades\DB;


$router->get('/', function () use ($router) {

    try {
      //   $dbconnect = DB::connection()->getPDO();
         $dbname = app('db')->connection('sqlsrv')->getDatabaseName();
      //   $dbname = DB::connection()->getDatabaseName();
        return "Connected successfully to the database. Database name is :".$dbname;
     } catch(Exception $e) {
        return "Error in connecting to the database".$e;
     }
   //  return $router->app->version();
});
