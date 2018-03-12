<?php

use Phalcon\Security;
use Phalconvn\Forms\LoginForm;

class UserController extends ControllerBase
{
    public function indexAction()
    {

    }

    //register function
    public function registerAction()
    {
        $user = new Users();
        $login = $this->request->getPost("login");
        $password = $this->request->getPost("password");
        $user->password = $this->security->hash($password);
        $user->login = $login;
        $usersave = $user->save();
        //registers user and saves in database

        if (!$usersave) {
            $this->flashSession->error("User could not be registered! Please try again.");
            return $this->dispatcher->forward(array(
                'controller' => 'user',
                'action' => 'index'
            ));
            //if user can't be saved in the database it gives the above error message.
        } else {
            $this->flashSession->success("User has been successfully registered!");
            return $this->dispatcher->forward(array(
                'controller' => 'user',
                'action' => 'index'
            ));
        }
    }

    public function loginAction()
    {
        //name = admin
        //password = admin1234
        $login = $this->request->getPost("login");
        $password = $this->request->getPost("password");
        //gets login and password from the POST form

        $user = Users::findFirstByLogin($login);
        if ($user === false) {
            $this->security->hash(rand());
            $this->flashSession->error("Username or password is wrong! Please try again.");
            return $this->dispatcher->forward(array(
                'controller' => 'user',
                'action' => 'index'
                //if password is false it'll give an error and forward back to the form
            ));
        } else {
            if ($this->security->checkHash($password, $user->password)) {
                $this->session->set('auth', $user->id);
                // The password is valid
            }
            $this->flashSession->success("You've been successfully logged in!");
            return $this->dispatcher->forward(array(
                'controller' => 'post',
                'action' => 'index'
            ));
        }
        //password is valid and forwards to index of admin page
    }


    public function logoutAction()
    {
        //if user clicks on logout his authentication will get removed meaning he will no longer have access to the post module and remove/edit/add access until he logs in again.
        $this->session->remove('auth');
        $this->flashSession->success("You have been successfully logged out!");
        return $this->dispatcher->forward(array(
            'controller' => 'index',
            'action' => 'index'
        ));
    }

}