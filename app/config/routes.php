<?php

$router = new Phalcon\Mvc\Router();

$router->add('/login', array(
	'controller' => 'user',
	'action' => 'login',
));

return $router;
