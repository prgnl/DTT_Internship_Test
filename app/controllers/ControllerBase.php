<?php
use Phalcon\Mvc\Controller;
use Phalcon\Mvc\Dispatcher;

class ControllerBase extends Controller
{
    public function beforeExecuteRoute(Dispatcher $dispatcher)
    {
        //restricted is only for logged in users (admins). If you are not logged and try to access this page you will be redirected to the login page
        //AUTH is your session
        $auth = $this->session->get('auth');
        if ($dispatcher->getControllerName() === 'post' && !$auth) {
            $this->dispatcher->forward(array(
                'controller' => 'user',
                'action' => 'index'
            ));
            return false;
        }
    }
}