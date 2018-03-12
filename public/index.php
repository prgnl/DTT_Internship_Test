<?php

use Phalcon\Flash\Direct as FlashDirect;
use Phalcon\Flash\Session as FlashSession;
use Phalcon\Security;
use Phalcon\Mvc\View;
use Phalcon\Mvc\View\Engine\Volt;


error_reporting(E_ALL);
(new Phalcon\Debug)->listen();
try {

    /**
     * Read the configuration
     */
    $config = include(__DIR__ . "/../app/config/config.php");

    $loader = new \Phalcon\Loader();

    /**
     * We're a registering a set of directories taken from the configuration file
     */
    $loader->registerDirs(
        array(
            $config->application->controllersDir,
            $config->application->modelsDir
        )
    )->register();

    /**
     * The FactoryDefault Dependency Injector automatically register the right services providing a full stack framework
     */
    $di = new \Phalcon\DI\FactoryDefault();

    /**
     * Include the application routes
     */
    $di->set('router', function () {
        return include(__DIR__ . "/../app/config/routes.php");
    });
// Register Volt as a service
    $di->set(
        "voltService",
        function ($view, $di) {
            $volt = new Volt($view, $di);

            $volt->setOptions(
                [
                    "compiledPath" => __DIR__ . "/../app/compiled-templates/",
                    "compiledExtension" => ".compiled",
                ]
            );

            return $volt;
        }
    );

// Register Volt as template engine
    $di->set(
        "view",
        function () {
            $view = new View();

            $view->setViewsDir(__DIR__ . "/../app/views/");

            $view->registerEngines(
                [
                    ".volt" => "voltService",
                ]
            );

            return $view;
        }
    );
    /**
     * The URL component is used to generate all kind of urls in the application
     */
    $di->set('url', function () use ($config) {
        $url = new \Phalcon\Mvc\Url();
        $url->setBaseUri($config->application->baseUri);
        return $url;
    });

    /**
     * Setting up the view component
     */

    /**
     * Database connection is created based in the parameters defined in the configuration file
     */
    $di->set('db', function () use ($config) {
        return new \Phalcon\Db\Adapter\Pdo\Mysql(array(
            "host" => $config->database->host,
            "username" => $config->database->username,
            "password" => $config->database->password,
            "dbname" => $config->database->dbname
        ));
    });

    /**
     * Register the flash service with custom CSS classes
     */
    $di->set(
        'flash',
        function () {
            $flash = new FlashDirect(
                [
                    'error' => 'alert alert-danger',
                    'success' => 'alert alert-success',
                    'notice' => 'alert alert-info',
                    'warning' => 'alert alert-warning',
                ]
            );

            return $flash;
        }
    );

    /**
     * Start the session the first time some component request the session service
     */
    $di->set('session', function () {
        $session = new \Phalcon\Session\Adapter\Files();
        $session->start();
        return $session;
    });
    $di->set(
        'flash',
        function () {
            return new FlashDirect();
        }
    );

// Set up the flash session service
    $di->set(
        'flashSession',
        function () {
            return new FlashSession();
        }
    );

    /**
     * Handle the request
     */
    $application = new \Phalcon\Mvc\Application();
    $application->setDI($di);
    echo $application->handle()->getContent();

} catch (Phalcon\Exception $e) {
    echo $e->getMessage();
} catch (PDOException $e) {
    echo $e->getMessage();
}

$di->set(
    "dispatcher",
    function () {
        // Create an events manager
        $eventsManager = new EventsManager();

        // Listen for events produced in the dispatcher using the Security plugin
        $eventsManager->attach(
            "dispatch:beforeExecuteRoute",
            new SecurityPlugin()
        );

        // Handle exceptions and not-found exceptions using NotFoundPlugin
        $eventsManager->attach(
            "dispatch:beforeException",
            new NotFoundPlugin()
        );

        $dispatcher = new Dispatcher();

        // Assign the events manager to the dispatcher
        $dispatcher->setEventsManager($eventsManager);

        return $dispatcher;
    }
);



