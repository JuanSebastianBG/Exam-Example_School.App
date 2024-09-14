<?php
// session
session_start();

// router & config
require_once(__DIR__ . "/enviroment.php");
require_once(__DIR__ . "/config.php");
require_once(__DIR__ . "/router.php");

// services
require_once(__DIR__ . "/services/database.php");
require_once(__DIR__ . "/services/orm.php");
require_once(__DIR__ . "/services/controller.php");

// models
