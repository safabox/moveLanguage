<?php

namespace SitioBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\Security\Core\SecurityContext;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\HttpFoundation\Session\Session;
use SitioBundle\Entity\User;
use SitioBundle\Entity\Inscripcion;
use ProductoBundle\Entity\Producto;


class DefaultController extends Controller
{
    public function indexAction()
    {
        return $this->render('SitioBundle:Default:index.html.twig');
    }
   
    public function loginAction(){
        $peticion = $this->getRequest();
        $sesion = $peticion->getSession();
        $error = $peticion->attributes->get(
            SecurityContext::AUTHENTICATION_ERROR,
            $sesion->get(SecurityContext::AUTHENTICATION_ERROR)
        );

        return $this->render('SitioBundle:Default:login.html.twig', array(
                                'last_username' => $sesion->get(SecurityContext::LAST_USERNAME),
                                'error' => $error ));
    }
    
    
    public function registrarAction()
    {   
        $request = Request::createFromGlobals();
        $usuario = new User();
        $formulario = $this->createFormBuilder($usuario)
            ->add('name')
            ->add('lastName')
            ->add('email','email')
            ->add ('allowsEmail','checkbox',array('required' => false))
            ->add('password','repeated', array('type' => 'password',
                                        'invalid_message' => 'Las dos contraseñas deben coincidir',
                                        //'options' => array('label' => 'Contraseña: ')))
                                        'options' => array('label' => ' ','attr' => array('class'=>'form-control')),
                                        'required' => true,
                                        'first_options'  => array('attr' => array('class'=>'form-control','placeholder'=>'Contraseña...') ),
                                        'second_options' => array('attr' => array('class'=>'form-control','placeholder'=>'Repita la contraseña...')),
                )
            )
            //->add('direccion', 'text')
            //->add('fechaNacimiento', 'date')
            ->getForm();
        if($request->getMethod()=="POST"){
            
            $formulario->submit($request);
            if($formulario->isValid()){
                
                $encoder = $this->get('security.encoder_factory')->getEncoder($usuario);
                
                $usuario->setSalt(\md5(\time()));
                
                $passwordCodificado = $encoder->encodePassword(
                    $usuario->getPassword(),
                    $usuario->getSalt());
                $usuario->setPassword($passwordCodificado);
                
               
                $usuario->setStatus("Activo");
                
                $em = $this->getDoctrine()->getEntityManager();
                
                $em->persist($usuario);
                
                $em->flush();
                
                return $this->redirect($this->generateUrl('sitio_homepage'));
            }
        }
                
        return $this->render('SitioBundle:Default:Registrar.html.twig',array('formulario' => $formulario->createView())
);
    }
    
    public function contactoAction(){   
        $request = Request::createFromGlobals();
        $contactoName = $request->request->get('name');
        $contactoMail = $request->request->get('mail');
        $contactoMessage = $request->request->get('message');
        $to = $this->getParameter('sitio.mail_contacto');
        
        if($contactoName != ""){
            $message = \Swift_Message::newInstance()
                ->setSubject('Contacto MoveLanguage')
                ->setFrom('safaboxc@safabox.com')
                ->setTo($to) //Modificar por maail al que hay que mandar
                ->setBody("Contacto Web: "
                        ."\r\nNombre: ".$contactoName
                        ."\r\nMail: ".$contactoMail
                        ."\r\nMensaje: ".$contactoMessage,'text/plain   ');

            $ejecuto = $this->get('mailer')->send($message); 
            
            if ($ejecuto == 1){           
                $this->get('session')->getFlashBag()->add('info',"Gracias por contactarte con nosotros.");
            }
        }
        return $this->render('SitioBundle:Default:contacto.html.twig');
    }
    
    
    public function inscripcionAction(){
        
        $request = Request::createFromGlobals();
        $inscripcion = new Inscripcion();
        $repository = $this->getDoctrine()->getRepository('ProductoBundle:Producto');
        $productos = $repository->findAll();
        $formulario = $this->createFormBuilder($inscripcion)
            ->add('producto','choice',['choices'=>$productos])
            ->getForm();
        if($request->getMethod()=="POST"){
            $em = $this->getDoctrine()->getRepository('ProductoBundle:Producto');
            $producto=$em->find($request->get('form')['producto'] + 1);
            $user=$this->get('security.context')->getToken()->getUser();
            $inscripcion = Inscripcion::newInscripcion($user,$producto);
            $mp = $this->get('grunch_mercadopago')->getMp();
            $mp->sandbox_mode(FALSE);
            // Crea un token
            //$token = $mp->get_access_token();
            $preference_data = $this->createMovePreferenceData($producto->getName(),$producto->getDescription(),$producto->getPrice());
            $preference = $mp->create_preference($preference_data);
            try{
                $preferenceId =$preference['response']['id'];
                $inscripcion->setPreferenceId($preferenceId);
                $repository = $this->getDoctrine()->getRepository('SitioBundle:Inscripcion');
                $repository->addInscripcion($inscripcion);
                $this->get('session')->getFlashBag()->add('info',"Inscripcion realizada con exito, muy pronto nos contactaremos con usted.");
                //return $this->redirect($preference['response']['sandbox_init_point']);
                return $this->redirect($preference['response']['init_point']);
            }
            catch (\Exception $e){
                $this->get('session')->getFlashBag()->add('error',$e->getMessage());
            }
        }
        return $this->render('SitioBundle:Default:inscripcion.html.twig', array('productos'=>$productos,'formulario' => $formulario->createView()));
    }
    
    public function mercadopagoAction(){        

        // Crea el objeto MP
        $mp = $this->get('grunch_mercadopago')->getMp();
        // Crea un token
        $token = $mp->get_access_token();
        $mp->sandbox_mode(FALSE);
        $payment_info = $mp->get_payment_info(2188022920);
        
        //$preference_data = $this->createMovePreferenceData('A',10);
        //$preference = $mp->create_preference($preference_data);
        //print_r($preference['response']['id']);
        //print_r ($preference);
        print_r($payment_info['response']);
        //return $this->render('SitioBundle:Default:mercadopago.html.twig');
        $response = new Response();
        $response->setStatusCode(Response::HTTP_OK);
        return $response;
    }
    
    private function createMovePreferenceData($title,$description,$unitPrice){
        $preference_data = array(
                "items" => array(
                        array(
                            "title" => $title,
                            "description" => $description,
                            "quantity" => 1,
                            "currency_id" => "ARS", // Available currencies at: https://api.mercadopago.com/currencies
                            "unit_price" => $unitPrice,
                        )
                ),
                "back_urls" => array( 
                            "success" => "http://www.safabox.com/movelanguage2.com/web/app_dev.php/sitio/estadoPago/",
                            "pending" => "http://www.safabox.com/movelanguage2.com/web/app_dev.php/sitio/estadoPago/",
                            "failure" => "http://www.safabox.com/movelanguage2.com/web/app_dev.php/sitio/estadoPago/",
                )
        );
        return $preference_data;
    }
    public function estadoPagoAction(){
        $request = Request::createFromGlobals();
        //$collectionId= $request->query->get('collection_id');
        
        $collectionStatus = $request->query->get('collection_status');
        $preferenceId = $request->query->get('preference_id');
        $repository = $this->getDoctrine()->getRepository('SitioBundle:Inscripcion');
        print_r($preferenceId.'-----');
        $inscripcion=$repository->findOneByPreferenceId($preferenceId);
        $inscripcion->setStatus(strtoupper($collectionStatus));
        print_r($inscripcion->getPaymentId().'-----');
        print_r($request->query->get('collection_id').'-----');
        
        $collectionId = $request->query->get('collection_id');
        $inscripcion->setPaymentId($collectionId);
        print_r($inscripcion->getPaymentId().'-----');
        print_r($request->query->get('collection_id').'-----');
        $inscripcion->setDescription('Pago pendiente en mercado pago4');
        
        $repository->updateInscripcion($inscripcion);
        print_r($inscripcion->getPaymentId());
        $response = new Response();
        $response->setStatusCode(Response::HTTP_OK);
        $response->send();
        return $response;
    }
    
    public function notificacionesAction() {
        
        $request = Request::createFromGlobals();
        $id = $request->query->get('id');
        $topic = $request->query->get('topic');
        
        // Crea el objeto MP
        $mp = $this->get('grunch_mercadopago')->getMp();
        
        $mp->sandbox_mode(FALSE);
        
        $token = $mp->get_access_token();
        
        $contactoName = "prueba";
        $contactoMail = "prueba@prueba.com";
        $contactoMessage = "PRUEBA NOTIFICACION" ;
        $to = "facuobregon@gmail.com";
              
        $payment_info = $mp->get_payment_info($id);
        $message = \Swift_Message::newInstance()
        ->setSubject('Contacto MoveLanguage')
        ->setFrom('safaboxc@safabox.com')
        ->setTo($to) //Modificar por maail al que hay que mandar
        ->setBody("Contacto Web: \r\n"
                . "Nombre: ".$contactoName
                ."\r\nMail: ".$contactoMail
                ."\r\nMensaje: ".$contactoMessage
                ."\r\nID: " .$id
                ."\r\nPayment_id: " .$payment_info['response']['collection']['id']
                ."\r\nPayment_id: " .$payment_info['response']['collection']['status']
                ."\r\nTopic: " .$topic
                ."\r\nToken: " .$token,'text/plain');

        $ejecuto = $this->get('mailer')->send($message); 
        
        $response = new Response();
        $response->setStatusCode(Response::HTTP_OK);
        $response->send();
        
        return $response;
    }
    
    public function misinscripcionesAction(){

        //$em = $this->getDoctrine()->getRepository('SitioBundle:User');
        //$user = $em->findOneBy(array('email'=>'facuobregon@gmail.com'));
        $user = $this->get('security.context')->getToken()->getUser();
        $repository = $this->getDoctrine()->getRepository('SitioBundle:Inscripcion');
        $inscripciones = $repository->getInscripcionByUser($user);
        return $this->render('SitioBundle:Default:misInscripciones.html.twig',array("inscripciones"=>$inscripciones));    
    }
    
    public function estaticaAction($pagina)
    {
        return $this->render('SitioBundle:Default:'.$pagina.'.html.twig');
    }
}

