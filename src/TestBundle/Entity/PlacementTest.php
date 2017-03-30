<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

namespace TestBundle\Entity;
use Doctrine\ORM\Mapping as ORM;

/**
 * Description of Test
 *
 * @author a210183
 */

/**
* @ORM\Entity(repositoryClass="TestBundle\Repository\PlacementTestRepository")
*/
class PlacementTest {
     /** 
     * @ORM\Id
     * @ORM\Column(type="integer") 
     * @ORM\GeneratedValue     */
    protected $id;
   
    /** @ORM\Column(type="string", length=50) */
    protected $nombre;
    
    /** @ORM\Column(type="string", length=50) */
    protected $mail;
    
    /** @ORM\Column(type="integer") */
    protected $nivel;
    
    public function getId()
    {
        return $this->id;
    }

    public function setNombre($nombre)
    {
        $this->nombre = $nombre;

        return $this;
    }

    public function getNombre()
    {
        return $this->nombre;
    }
    
    public function setMail($mail)
    {
        $this->mail = $mail;

        return $this;
    }

    public function getMail()
    {
        return $this->mail;
    }
    
    public function setNivel($nivel)
    {
        $this->nivel = $nivel;

        return $this;
    }

    public function getNivel()
    {
        return $this->nivel;
    }
}
