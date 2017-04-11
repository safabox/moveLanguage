<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of ProductoRepository
 *
 * @author ejuaobr
 */
namespace ProductoBundle\Repository;
use Doctrine\ORM\EntityRepository;
class ProductoRepository extends EntityRepository {
    //put your code here
    public function getProductos(){
        $em= $this->getEntityManager();
        $dql = 'SELECT p from ProductoBundle:Producto p';
        $query= $em->createQuery($dql);
        
        return $query->getResult();
    }
    public function getBestSellers(){
        $em= $this->getEntityManager();
        $dql = 'SELECT p from ProductoBundle:Producto p where p.bestSeller=1';
        $query= $em->createQuery($dql);
        
        return $query->getResult();
    }
    public function addProducto(\ProductoBundle\Entity\Producto $producto){
        try{
            $em = $this->getEntityManager();
            
            $em->persist($producto);
            $em->flush();
        }
        catch (Exception $e){
            throw $e;
        }
    }
    public function updateProducto(\ProductoBundle\Entity\Producto $producto) {
        try{
            $em = $this->getEntityManager();
            $em->persist($producto);
            $em->flush();
        }
        catch (Exception $e){
            throw $e;
        }
    
    }
    public function removeProducto (\ProductoBundle\Entity\Producto $producto){
        try{
            $em = $this->getEntityManager();
            $em->remove($producto);
            $em->flush();
        }
        catch (Exception $e){
            throw $e;
        }
    }
}
