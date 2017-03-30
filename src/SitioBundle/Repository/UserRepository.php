<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

namespace SitioBundle\Repository;
use Doctrine\ORM\EntityRepository;
/**
 * Description of UserRepository
 *
 * @author ejuaobr
 */
class UserRepository extends EntityRepository{
    //put your code here
    public function addUser(\SitioBundle\Entity\User $user){
        try{
            $em = $this->getEntityManager();
            $em->persist($user);
            $em->flush();
        }
        catch (\Doctrine\ORM\ORMException $e){
            throw $e;
            
        }
    }
    public function updateUser(\SitioBundle\Entity\User $user) {
        try{
            $em = $this->getEntityManager();
            $em->persist($user);
            $em->flush();
        }
        catch (Exception $e){
            throw $e;
        }
    
    }
    public function removeUser (\SitioBundle\Entity\User $user){
        try{
            $em = $this->getEntityManager();
            $em->remove($user);
            $em->flush();
        }
        catch (Exception $e){
            throw $e;
        }
    }
}
