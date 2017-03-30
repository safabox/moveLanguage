<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

namespace SitioBundle\Repository;
use Doctrine\ORM\EntityRepository;
/**
 * Description of InscripcionRepository
 *
 * @author ejuaobr
 */
class InscripcionRepository extends EntityRepository{
    //put your code here
    public function addInscripcion(\SitioBundle\Entity\Inscripcion $inscripcion){
        try{
            $em = $this->getEntityManager();
            $em->persist($inscripcion);
            $em->flush();
        }
        catch (\Exception $e){
            throw $e;
        }
    }
    public function updateInscripcion(\SitioBundle\Entity\Inscripcion $inscripcion) {
        try{
            $em = $this->getEntityManager();
            $em->persist($inscripcion);
            $em->flush();
        }
        catch (Exception $e){
            throw $e;
        }
    
    }
    public function removeInscripcion (\SitioBundle\Entity\Inscripcion $inscripcion){
        try{
            $em = $this->getEntityManager();
            $em->remove($inscripcion);
            $em->flush();
        }
        catch (Exception $e){
            throw $e;
        }
    }
    public function getInscripcionByUser(\SitioBundle\Entity\User $user){
        
        //$em = $this->getDoctrine()->getEntityManager();
        $em = $this->getEntityManager();
        $dql='SELECT i FROM SitioBundle:Inscripcion i WHERE i.user = :user ';
        $dql.=' order by i.startingDate desc ';
	$consulta = $em->createQuery($dql);
        $consulta->setParameter('user',$user->getId());
        $inscripciones = $consulta->getResult();
        return $inscripciones;
        
    }
     public function getInscripcionByPreferenceId($preferenceId){
        
        //$em = $this->getDoctrine()->getEntityManager();
        $em = $this->getEntityManager();
        $dql='SELECT i FROM SitioBundle:Inscripcion i WHERE i.preferenceId = :preferenceId ';
        $consulta = $em->createQuery($dql);
        $consulta->setParameter('preferenceId',$preferenceId);
        $inscripcion = $consulta->getResult();
        return $inscripcion;
        
    }
}
