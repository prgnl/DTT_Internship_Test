<?php
use Phalcon\Paginator\Adapter\Model as PaginatorModel;
use Phalcon\Paginator\Adapter\NativeArray;
use Phalcon\Paginator\Adapter\QueryBuilder;
class IndexController extends ControllerBase
{
    public function indexAction()
    {
        $currentPage = (int) $_GET["page"];
        //add css file to controller, you can execute this later in your view file
        
        //set view to see all posts
        $posts = Posts::find();
        $this->view->setVar('posts', Posts::find());

        // Create a Model paginator, show 5 rows by page starting from $numberPage
            $paginator = new PaginatorModel(
            [
            
                'data'  => $posts,
                'limit' => 5,
                'page'  => $currentPage
            ]
        );
            $page = $paginator->getPaginate();
    }
    public function showAction($id)
    {
         
         //find all posts with the id.
        $post = Posts::findFirst(array(
            'id = :id:',
            'bind' => array(
            'id' => $id
            )
        ));

        if ($post === false) 
        {
            //if post isn't found it will say the error below and redirect back to index
            $this->flashSession->error("Sorry, this post has not been found");
            $this->dispatcher->forward(array(
                'controller' => 'index',
                'action' => 'index'
            ));
        }
          $this->view->setVar('post', $post);
    }
    public function archiveAction()
    {
        //same as indexAction
        
        $this->view->setVar('posts', Posts::find());
    }


}
