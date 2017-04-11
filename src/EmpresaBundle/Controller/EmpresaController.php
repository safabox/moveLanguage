<?php

namespace EmpresaBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;

class EmpresaController extends Controller
{
    public function indexAction()
    {
        return $this->render('EmpresaBundle:Empresa:index.html.twig');
    }
    public function elearningAction(){
        return $this->render('EmpresaBundle:Empresa:un-cambio-a-elearning.html.twig');
    }
}
