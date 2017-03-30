<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of Producto
 *
 * @author ejuaobr
 * ProductoBundle\Repository
 */
namespace ProductoBundle\Entity;
use Doctrine\ORM\Mapping as ORM;
/**
* @ORM\Entity(repositoryClass="ProductoBundle\Repository\ProductoRepository")
*/
class Producto {
    //put your code here
    /** 
     * @ORM\Id
     * @ORM\Column(type="integer") 
     * @ORM\GeneratedValue     */
    protected $id;
    public function getId() {
        return $this->id;
    }
    /** @ORM\Column(type="string", length=100, unique=true) */
    protected $name;
    public function setName($name){
        $this->name= $name;
    }
    public function getName(){
        return $this->name;
    }

    /** @ORM\Column(type="string", length=100) */
    protected $description;
    public function getDescription(){
        return $this->description;
    }
    public function setDescription($description){
        $this->description=$description;
    }

    /** @ORM\Column(type="float") */
    protected $price;
    public function getPrice() {
        return $this->price;
    }
    public function setPrice($price) {
        $this->price=$price;
    }
    /** @ORM\Column(type="datetime") */
    protected $startingDate;
    public function getStartingDate(){
        return $this->startingDate;
    }
    public function setStartingDate($startingDate){
        $this->startingDate=$startingDate;
    }
    public function getStartinDate(){
        return $this->startingDate;
    }

    /** @ORM\Column(type="datetime", nullable=TRUE) */
    protected $endDate;
    public function setEndDate($endDate){
        $this->endDate=$endDate;
    }
    public function getEndDate(){
        return $this->endDate;
    }
    
    public function __toString()
    {
        return $this->getName();
    }
    
    public function __construct()
    {
        $this->startingDate = new \DateTime();
    }
}
