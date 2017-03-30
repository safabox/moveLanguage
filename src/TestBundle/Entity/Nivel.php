<?php

namespace TestBundle\Entity;
use Doctrine\ORM\Mapping as ORM;

/**
* @ORM\Entity(repositoryClass="TestBundle\Repository\NivelRepository")
*/
class Nivel
{
    /** 
     * @ORM\Id
     * @ORM\Column(type="integer") 
     * @ORM\GeneratedValue     */
    protected $id;
    
    /** @ORM\Column(type="string", length=50) */
    protected $nombre;
    
    /** @ORM\Column(type="integer") */
    protected $numero;

    /** @ORM\Column(type="integer") */
    protected $cantidadRespuestasIncorrectas;

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
     * Set numero
     *
     * @param integer $numero
     *
     * @return Nivel
     */
    public function setNumero($numero)
    {
        $this->numero = $numero;

        return $this;
    }

    /**
     * Get numero
     *
     * @return int
     */
    public function getNumero()
    {
        return $this->numero;
    }

    /**
     * Set cantidadRespuestasOk
     *
     * @param integer $cantidadRespuestasOk
     *
     * @return Nivel
     */
    public function setCantidadRespuestasOk($cantidadRespuestasOk)
    {
        $this->cantidadRespuestasOk = $cantidadRespuestasOk;

        return $this;
    }

    /**
     * Get cantidadRespuestasOk
     *
     * @return int
     */
    public function getCantidadRespuestasOk()
    {
        return $this->cantidadRespuestasOk;
    }
}

