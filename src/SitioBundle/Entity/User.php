<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of User
 *
 * @author ejuaobr
 */
namespace SitioBundle\Entity;
use Symfony\Component\Security\Core\User\UserInterface;
use Doctrine\ORM\Mapping as ORM;

/**
* @ORM\Entity(repositoryClass="SitioBundle\Repository\UserRepository")
*/
class User implements UserInterface{
    //put your code here
    /** 
     * @ORM\Id
     * @ORM\Column(type="integer")
     * @ORM\GeneratedValue
     */
    protected $id;
       
    /** @ORM\Column(type="string", length=100, unique=false) */
    protected $name;
    /** @ORM\Column(type="string", length=100, unique=false) */
    protected $lastName;
    /** @ORM\Column(type="string", length=100, unique=true, nullable=false) */
    protected $email;
    /** @ORM\Column(type="date") */
    protected $startingDate;
    
    
    /** @ORM\Column(type="string", length=10, nullable=false) */
    protected $status;
    
    /** @ORM\Column(type="string", length=255, nullable=false) */
    protected $password;
    /** @ORM\Column(type="string", length=255, nullable=true) */
    protected $salt;
    
    /**
     * @ORM\Column(type="string", length=100, nullable=true)
     */
    protected $country;
    /**
     * @ORM\Column(type="string", length=100, nullable=true)
     */
    protected $province;
    /**
     * @ORM\Column(type="string", length=100, nullable=true)
     */
    protected $city;
    /**
     * @ORM\ManyToOne(targetEntity="\SitioBundle\Entity\Contact")
     */
    protected $contact;
    function getCountry() {
        return $this->country;
    }

    function getProvince() {
        return $this->province;
    }

    function getCity() {
        return $this->city;
    }

    function getContact() {
        return $this->contact;
    }

    function setCountry($country) {
        $this->country = $country;
    }

    function setProvince($province) {
        $this->province = $province;
    }

    function setCity($city) {
        $this->city = $city;
    }

    function setContact(\SitioBundle\Entity\Contact $contact) {
        $this->contact = $contact;
    }

        
    function getId() {
        return $this->id;
    }

    function getName() {
        return $this->name;
    }

    function getLastName() {
        return $this->lastName;
    }

    function getEmail() {
        return $this->email;
    }

    function getStatus() {
        return $this->status;
    }

    function getStartingDate() {
        return $this->startingDate;
    }

    function setUserName($userName) {
        $this->userName = $userName;
    }

    function setName($name) {
        $this->name = $name;
    }

    function setLastName($lastName) {
        $this->lastName = $lastName;
    }

    function setEmail($email) {
        $this->email = $email;
    }

    function setStatus($status) {
        $this->status = $status;
    }

    function setStartingDate($startingDate) {
        $this->startingDate = $startingDate;
    }

    function eraseCredentials()
    {
    }
    function getRoles()
    {
        return array('ROLE_USER');
    }
    function getUsername()
    {
        return $this->getEmail();
    }
    public function getPassword() {
        return $this->password;
    }

    public function getSalt() {
        return $this->salt;
    }
    
    /**
     * @ORM\Column(type="boolean", nullable=true)
     */
    protected $allowsEmail;
    
    function getAllowsEmail() {
        return $this->allowsEmail;
    }

    function setAllowsEmail($allowsEmail) {
        $this->allowsEmail = $allowsEmail;
    }

 
    
    
    public function __construct()
    {
        $this->startingDate = new \DateTime();
    }
    
    public static function newUser($name,$lastName,$email,$country,$region,$city,$contact)
    {
        $user = new self();
        $user->startingDate = new \DateTime();
        $user->city=$city;
        $user->contact=$contact;
        $user->country=$country;
        $user->email=$email;
        $user->lastName = $lastName;
        $user->name= $name;
        $user->province= $region;
        $user->status= 'INACTIVO';
        
        return $user;
        
    }
    
    public function __toString() {
        return $this->getName().' '.$this->getLastName();
    }

   


    /**
     * Set password
     *
     * @param string $password
     *
     * @return User
     */
    public function setPassword($password)
    {
        $this->password = $password;
    
        return $this;
    }

    /**
     * Set salt
     *
     * @param string $salt
     *
     * @return User
     */
    public function setSalt($salt)
    {
        $this->salt = $salt;
    
        return $this;
    }
}
