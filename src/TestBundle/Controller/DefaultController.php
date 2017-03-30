<?php

namespace TestBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\Security\Core\SecurityContext;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Session\Session;
use TestBundle\Entity\Preguntas;
use TestBundle\Entity\Respuestas;
use TestBundle\Entity\PlacementTest;
use Doctrine\ORM\Query;

use Symfony\Component\Form\Extension\Core\Type\CollectionType;
use Symfony\Component\Form\Extension\Core\Type\EmailType;

class DefaultController extends Controller
{
    public function indexAction(Request  $request)
    {        
        $session = $request->getSession();                
        $request = Request::createFromGlobals();        
        $user=$this->get('security.context')->getToken()->getUser();

        if($user == 'anon.')
        {        
            $formBuilder = $this->createFormBuilder();
            $formBuilder->add('nombre');
            $formBuilder->add('email' , 'email');
            $formulario = $formBuilder->getForm(); 
        }
        else
        {
            $formBuilder = $this->createFormBuilder();
            $formBuilder->add('submit' , 'submit');
            $formulario = $formBuilder->getForm(); 
        }
                      
        if($request->getMethod()=="POST"){ 
            
            if($user == 'anon.')
            {
                $formulario->handleRequest($request);
                $data = $formulario->getData();

                $session->set('nombre', $data['nombre']);
                $session->set('email', $data['email']);
            }
            return $this->redirect($this->generateUrl('test_nivel', array('nivel' => '1'))); 
        }   
        
        return $this->render('TestBundle:Default:index.html.twig' ,array('formulario' => $formulario->createView()));

    }      
    
    public function nivelAction(Request  $request)
    { 
        $user=$this->get('security.context')->getToken()->getUser();
        
        if($user == 'anon.'){
        
            $session = $request->getSession();   

            $nombre = $session->get('nombre');
            $mail = $session->get('email');
            
        }    
            
        $request = Request::createFromGlobals();        
        
        $nivel = 0;
        $nivel = $request->query->get('nivel');
        //print_r($nivel);
        if($nivel == 0)
        {
            $nivel = 1;
        }
        
        $em = $this->getDoctrine()->getManager();
        $query = $em->createQuery(
            'SELECT p.id, p.pregunta
               FROM TestBundle:Preguntas p, TestBundle:Nivel n
              WHERE n.id = p.nivel
                AND n.id = :nivel
           ORDER BY p.id ASC'
        )->setParameter('nivel', $nivel);

        $repositoryPreguntas = $query->getResult();

        $preguntas = array();
        
        foreach ($repositoryPreguntas as $clave => $valor)
        {
            $preguntas[$clave] = $valor;
        }
	        
        $query = $em->createQuery(
            'SELECT p.id, r.respuesta, r.id idRes
                FROM TestBundle:Respuestas r, TestBundle:Preguntas p
               WHERE p.nivel = :nivel
                 AND p.id = r.pregunta
               ORDER BY r.id ASC'
        )->setParameter('nivel', $nivel);      
        
        $repositoryRespuestas = $query->getResult();
        
        $respuestas = array();

        foreach ($repositoryRespuestas as $clave => $valor)
        {
            $respuestas[$clave] = $valor;
        }

        if($request->getMethod()=="POST"){
                        
            $data = $this->getRequest()->request->all();
            
            //obtengo el nivel
            if(array_key_exists(1,$data))
            {
                $nivel = 1;           
            }

            if(array_key_exists(13,$data))
            {
                $nivel = 2;                     
            }

            if(array_key_exists(33,$data))
            {
                $nivel = 3;                     
            }

            if(array_key_exists(48,$data))
            {
                $nivel = 4;                     
            }

            if(array_key_exists(64,$data))
            {
                $nivel = 5;                    
            }

            if(array_key_exists(72,$data))
            {
                $nivel = 6;                      
            }

            //Traigo Cantidad de respuestas erroneas
            $query = $em->createQuery(
                'SELECT n.cantidadRespuestasIncorrectas cant
                   FROM TestBundle:Nivel n
                  WHERE n.numero = :nivel'
            )->setParameter('nivel', $nivel);

            $repositoryCantIncorrectas = $query->getResult();

            $cantidadResIncorrectas = $repositoryCantIncorrectas[0]['cant'];

            //Traigo las respuestas correctas del nivel
            $query = $em->createQuery(
                'SELECT p.id, r.id idRes 
                    FROM TestBundle:Respuestas r, TestBundle:Preguntas p
                   WHERE p.nivel = :nivel
                     AND p.id = r.pregunta
                     AND r.correcta = 1
                   ORDER BY p.id ASC'
            )->setParameter('nivel', $nivel);

            $repositoryRespuestasCorrectas = $query->getResult();

            $respuestasCorrectas = array();

            foreach ($repositoryRespuestasCorrectas as $clave => $valor)
            {
                $respuestasCorrectas[$clave] = $valor;
            }

            //Valido cantida de respuesas correctas
            $contadorError = 0;
            $banderaProximoNivel = false;
            foreach($respuestasCorrectas as $clave => $valor)
            {
                // key pregunta / val respuesta
                foreach($data as $key => $val)
                {
                    if($valor['id'] == $key)
                    {
                        if($valor['idRes'] != $val)
                        {
                            $contadorError++;                                
                        }                            
                    }
                }

                if($contadorError > $cantidadResIncorrectas)
                {
                    $banderaProximoNivel = true;
                    break;
                }    

            }

            if ($banderaProximoNivel == false)
            {
                $nivel = $nivel + 1;
                //print_r($nivel);
                if($nivel >= 7)
                {
					$user=$this->get('security.context')->getToken()->getUser();
					
					if($user != 'anon.')
					{
						$nombre = $user->getName();
						$mail = $user->getEmail();
					}

					$placementTest = new PlacementTest();
					$placementTest->setNombre($nombre);
					$placementTest->setMail($mail);
					$placementTest->setNivel($nivel);

					$placementTestRepository = $this->getDoctrine()->getRepository('TestBundle:PlacementTest');

					$placementTestRepository->addTest($placementTest);

					switch ($nivel) {
						case 1:
							$nivelTxt='Nivel Inicial';
							break;
						case 2:
							$nivelTxt='Nivel Elemental';
							break;
						case 3:
							$nivelTxt='Nivel Pre-Intermedio';
							break;
						case 4:
							$nivelTxt='Nivel Intermedio';
							break;
						case 5:
							$nivelTxt='Nivel Intermedio Alto';
							break;
						case 6:
							$nivelTxt='Nivel Avanzado';
							break;
					}
					$to = $this->getParameter('test.mail_contacto');
					
					$message = \Swift_Message::newInstance()
						->setSubject('Contacto MoveLanguage - PLACEMENT TEST')
						->setFrom('safaboxc@safabox.com')
						->setTo($to) //Modificar por maail al que hay que mandar
						->setBody("Contacto Web: "
								."\r\nNombre: ".$nombre
								."\r\nMail: ".$mail
								."\rEl nivel obtenido por la persona es: Avanzado",'text/plain   ');

					$ejecuto = $this->get('mailer')->send($message); 

					return $this->render('TestBundle:Default:fin.html.twig' ,array( 'nivel' => 6 ));
                }
                else
                {
                     return $this->redirect($this->generateUrl('test_nivel', array('nivel' => $nivel))); 
                }
            }   
            else
            {
                $user=$this->get('security.context')->getToken()->getUser();
                
                if($user != 'anon.')
                {
                    $nombre = $user->getName();
                    $mail = $user->getEmail();
                }

                $placementTest = new PlacementTest();
                $placementTest->setNombre($nombre);
                $placementTest->setMail($mail);
                $placementTest->setNivel($nivel);

                $placementTestRepository = $this->getDoctrine()->getRepository('TestBundle:PlacementTest');

                $placementTestRepository->addTest($placementTest);

                switch ($nivel) {
                    case 1:
                        $nivelTxt='Nivel Inicial';
                        break;
                    case 2:
                        $nivelTxt='Nivel Elemental';
                        break;
                    case 3:
                        $nivelTxt='Nivel Pre-Intermedio';
                        break;
                    case 4:
                        $nivelTxt='Nivel Intermedio';
                        break;
                    case 5:
                        $nivelTxt='Nivel Intermedio Alto';
                        break;
                    case 6:
                        $nivelTxt='Nivel Avanzado';
                        break;
                }
                $to = $this->getParameter('test.mail_contacto');
                
                $message = \Swift_Message::newInstance()
                    ->setSubject('Contacto MoveLanguage - PLACEMENT TEST')
                    ->setFrom('safaboxc@safabox.com')
                    ->setTo($to) //Modificar por maail al que hay que mandar
                    ->setBody("Contacto Web: "
                            ."\r\nNombre: ".$nombre
                            ."\r\nMail: ".$mail
                            ."\rEl nivel obtenido por la persona es: ".$nivelTxt,'text/plain   ');

                $ejecuto = $this->get('mailer')->send($message); 

                return $this->render('TestBundle:Default:fin.html.twig' ,array( 'nivel' => $nivel ));
            }
        }   

        return $this->render('TestBundle:Default:nivel.html.twig' ,array(  'preguntas' => $preguntas, 'respuestas' => $respuestas));

    }
    
}
