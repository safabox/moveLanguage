<?php

namespace TestBundle\Entity;
use Doctrine\ORM\Mapping as ORM;

/**
* @ORM\Entity(repositoryClass="TestBundle\Repository\RespuestasRepository")
*/
class Respuestas
{
    /** 
     * @ORM\Id
     * @ORM\Column(type="integer") 
     * @ORM\GeneratedValue     */
    private $id;

    /** @ORM\Column(type="string", length=100) */
    private $respuesta;

    /** @ORM\Column(type="boolean") */
    private $correcta;

    /**
     * @ORM\ManyToOne(targetEntity="\TestBundle\Entity\Preguntas")
     */
    protected $pregunta;
    
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
     * Set respuesta
     *
     * @param string $respuesta
     *
     * @return Respuestas
     */
    public function setRespuesta($respuesta)
    {
        $this->respuesta = $respuesta;

        return $this;
    }

    /**
     * Get respuesta
     *
     * @return string
     */
    public function getRespuesta()
    {
        return $this->respuesta;
    }

    /**
     * Set correcta
     *
     * @param boolean $correcta
     *
     * @return Respuestas
     */
    public function setCorrecta($correcta)
    {
        $this->correcta = $correcta;

        return $this;
    }

    /**
     * Get correcta
     *
     * @return bool
     */
    public function getCorrecta()
    {
        return $this->correcta;
    }

    /**
     * Set idPregunta
     *
     * @param integer $idPregunta
     *
     * @return Respuestas
     */
    public function setIdPregunta($idPregunta)
    {
        $this->idPregunta = $idPregunta;

        return $this;
    }

    /**
     * Get idPregunta
     *
     * @return int
     */
    public function getIdPregunta()
    {
        return $this->idPregunta;
    }
    
    public function __toString()
    {
        return $this->getRespuesta();
    }
}

