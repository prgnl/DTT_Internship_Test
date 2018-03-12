<?php

use Phalcon\Acl\Resource;
use Phalcon\Tag;
use Phalcon\Mvc\Model\Criteria;


class PostController extends ControllerBase
{

    public function indexAction()

    {
        //add css file, set view to find posts
        $this->view->setVar('posts', Posts::find());

    }

    public function showAction($id)
    {
        //add css file, find all posts that have an id.

        $post = Posts::findFirstById($id);
        //if post is not found (false), redirect back to index
        if ($post === false) {
            $this->flashSession->error("Sorry, post not found");
            $this->dispatcher->forward(array(
                'controller' => 'index',
                'action' => 'index'
            ));
        }
        $this->view->setVar('post', $post);
    }

    public function createAction()
    {

    }

    public function successAction()
    {
        //create new post. if something is not filled out you will be redirected back to posts with the an error. You will therefore need to create a new article again.

        $post = New Posts();
        $success = $post->save(
            $this->request->getPost(),
            [
                "title",
                "summary",
                "content",
                "created",
            ]
        );
        if ($success) {
            //if article is created succesfully give a flash success with the text below and redirect to index.
            $this->flashSession->success("The article was successfully created!");
            return $this->dispatcher->forward(array(
                'controller' => 'post',
                'action' => 'index'
            ));
        } else {
            //redirect to index if failed.
            $this->flashSession->error("Please fill out everything! Try again.");
            return $this->dispatcher->forward(array(
                'action' => 'index'
            ));
        }
    }


    public function editAction($id)
    {

        if ($this->request->isGet()) {
            //find all posts with an ID
            $post = Posts::findFirstById($id);
            if (!$post) {
                //if post is not found redirect back to index
                $this->flashSession->error("post was not found");
                return $this->dispatcher->forward(
                    array(
                        "controller" => "post",
                        "action" => "index"
                    )
                );
            }
            //get all data from the post.
            $this->view->id = $post->id;
            $this->tag->setDefault("id", $post->id);
            $this->tag->setDefault("title", $post->title);
            $this->tag->setDefault("summary", $post->summary);
            $this->tag->setDefault("content", $post->content);
            $this->tag->setDefault("created", $post->created);
        } else {
            $this->flashSession->error("Unknown Method");
            return $this->dispatcher->forward(
                array(
                    "controller" => "post",
                    "action" => "index"
                )
            );
        }
    }

    public function saveAction()
    {

        if (!$this->request->isPost()) {
            return $this->dispatcher->forward(
                array(
                    "controller" => "post",
                    "action" => "index"
                )
            );
        }
        $id = $this->request->getPost("id");
        $post = Posts::findFirstByid($id);
        if (!$post) {
            //if post doesnt exist give an error and redirect back to index
            $this->flashSession->error("post does not exist " . $id);
            return $this->dispatcher->forward(
                array(
                    "controller" => "post",
                    "action" => "index"
                )
            );
        }
        //get all data from the post with a valid ID
        $post->id = $this->request->getPost("id");
        $post->title = $this->request->getPost("title");
        $post->summary = $this->request->getPost("summary");
        $post->content = $this->request->getPost("content");
        $post->created = $this->request->getPost("created");

        $success = $post->save();

        if (!$success) {
            //if there is an error make a foreach to get the error messages
            foreach ($post->getMessages() as $message) {
                $this->flashSession->error($message);
            }
            $this->flashSession->error("Post with id:$post->id not saved.");
            $this->view->pick('post/edit');
            $this->view->post = $post;
        } else {
            //post update successfully. (it will show the id of the updated post) this is to give the admin more information about the post he just updated.
            $this->flashSession->success("Post with id:$post->id updated successfully.");
            //redirect back to index
            return $this->dispatcher->forward(
                array(
                    "controller" => "post",
                    "action" => "index"
                )
            );
        }
    }


    public function deleteAction($id)
    {
        //find all posts with a valid ID

        $post = Posts::findFirst($id);
        if (!$post) {
            //if post not found give error and redirect to index
            $this->flashSession->error("Post was not found");
            return $this->dispatcher->forward(array(
                'controller' => 'post',
                'action' => 'index'
            ));
        }

        if (!$post->delete()) {
            //if post was unsuccesfull deleting make a foreach with the errors
            $this->flashSession->error($post->getMessages());
        } else {
            //if succesfull show the message below and also redirect back to index
            $this->flashSession->success("Post with id:$post->id was succesfully deleted.");
        }
        return $this->dispatcher->forward(array(
            'controller' => 'post',
            'action' => 'index'
        ));

    }
}

