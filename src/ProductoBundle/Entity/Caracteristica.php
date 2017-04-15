<?php

namespace ProductoBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Caracteristica
 *
 * @ORM\Table(name="caracteristica")
 * @ORM\Entity(repositoryClass="ProductoBundle\Repository\CaracteristicaRepository")
 */
class Caracteristica
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
    /** @ORM\Column(type="string", length=100, unique=true) */
    private $name;
    /** @ORM\Column(type="string", length=1000) */
    private $tooltip;
    /** @ORM\Column(type="string", length=100) */
    private $icon;
    function getName() {
        return $this->name;
    }

    function getTooltip() {
        return $this->tooltip;
    }

    function getIcon() {
        return $this->icon;
    }

    function setName($name) {
        $this->name = $name;
    }

    function setTooltip($tooltip) {
        $this->tooltip = $tooltip;
    }

    function setIcon($icon) {
        $this->icon = $icon;
    }

    
}
