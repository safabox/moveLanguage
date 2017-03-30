<?php

namespace ProductoBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use ProductoBundle\Entity\Producto;
use ProductoBundle\Repository\ProductoRepository;
use Symfony\Component\HttpFoundation\Response;



class DefaultController extends Controller
{
    public function indexAction()
    {
        return $this->render('ProductoBundle:Default:index.html.twig');
    }
    public function testAction()
    {
        return $this->render('ProductoBundle:Default:productos.html.twig');
    }
    public function addAction(){
        $producto = new Producto();
        $producto->setDescription('Descripcion del producto 8');
        //$producto->setStartingDate(new DateTime());
        $producto->setName('Nombre Producto 8');
        $producto->setPrice(11.80);
        //$producto->setEndDate(new \DateTime());
        //$productRepository= new ProductoRepository();
        //$productoRepository = new ProductoRepository();
        $productoRepository = $this->getDoctrine()->getRepository('ProductoBundle:Producto');
        //$productoRepository = new ProductoRepository('ProductoBundle:Producto');
        
        $productoRepository->addProducto($producto);
        return new Response($producto->getName());
    }
    public function modifyAction($id){
         $em = $this->getDoctrine()->getEntityManager();
         try{
            $producto = $em->getRepository('ProductoBundle:Producto')->find($id);
            $em->persist($producto);
            $em->flush();
            $rta='OK';
         }
         catch(Exception $e){
            $rta='ERROR';
         }
         return new Response ($rta);
        
    }
    public function getAction(){
        $em = $this->getDoctrine()->getEntityManager();
        $productos= $em->getRepository('ProductoBundle:Producto')->getProductos();
                   
        return $this->render('ProductoBundle:Default:productosTest.html.twig',array('productos'=>$productos));
        
    }
    public function productoAction($pagina){
        return $this->render('ProductoBundle:Default:'.$pagina.'.html.twig');
    }
   
}
