<?php
use Phalcon\Security;
use Phalcon\Mvc\Controller;
    class SessionController extends ControllerBase
    {
        public function loginAction()
        {
            if ($this->request->isPost()) 
            {
                $login    = $this->request->getPost("login");
                $password = $this->request->getPost("password");
                //gets login and password from POST form method.
                $user = Users::findFirstByLogin($login);
                if ($user && $this->security->checkHash($password, $user->password)) {
                    $this->session->set('auth', $user->password); 
                    $this->flashSession->success("You have been succesfully logged in!");
                    return $this->dispatcher->forward(array(
                    'controller' => 'post',
                    'action' => 'index'
                    )); 
                    //if $login and $password matches, it will redirect to admin page
                } else 
                {
                $this->security->hash(rand());
                $this->flashSession->error("Username or password is wrong!");
                return $this->dispatcher->forward(array(
                'controller' => 'user',
                'action' => 'index'
                ));  
                }
                //else it will give an error and stay on the same login page to try again
            }
        }
    }