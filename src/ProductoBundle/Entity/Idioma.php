<?php

namespace ProductoBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Idioma
 *
 * @ORM\Table(name="idioma")
 * @ORM\Entity(repositoryClass="ProductoBundle\Repository\IdiomaRepository")
 */
class Idioma
{
    /**
     * @var int
     *
     * @ORM\Column(name="id", type="integer")
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="AUTO")
     */
    private $id;


    /**
     * Get id
     *
     * @return integer
     */
    public function getId()
    {
        return $this->id;
    }
    /** @ORM\Column(type="string", length=100) */
    private $idioma;
    function getIdioma() {
        return $this->idioma;
    }

    function setIdioma($idioma) {
        $this->idioma = $idioma;
    }


}
