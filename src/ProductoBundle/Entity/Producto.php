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

    /** @ORM\Column(type="string", length=1000) */
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
    /** @ORM\Column(type="string",length=500 ) */
    protected $summary;
    
    /** @ORM\Column(type="boolean" ) */
    protected $bestSeller;
    
     /**
     * Muchos productos, muchas caracteristicas
     * @ORM\ManyToMany(targetEntity="Caracteristica")
     * @ORM\JoinTable(name="productos_caracteristicas",
     *      joinColumns={@ORM\JoinColumn(name="producto_id", referencedColumnName="id")},
     *      inverseJoinColumns={@ORM\JoinColumn(name="caracteristica_id", referencedColumnName="id")}
     *      )
     */
    protected $features;
    
    
    /**
     * Muchos productos, muchas idiomas
     * @ORM\ManyToMany(targetEntity="Idioma")
     * @ORM\JoinTable(name="productos_idiomas",
     *      joinColumns={@ORM\JoinColumn(name="producto_id", referencedColumnName="id")},
     *      inverseJoinColumns={@ORM\JoinColumn(name="idioma_id", referencedColumnName="id")}
     *      )
     */
    protected $languages;
    function getLanguages() {
        return $this->languages;
    }

    function setLanguages($languages) {
        $this->languages = $languages;
    }

        
    function getSummary() {
        return $this->summary;
    }

    function getBestSeller() {
        return $this->bestSeller;
    }

    function getFeatures() {
        return $this->features;
    }

    function setSummary($summary) {
        $this->summary = $summary;
    }

    function setBestSeller($bestSeller) {
        $this->bestSeller = $bestSeller;
    }

    function setFeatures($features) {
        $this->features = $features;
    }

        
    public function __toString()
    {
        return $this->getName();
    }
    
    public function __construct()
    {
        $this->startingDate = new \DateTime();
        $this->features = new \Doctrine\Common\Collections\ArrayCollection();
        $this->languages = new \Doctrine\Common\Collections\ArrayCollection();
    }
}
