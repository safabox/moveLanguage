<?php

namespace TestBundle\Entity;
use Doctrine\ORM\Mapping as ORM;

/**
* @ORM\Entity(repositoryClass="TestBundle\Repository\PreguntasRepository")
*/
class Preguntas
{
    /** 
     * @ORM\Id
     * @ORM\Column(type="integer") 
     * @ORM\GeneratedValue     */
    protected $id;

    /** @ORM\Column(type="string", length=2000) */
    protected $pregunta;

    /** @ORM\Column(type="integer") */
    protected $cantidadOk;
        
    /** @ORM\Column(type="integer") */
    protected $cantidadNoOk;
    
    /**
     * @ORM\ManyToOne(targetEntity="\TestBundle\Entity\Nivel")
     */
    protected $nivel;    
    
    /**
     * Get id
     *
     * @return int
     */
    public function getId()
    {
        return $this->id;
    }

    /**
     * Set pregunta
     *
     * @param string $pregunta
     *
     * @return Preguntas
     */
    public function setPregunta($pregunta)
    {
        $this->pregunta = $pregunta;

        return $this;
    }

    /**
     * Get pregunta
     *
     * @return string
     */
    public function getPregunta()
    {
        return $this->pregunta;
    }

    /**
     * Set idNivel
     *
     * @param integer $idNivel
     *
     * @return Preguntas
     */
    public function setIdNivel($idNivel)
    {
        $this->idNivel = $idNivel;

        return $this;
    }

    /**
     * Get idNivel
     *
     * @return int
     */
    public function getIdNivel()
    {
        return $this->idNivel;
    }
    
    /**
     * Set cantidadOk
     *
     * @param integer $cantidadOk
     *
     * @return Preguntas
     */
    public function setCantidadOk($cantidadOk)
    {
        $this->cantidadOk = $cantidadOk;
        
        return $this;
    }

    /**
     * Get cantidadOk
     *
     * @return int
     */
    public function getCantidadOk()
    {
        return $this->cantidadOk;        
    }

        /**
     * Set cantidadNoOk
     *
     * @param integer $cantidadNoOk
     *
     * @return Preguntas
     */
    public function setCantidadNoOk($cantidadNoOk)
    {
        $this->cantidadNoOk = $cantidadNoOk;
        
        return $this;
    }

    /**
     * Get cantidadNoOk
     *
     * @return int
     */
    public function getCantidadNoOk()
    {
        return $this->cantidadNoOk;        
    }
    
    public function __toString()
    {
        return $this->getPregunta();
    }
    
}

