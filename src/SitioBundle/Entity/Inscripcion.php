<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


/**
 * Description of Inscripcion
 *
 * @author ejuaobr
 */
namespace SitioBundle\Entity;
use Doctrine\ORM\Mapping as ORM;
/**
* @ORM\Entity(repositoryClass="SitioBundle\Repository\InscripcionRepository")
*/
class Inscripcion {
    //put your code here
    /**
     * @ORM\Id
     * @ORM\Column(type="integer")
     * @ORM\GeneratedValue
     */
    protected $id;
    /**
     * @ORM\Column(type="date")
     */
    protected $startingDate;
    /**
     * @ORM\Column(type="date")
     */
    protected $endDate;
    /**
     * @ORM\Column(type="string", length=10)
     */
    protected $status;
    /**
     * @ORM\ManyToOne(targetEntity="\SitioBundle\Entity\User")
     */
    protected $user;
    /**
     * @ORM\ManyToOne(targetEntity="\ProductoBundle\Entity\Producto")
     */
    protected $producto;
    /**
     * @ORM\Column(type="string", length=100,nullable=true)
    */
    protected $description;
    
    /**
     * @ORM\Column(type="bigint",nullable=true)
    */
    protected $paymentId;
    
    /**
     * @ORM\Column(type="string", length=255 ,nullable=true)
    */
    protected $preferenceId;
    
    function getDescription() {
        return $this->description;
    }

    function getStartingDate() {
        return $this->startingDate;
    }

    function getEndDate() {
        return $this->endDate;
    }

    function getStatus() {
        return $this->status;
    }

    function getUser() {
        return $this->user;
    }

    function getProducto() {
        return $this->producto;
    }

    function setStartingDate($startingDate) {
        $this->startingDate = $startingDate;
    }

    function setEndDate($endDate) {
        $this->endDate = $endDate;
    }

    function setStatus($status) {
        $this->status = $status;
    }

    function setUser(\SitioBundle\Entity\User $user) {
        $this->user = $user;
    }

    function setProducto(\ProductoBundle\Entity\Producto $producto) {
        $this->producto = $producto;
    }
    function setDescription($description) {
        $this->description = $description;
    }


    /**
     * Get id
     *
     * @return integer
     */
    public function getId()
    {
        return $this->id;
    }
    function getPaymentId() {
        return $this->paymentId;
    }

    function getPreferenceId() {
        return $this->preferenceId;
    }

    function setPaymentId($paymentId) {
        $this->paymentId = $paymentId;
    }

    function setPreferenceId($preferenceId) {
        $this->preferenceId = $preferenceId;
    }

    public static function newInscripcion(\SitioBundle\Entity\User $user, \ProductoBundle\Entity\Producto $producto)
    {
        $inscripcion = new self();
        $inscripcion->setUser($user);
        $inscripcion->setStatus('CREATED');
        $inscripcion->setProducto($producto);
        $inscripcion->setStartingDate(new \DateTime());
        $inscripcion->setEndDate((new \DateTime)->add(new \DateInterval('P90D')));
        
        
        return $inscripcion;
        
    }
    
    
}
