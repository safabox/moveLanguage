-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 15, 2017 at 01:33 AM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `safaboxc_move`
--

-- --------------------------------------------------------

--
-- Table structure for table `caracteristica`
--

CREATE TABLE `caracteristica` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `tooltip` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `icon` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `caracteristica`
--

INSERT INTO `caracteristica` (`id`, `name`, `tooltip`, `icon`) VALUES
(1, 'Acceso ilimitado a la plataforma', 'Unidades de autoaprendizaje interactivas, ejercitación de autoevaluación, laboratorio de fonética, evaluaciones de progreso.', 'img/monitor.png'),
(2, 'Informes automáticos', 'Informes automáticos de seguimiento y certificado de aprobación de cursos', 'img/tabla.png'),
(3, 'Ayuda', 'Ayuda técnica personalizada.', 'img/auriculares.png'),
(4, 'Comunidad', 'Acceso a comunidad de estudiantes, contacto sincrónico y asincrónico a través de un chat y blog', 'img/reloj.png'),
(5, 'Profesor en linea', 'Clases sincrónicas con un profesor en linea.', 'img/hombrecito.png'),
(6, 'Acceso ilimitado a la plataforma las 24hs.', 'Acceso ilimitado a la plataforma las 24hs.', 'img/monitor.png'),
(7, 'Unidades de autoaprendizaje interactivas', 'Unidades de autoaprendizaje interactivas.', 'img/monitor.png'),
(8, 'Ejercitación de autoevaluación', 'Ejercitación de autoevaluación', 'img/monitor.png'),
(9, 'Laboratorio de fonética', 'Laboratorio de fonética.', 'img/monitor.png'),
(11, 'Evaluaciones de progreso', 'Evaluaciones de progreso.', 'img/monitor.png'),
(12, 'Informes automáticos de seguimiento', 'Informes automáticos de seguimiento.', 'img/monitor.png'),
(13, 'Certificado de aprobación de cursos', 'Certificado de aprobación de cursos.', 'img/monitor.png'),
(14, 'Ayuda técnica personalizada', 'Ayuda técnica personalizada.', 'img/monitor.png'),
(15, 'Acceso a comunidad de estudiantes', 'Acceso a comunidad de estudiantes.', 'img/monitor.png'),
(16, 'Contacto sincrónico y asincrónico a través de un chat y blog', 'Contacto sincrónico y asincrónico a través de un chat y blog.', 'img/monitor.png'),
(17, 'Clases sincrónicas con profesor en linea', 'Clases sincrónicas con profesor en linea.', 'img/monitor.png');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `description` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `idioma`
--

CREATE TABLE `idioma` (
  `id` int(11) NOT NULL,
  `idioma` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `idioma`
--

INSERT INTO `idioma` (`id`, `idioma`) VALUES
(1, 'Inglés'),
(2, 'Portugués'),
(3, 'Italiano');

-- --------------------------------------------------------

--
-- Table structure for table `inscripcion`
--

CREATE TABLE `inscripcion` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `producto_id` int(11) DEFAULT NULL,
  `starting_date` date NOT NULL,
  `end_date` date NOT NULL,
  `status` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `payment_id` bigint(20) DEFAULT NULL,
  `preference_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `inscripcion`
--

INSERT INTO `inscripcion` (`id`, `user_id`, `producto_id`, `starting_date`, `end_date`, `status`, `description`, `payment_id`, `preference_id`) VALUES
(1, 2, 3, '2016-07-18', '2016-10-16', 'PENDING', 'Pago pendiente en mercado pago4', 2188282301, '132392047-e814a5d9-b632-4f8d-9a7e-a86a1a9c3fe6'),
(2, 3, 1, '2016-07-18', '2016-10-16', 'PENDING', 'Pago pendiente en mercado pago4', 2188391578, '132392047-40e292d6-b93f-4396-a287-c4479998deae'),
(3, 4, 1, '2016-09-06', '2016-12-05', 'CREATED', NULL, NULL, '132392047-978c2f0b-e1b5-4e06-97f0-18e6c608dd0a'),
(4, 5, 1, '2016-09-14', '2016-12-13', 'NULL', 'Pago pendiente en mercado pago4', 0, '132392047-38a6044b-1ee2-4d89-ae1d-ccd1b2d663ea'),
(5, 5, 3, '2016-09-14', '2016-12-13', 'CREATED', NULL, NULL, '132392047-cdbb2ed5-e286-4028-a6b0-7be7115c2cb6'),
(6, 6, 1, '2017-03-13', '2017-06-11', 'CREATED', NULL, NULL, '132392047-b4ae24a8-2a09-4932-88a5-322a395aa441'),
(7, 14, 1, '2017-03-29', '2017-06-27', 'CREATED', NULL, NULL, '132392047-9aa1e7f9-0032-42ce-a582-06c5f2784af6');

-- --------------------------------------------------------

--
-- Table structure for table `mp_ipn`
--

CREATE TABLE `mp_ipn` (
  `id` int(11) NOT NULL,
  `topic` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `operation_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mp_payer`
--

CREATE TABLE `mp_payer` (
  `id` int(11) NOT NULL,
  `firstname` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `lastname` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `nickname` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `identification` varchar(25) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mp_payment`
--

CREATE TABLE `mp_payment` (
  `id` int(11) NOT NULL,
  `payer_id` int(11) DEFAULT NULL,
  `order_id` int(11) NOT NULL,
  `status` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `status_detail` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `payment_type` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `currency_id` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `transaction_amount` int(11) NOT NULL,
  `total_paid_amount` int(11) NOT NULL,
  `operation_type` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `payment_method_id` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `last_modified` datetime DEFAULT NULL,
  `date_approved` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nivel`
--

CREATE TABLE `nivel` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `numero` int(11) NOT NULL,
  `cantidad_respuestas_incorrectas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `nivel`
--

INSERT INTO `nivel` (`id`, `nombre`, `numero`, `cantidad_respuestas_incorrectas`) VALUES
(1, 'Nivel Inicial', 1, 3),
(2, 'Nivel Elemental', 2, 8),
(3, 'Nivel Pre-Intermedio', 3, 5),
(4, 'Nivel Intermedio', 4, 4),
(5, 'Nivel Intermedio Alto', 5, 2),
(6, 'Nivel Avanzado', 6, 2);

-- --------------------------------------------------------

--
-- Table structure for table `placement_test`
--

CREATE TABLE `placement_test` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `mail` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `nivel` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `placement_test`
--

INSERT INTO `placement_test` (`id`, `nombre`, `mail`, `nivel`) VALUES
(1, 'Santiago', 'speralta83@msn.com', 1),
(2, 'Santiago', 'speralta83@msn.com', 1),
(3, 'Santiago', 'prueba@prueba.com', 1),
(4, 'Santiago', 'speralta83@msn.com', 1),
(5, 'Santiago', 'speralta83@msn.com', 1),
(6, 'Virginia', 'vabrigo@balanguagegroup.com', 1),
(7, 'Virginia', 'vabrigo@balanguagegroup.com', 2),
(8, 'vir', 'va@gmail.com', 1),
(9, 'Prueba0000001', 'Prueba0000001@mail.com', 1),
(10, 'Prueba0000001', 'Prueba0000001@mail.com', 1),
(11, 'Prueba0000001', 'Prueba0000001@mail.com', 1),
(12, 'Prueba0000001', 'Prueba0000001@mail.com', 1),
(13, 'Prueba0000001', 'Prueba0000001@mail.com', 1),
(14, 'Prueba0000001', 'Prueba0000001@mail.com', 1),
(15, 'Prueba0000001', 'Prueba0000001@mail.com', 1),
(16, 'Prueba0000001', 'Prueba0000001@mail.com', 1),
(17, 'Prueba0000002', 'Prueba0000002@mail.com', 1),
(18, 'Prueba0000002', 'Prueba0000002@mail.com', 1),
(19, 'Prueba0000002', 'Prueba0000002@mail.com', 1),
(20, 'Prueba0000002', 'Prueba0000002@mail.com', 1),
(21, 'Prueba0000002', 'Prueba0000002@mail.com', 1),
(22, 'prueba', 'virginiasabrigo@gmail.com', 1),
(23, 'virginia', 'virginiasabrigo@gmail.com', 1),
(24, 'Marce Prueba', 'mrepetto@balanguagegroup.com', 1),
(25, 'claudia', 'cmessina@balanguagegroup.com', 2),
(26, 'Prueba0000003', 'Prueba0000003@mail.com', 7),
(27, 'Prueba0000003', 'Prueba0000003@mail.com', 7),
(28, 'Prueba0000003', 'Prueba0000003@mail.com', 7),
(29, 'JORGE', 'JORGE.JORGE@GMAIL.COM', 6),
(30, 'Silvia Romero', 'sromero@balanguagegroup.com', 7),
(31, 'Silvia', 'sromero@balanguagegroup.com', 1),
(32, 'Silvia', 'sromero@balanguagegroup.com', 7),
(33, 'German', 'sromero@balanguagegroup.com', 4),
(34, 'Marcos', 'marcos.brst@gmail.com', 2),
(35, 'juan', 'juan@gmail.com', 1),
(36, 'juana', 'juana@gmail.com', 2),
(37, 'maria', 'maria@gmail.com', 3),
(38, 'valeria', 'valeria@gmail.com', 4),
(39, 'mariana', 'mariana@gmail.com', 4),
(40, 'julia', 'julia@gmail.com', 7),
(41, 'facundo', 'facundo.obregon@safabox.com', 2),
(42, 'facundo', 'facundo.obregon@safabox.com', 1);

-- --------------------------------------------------------

--
-- Table structure for table `preguntas`
--

CREATE TABLE `preguntas` (
  `id` int(11) NOT NULL,
  `nivel_id` int(11) DEFAULT NULL,
  `pregunta` varchar(2000) COLLATE utf8_unicode_ci NOT NULL,
  `cantidad_ok` int(11) NOT NULL,
  `cantidad_no_ok` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `preguntas`
--

INSERT INTO `preguntas` (`id`, `nivel_id`, `pregunta`, `cantidad_ok`, `cantidad_no_ok`) VALUES
(1, 1, '1. How old are you?', 0, 0),
(2, 1, '2. Do you live in Buenos Aires?', 0, 0),
(3, 1, '3. ¿Cuál de las siguientes preguntas es la correcta para la respuesta “They’re from Italy”?', 0, 0),
(4, 1, '4. Are you Mr Norton’s assistant?', 0, 0),
(5, 1, '5. ¿Cuál de las siguientes preguntas es correcta para la respuesta “I’m a secretary”?', 0, 0),
(6, 1, '6. ¿Cuál de las siguientes preguntas es correcta para la respuesta “He’s an architect.”?', 0, 0),
(7, 1, '7. I have pilates class ...', 0, 0),
(8, 1, '8. My best friend ..... to pubs every night.', 0, 0),
(9, 1, '9. How ..... does one class cost?', 0, 0),
(10, 1, '10. ¿Cuál de las siguientes preguntas es correcta para preguntar de qué nacionalidad es una persona?', 0, 0),
(11, 1, '11. ¿Cuál de las siguientes opciones es correcta?', 0, 0),
(12, 1, '12. ¿Cuál de las siguientes opciones es correcta para ofrecer una bebida?', 0, 0),
(13, 2, '13. I haven\'t got ..... ', 0, 0),
(14, 2, '14. ..... orange juice in the glass.', 0, 0),
(15, 2, '15. He goes to work.....', 0, 0),
(16, 2, '16. Which sentence is correct?', 0, 0),
(17, 2, '17. We haven\'t got ..... mineral water.', 0, 0),
(18, 2, '18.', 0, 0),
(19, 2, '19.', 0, 0),
(20, 2, '20. Mark ..... fly to London tomorrow.', 0, 0),
(21, 2, '21. Jenny lives ..... France.', 0, 0),
(22, 2, '22. John is the manager, you need to speak to .....', 0, 0),
(23, 2, '23. I wanted a purple bike but they only had .....', 0, 0),
(24, 2, '24. He ..... breakfast yesterday.', 0, 0),
(25, 2, '25.', 0, 0),
(26, 2, '26.', 0, 0),
(27, 2, '27. I have to go to the bank ..... some money.', 0, 0),
(28, 2, '28. The room was empty. There ..... there.', 0, 0),
(29, 2, '29. Which of the following options means “in any place”? I\'ve lost my keys. I can\'t find them .....', 0, 0),
(30, 2, '30. We can\'t get there by 3:00 pm. There is ..... time.', 0, 0),
(31, 2, '31. He arrived ..... Heathrow airport on Friday', 0, 0),
(32, 2, '32. ..... is it from Barcelona to Madrid?', 0, 0),
(33, 3, '33. I haven\'t had lunch with my mother ..... more than a year.', 0, 0),
(34, 3, '34. There ..... spectators at the match.', 0, 0),
(35, 3, '35. The kitchen can\'t be dirty he .....', 0, 0),
(36, 3, '36. I’m looking forward …. from you.', 0, 0),
(37, 3, '37. Don\'t start .....', 0, 0),
(38, 3, '38. He works at the theatre, ..... ?', 0, 0),
(39, 3, '39. Simon ..... in Madrid since 1982.', 0, 0),
(40, 3, '40.', 0, 0),
(41, 3, '41. Mr. Brown hasn’t arrived .....', 0, 0),
(42, 3, '42. Which of the following options is correct to illustrate an improbable situation? If I won the lottery, I ..... a house in the country.', 0, 0),
(43, 3, '43. Peter is ..... Jane to do it at the moment.', 0, 0),
(44, 3, '44. Have you sent that e-mail to Mr. Smyth? Yes, I´ve .............. done that', 0, 0),
(45, 3, '45. "..... have you been waiting?', 0, 0),
(46, 3, '46. They weren\'t surprised and nor ..... I.', 0, 0),
(47, 3, '47. This is the cat ..... I saw.', 0, 0),
(48, 4, '48. Which of the following options is correct to indicate that an action happened before another action in the past? I invited Mary out for a meal, but unfortunately she ...... dinner.', 0, 0),
(49, 4, '49. You can meet me ..... you like.', 0, 0),
(50, 4, '50. I ..... working at night nowadays.', 0, 0),
(51, 4, '51. I have to catch the 5:00 am train tomorrow, so I ..... go to bed late.', 0, 0),
(52, 4, '52. She ..... go to the dentist\'s yesterday.', 0, 0),
(53, 4, '53. That\'s the ..... of my worries, it\'ll never happen.', 0, 0),
(54, 4, '54. I wouldn\'t mind ..... tonight.', 0, 0),
(55, 4, '55. The man ..... in the corner is my boss.', 0, 0),
(56, 4, '56. "Those cases look heavy"  "..... carry one for you?"  "That\'s very nice of you"', 0, 0),
(57, 4, '57. Don\'t forget ..... those letters.', 0, 0),
(58, 4, '58. Where have you put my keys? I clearly remember .... them on the table last night.', 0, 0),
(59, 4, '59. You look tired. You ..... go to bed.', 0, 0),
(60, 4, '60. Which of the following options is correct to express that you recall an action happening in the past? That was a great match. I will never forget ..... Rivaldo score that goal.', 0, 0),
(61, 4, '61. I thought you .....', 0, 0),
(62, 4, '62. Which of the following options is correct to express uncertainty about the past? They ..... last night, but I´m not sure.', 0, 0),
(63, 4, '63. He wrote the programme ..... , he didn\'t need  anybody\'s help.', 0, 0),
(64, 5, '64. We ..... better hurry up or we\'ll be late.', 0, 0),
(65, 5, '65. She worked hard yesterday and ..... finish all the reports.', 0, 0),
(66, 5, '66. Which of the options is correct to illustrate speculation? If I ….. offered the challenge, I´d take the risk.', 0, 0),
(67, 5, '67. ', 0, 0),
(68, 5, '68. I couldn\'t mend the PC myself, so I ..... at a shop.', 0, 0),
(69, 5, '69. I wish I ..... a car, I\'m tired of catching the bus.', 0, 0),
(70, 5, '70. ', 0, 0),
(71, 5, '71. He ran so fast ..... being followed by a ghost.', 0, 0),
(72, 6, '72. ..... but I realised what he had done. ', 0, 0),
(73, 6, '73. If you\'d come to the theatre last night, you ..... the  play. ', 0, 0),
(74, 6, '74. Which of the following options is correct to illustrate the idea of disappointment? He .... have thanked you', 0, 0),
(75, 6, '75. Which of the following options is correct to express a deduction from the past? They laughed a lot last night. The film ..... very funny.', 0, 0),
(76, 6, '76. ..... thinking that he would win the lottery. ', 0, 0),
(77, 6, '77. If only I had had the courage to do this ..... ', 0, 0),
(78, 6, '78. Let\'s go to the theatre, ..... ', 0, 0),
(79, 6, '79. Which of the following options is correct to illustrate that an action will happen before a specific time in the future?\r\nBy this time tomorrow we ..... the meeting.', 0, 0),
(80, 6, '80. "We\'ll never be able to do it" said the man to nobody .....', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `producto`
--

CREATE TABLE `producto` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `price` double NOT NULL,
  `starting_date` datetime NOT NULL,
  `end_date` datetime DEFAULT NULL,
  `summary` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `best_seller` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `producto`
--

INSERT INTO `producto` (`id`, `name`, `description`, `price`, `starting_date`, `end_date`, `summary`, `best_seller`) VALUES
(1, 'Move Core', ' Move Core es un producto basado en una modalidad de autoaprendizaje, con una estrategia de explicación teórica, demostración, ejercitación, evaluación y ejecución.<br>Los contenidos están divididos por niveles. Cada nivel se encuentra dividido en módulos con temáticas identificadas como de necesidad para las situaciones de la vida laboral y cotidiana. Los contenidos formales de cada módulo han sido seleccionados y revisados para darles a los alumnos herramientas esenciales de comunicación considerando sus intereses e inquietudes, sus conocimientos ya existentes y sus objetivos.<br>Move Core cuenta con un sistema automático de verificación de progreso a través de la corrección de tus ejercicios, de un puntaje otorgado a cada práctica, de la medición de tu compromiso con el curso y de una evaluación de avances por módulo.<br>La aprobación de cada módulo es requisito para lograr adquirir una certificación que acredite el logro de los objetivos planteados.', 10, '2016-07-13 10:10:19', '0000-00-00 00:00:00', 'Move Core es un curso basado en una modalidad de autoaprendizaje, con una estrategia de explicación teórica, demostración, ejercitación, evaluación y ejecución.', 1),
(2, 'Move Coach', ' Con los mismos beneficios que Move Core, pero con la posibilidad de consultar tus dudas con un tutor y de participar de un blog de estudiantes en tu misma situacion.<br>Esta interacción te permitirá avanzar más ágilmente, basándote no sólo en la riqueza de los materiales sino también en una asistencia didáctica.<br>Move Coach también cuenta con un sistema automático de medición y certificación de objetivos.', 15, '2016-07-13 10:11:42', '0000-00-00 00:00:00', 'Con los mismos beneficios que Move Core, pero con la ventaja de contar con la posibilidad de consultar tus dudas con la asistencia colaborativa de un tutor y de un blog de estudiantes en tu misma situación.', 1),
(3, 'Move Corp', ' Move dedica recursos exclusivos a la formación de objetivos y contenidos orientados a las necesidades e intereses de cada compañía.<br>Nuestros programas se enfocan en la mejora de las capacidades de cada colaborador, elevando su motivación, a la par de un esquema costo-beneficio que favorece a su empresa.<br>Dado que nuestros modelos de enseñanza on-line son direccionados a sus necesidades en tanto sean estas puramente de capacitación eLearning como conjugada con asistencia en linea y/o capacitación presencial, los invitamos a que nos contacten para contar con sus datos y motivación de acercamiento a Move.<br><strong>Gracias por su interés en MOVE.</strong>', 20, '2016-07-13 10:11:42', '0000-00-00 00:00:00', 'La capacitación a empresas es nuestra fortaleza. Move dedica recursos exclusivos a la formación de objetivos y contenidos orientados a las necesidades e interes de cada compañia.', 1),
(4, 'Move Premium', 'Move Premium es un servicio de capacitación online con todas las ventajas de la tecnología y la seguridad de contar con un tutor disponible para tí en cada clase.<br>Este servicio ofrece alta interacción, materiales y actividades diseñados para tus necesidades específicas. Podrás ajustar tus tiempos y horarios agendando las horas de clase que consideres mas óptimas para tí teniendo en cuenta tus posibilidades de tiempo y económicas.<br>Este servicio premium te permitirá hablar en línea con docentes bilingües y nativos desarrollando así tus habilidades lingüísticas de manera más dinámica, más real y entretenida.<br>Las actividades de ejercitación serán evaluadas en forma automática y también por un tutor que podrá brindarte feedback respecto a tu desempeño y avance. De esta manera, el aprendizaje será más fluido y podrás aclarar tus dudas de forma directa.<br>Move Premium también cuenta con una certificación de logros después de cada módulo aprobado.', 25, '2016-07-13 10:11:42', '0000-00-00 00:00:00', 'Move Premium es un servicio de capacitación online con todas las ventajas de la tecnología y la seguridad de contar con un tutor disponible para ti en cada clase.', 1),
(5, 'Move Talk', 'Todas las ventajas de tener acceso a nuestra plataforma virtual las 24 horas más clases sincrónicas con un profesor, en forma individual o como parte de un grupo.<br>Nuestra visión respecto de cómo capacitar es simplemente enfocándonos en la mejora de las capacidades de cada persona y elevando su motivación. Todos los productos MOVE cuentan con un sistema automático de verificación de progreso a través de la corrección de ejercicios, de un puntaje otorgado a cada práctica, de la medición de compromiso con el curso y de una evaluación de avances por módulo.', 30, '2016-07-13 10:11:42', '0000-00-00 00:00:00', 'Move Talk!', 1);

-- --------------------------------------------------------

--
-- Table structure for table `productos_caracteristicas`
--

CREATE TABLE `productos_caracteristicas` (
  `producto_id` int(11) NOT NULL,
  `caracteristica_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `productos_caracteristicas`
--

INSERT INTO `productos_caracteristicas` (`producto_id`, `caracteristica_id`) VALUES
(1, 6),
(1, 7),
(1, 8),
(1, 9),
(1, 11),
(1, 12),
(1, 13),
(2, 6),
(2, 7),
(2, 8),
(2, 9),
(2, 11),
(2, 12),
(2, 13),
(2, 14),
(3, 6),
(3, 7),
(3, 8),
(3, 9),
(3, 11),
(3, 12),
(3, 13),
(3, 14),
(3, 15),
(3, 16),
(3, 17),
(4, 6),
(4, 7),
(4, 8),
(4, 9),
(4, 11),
(4, 12),
(4, 13),
(4, 14),
(4, 15),
(4, 16),
(5, 6),
(5, 7),
(5, 8),
(5, 9),
(5, 11),
(5, 12),
(5, 13),
(5, 14),
(5, 15),
(5, 16),
(5, 17);

-- --------------------------------------------------------

--
-- Table structure for table `productos_idiomas`
--

CREATE TABLE `productos_idiomas` (
  `producto_id` int(11) NOT NULL,
  `idioma_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `productos_idiomas`
--

INSERT INTO `productos_idiomas` (`producto_id`, `idioma_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(5, 2),
(5, 3);

-- --------------------------------------------------------

--
-- Table structure for table `respuestas`
--

CREATE TABLE `respuestas` (
  `id` int(11) NOT NULL,
  `pregunta_id` int(11) DEFAULT NULL,
  `respuesta` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `correcta` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `respuestas`
--

INSERT INTO `respuestas` (`id`, `pregunta_id`, `respuesta`, `correcta`) VALUES
(1, 1, 'I have 31 years old', 0),
(2, 1, 'I am 31 years old', 1),
(3, 1, 'No, I\'m not old', 0),
(4, 1, 'I have 31 years', 0),
(5, 2, 'Yes, I live', 0),
(6, 2, 'Yes, I do', 1),
(7, 2, 'Yes, I am', 0),
(8, 2, 'Yes, I does', 0),
(9, 3, 'Where are you from?', 0),
(10, 3, 'Where are they of?', 0),
(11, 3, 'Where is they from?', 0),
(12, 3, 'Where are they from?', 1),
(13, 4, 'No, I aren\'t', 0),
(14, 4, 'No, I don\'t', 0),
(15, 4, 'No, I am not', 1),
(16, 4, 'No, am not', 0),
(17, 5, 'What are you do?', 0),
(18, 5, 'What you do?', 0),
(19, 5, 'What are you doing?', 0),
(20, 5, 'What do you do?', 1),
(21, 6, 'What his job?', 0),
(22, 6, 'What\'s his job?', 1),
(23, 6, 'What\'s he job?', 0),
(24, 6, 'What do he job?', 0),
(25, 7, 'on Tuesdays', 1),
(26, 7, 'the Tuesdays', 0),
(27, 7, 'in Tuesdays', 0),
(28, 7, 'at Tuesdays', 0),
(29, 8, 'gos', 0),
(30, 8, 'go', 0),
(31, 8, 'goed', 0),
(32, 8, 'goes', 1),
(33, 9, 'is', 0),
(34, 9, 'many', 0),
(35, 9, 'big', 0),
(36, 9, 'much', 1),
(37, 10, 'What is your nationality?', 1),
(38, 10, 'What nationality are you?', 0),
(39, 10, 'What is your country?', 0),
(41, 11, 'He live in Madrid', 0),
(42, 11, 'He’s lives in Madrid', 0),
(43, 11, 'He lives in Madrid', 1),
(44, 11, 'He is live in Madrid', 0),
(45, 12, 'What you like to drink?', 0),
(46, 12, 'What would you like to drink?', 1),
(47, 12, 'What would you like drinking?', 0),
(49, 13, 'A. no money.', 0),
(50, 13, 'B. lot of money.', 0),
(51, 13, 'C. any money.', 1),
(52, 13, 'D. some money.', 0),
(53, 14, 'A. There isn\'t no', 0),
(54, 14, 'B. There is any', 0),
(55, 14, 'C. There isn\'t any', 1),
(56, 14, 'D. There aren\'t no', 0),
(57, 15, 'A. by taxi.', 1),
(58, 15, 'B. on taxi.', 0),
(59, 15, 'C. with taxi.', 0),
(60, 15, 'D. in taxi.', 0),
(61, 16, 'A. He wakes up at 9:00 always', 0),
(62, 16, 'B. He wakes up at always 9:00', 0),
(63, 16, 'C. He always wakes up at 9:00', 1),
(64, 16, 'D. He wakes always up at 9:00', 0),
(65, 17, 'A. a lot', 0),
(66, 17, 'B. little', 0),
(67, 17, 'C. too', 0),
(68, 17, 'D. much', 0),
(69, 18, 'A. Where playing Manchester United?', 0),
(70, 18, 'B. Where is playing Manchester United?', 0),
(71, 18, 'C. Where is Manchester United playing?', 1),
(72, 18, 'D. Where playing is Manchester United?', 0),
(73, 19, 'A. What\'s like the weather?', 0),
(74, 19, 'B. How\'s the weather like?', 0),
(75, 19, 'C. What\'s the weather like?', 1),
(76, 19, 'D. How the weather is?', 0),
(77, 20, 'A. going to', 0),
(78, 20, 'B. goes to', 0),
(79, 20, 'C. is going to', 1),
(80, 20, 'D. go to', 0),
(81, 21, 'A. at', 0),
(82, 21, 'B. in', 1),
(83, 21, 'C. on', 0),
(84, 21, 'D. in the', 0),
(85, 22, 'A. it.', 0),
(86, 22, 'B. him.', 1),
(87, 22, 'C. her.', 0),
(88, 22, 'D. you.', 0),
(89, 23, 'A. a one green.', 0),
(90, 23, 'B. one green.', 0),
(91, 23, 'C. a green one.', 1),
(92, 23, 'D. a green.', 0),
(93, 24, 'A. hadn\'t', 0),
(94, 24, 'B. no had', 0),
(95, 24, 'C. didn\'t have got', 0),
(96, 24, 'D. didn\'t have', 1),
(97, 25, 'A. Give the Joan money.', 0),
(98, 25, 'B. Give the money to Joan.', 1),
(99, 25, 'C. Give to Joan the money.', 0),
(100, 25, 'D. Give the money at Joan.', 0),
(101, 26, 'A. Mary usually drives carefully.', 1),
(102, 26, 'B. Mary carefully drives usually.', 0),
(103, 26, 'C. Mary carefully usually drives.', 0),
(104, 26, 'D. Mary usually carefully drives.', 0),
(105, 27, 'A. for getting', 0),
(106, 27, 'B. to get', 1),
(107, 27, 'C. to getting', 0),
(108, 27, 'D. for to get', 0),
(109, 28, 'A. wasn\'t nobody', 0),
(110, 28, 'B. was anybody', 0),
(111, 28, 'C. was nobody', 1),
(112, 28, 'D. was somebody', 0),
(114, 29, 'A. anywhere.', 1),
(115, 29, 'B. nowhere.', 0),
(116, 29, 'C. nothing.', 0),
(117, 29, 'D. somewhere.', 0),
(118, 30, 'A. few', 0),
(119, 30, 'B. too little', 1),
(120, 30, 'C. a few', 0),
(121, 30, 'D. too few', 0),
(122, 31, 'A. in', 0),
(123, 31, 'B. at', 1),
(124, 31, 'C. on', 0),
(125, 31, 'D. by', 0),
(126, 32, 'A. How far', 1),
(127, 32, 'B. How long', 0),
(128, 32, 'C. How much', 0),
(129, 32, 'D. How many', 0),
(131, 33, 'A. since', 0),
(132, 33, 'B. -----', 0),
(133, 33, 'C. for', 1),
(134, 33, 'D. during', 0),
(136, 34, 'A. were no', 1),
(137, 34, 'B. weren\'t no', 0),
(138, 34, 'C. were any', 0),
(139, 34, 'D. were not', 0),
(140, 35, 'A. is just clean it.', 0),
(141, 35, 'B. have just cleaned it.', 0),
(142, 35, 'C. just clean it.', 0),
(143, 35, 'D. has just cleaned it.', 1),
(144, 36, 'A. to hear', 0),
(145, 36, 'B. hearing', 0),
(146, 36, 'C. hear', 0),
(147, 36, 'D. to hearing', 1),
(148, 37, 'A. to shouting!', 0),
(149, 37, 'B. shouting!', 1),
(150, 37, 'C. shout!', 0),
(151, 37, 'D. to shout', 0),
(152, 38, 'A. doesn\'t he?', 1),
(153, 38, 'B. does he?', 0),
(154, 38, 'C. isn\'t he?', 0),
(155, 38, 'D. didn\'t he?', 0),
(156, 39, 'A. lives', 0),
(157, 39, 'B. is living', 0),
(158, 39, 'C. does live', 0),
(159, 39, 'D. has lived', 1),
(160, 40, 'A. I told her what she closed the window.', 0),
(161, 40, 'B. I told her to close the window.', 1),
(162, 40, 'C. I told she close the window.', 0),
(163, 40, 'D. I told her that she close the window.', 0),
(164, 41, 'A. already', 0),
(165, 41, 'B. still', 0),
(166, 41, 'C. now', 0),
(167, 41, 'D. yet', 1),
(168, 42, 'A. would buy', 1),
(169, 42, 'B. have bought', 0),
(170, 42, 'C. will buy', 0),
(171, 42, 'D. would have bought', 0),
(172, 43, 'A. telling', 1),
(173, 43, 'B. saying', 0),
(174, 43, 'C. saying to', 0),
(175, 43, 'D. telling to', 0),
(176, 44, 'A. still', 0),
(177, 44, 'B. already', 1),
(178, 44, 'C. yet', 0),
(179, 44, 'D. now', 0),
(180, 45, 'A. How long', 1),
(181, 45, 'B. What time', 0),
(182, 45, 'C. How far', 0),
(183, 45, 'D. When', 0),
(184, 46, 'A. weren\'t', 0),
(185, 46, 'B. wasn\'t', 0),
(186, 46, 'C. were', 0),
(187, 46, 'D. was', 1),
(188, 47, 'A. whom', 0),
(189, 47, 'B. -----', 1),
(190, 47, 'C. what', 0),
(191, 47, 'D. who', 0),
(192, 48, 'A. has already had', 0),
(193, 48, 'B. had already had', 1),
(194, 48, 'C. have already had', 0),
(195, 48, 'D. already had', 0),
(196, 49, 'A. whenever', 1),
(197, 49, 'B. soon', 0),
(198, 49, 'C. always', 0),
(199, 49, 'D. whatever', 0),
(200, 50, 'A. used to', 0),
(201, 50, 'B. used', 0),
(202, 50, 'C. am used to', 1),
(203, 50, 'D. would', 0),
(204, 51, 'A. needn\'t', 0),
(205, 51, 'B. haven\'t', 0),
(206, 51, 'C. have to', 0),
(207, 51, 'D. shouldn’t', 1),
(208, 52, 'A. must', 0),
(209, 52, 'B. had to', 1),
(210, 52, 'C. ought to', 0),
(211, 52, 'D. should have', 0),
(212, 53, 'A. fewer', 0),
(213, 53, 'B. less', 0),
(214, 53, 'C. last', 0),
(215, 53, 'D. least', 1),
(216, 54, 'A. to go out', 0),
(217, 54, 'B. go out', 0),
(218, 54, 'C. going out', 1),
(219, 54, 'D. to going out', 0),
(220, 55, 'A. whose', 0),
(221, 55, 'B. sitting', 1),
(222, 55, 'C. is sitting', 0),
(223, 55, 'D. sits', 0),
(224, 56, 'A. Will I', 0),
(225, 56, 'B. Do I have', 0),
(226, 56, 'C. Shall I', 1),
(227, 56, 'D. Do it', 0),
(228, 57, 'A. to post', 1),
(229, 57, 'B. posting', 0),
(230, 57, 'C. to posting', 0),
(231, 57, 'D. post', 0),
(232, 58, 'A. to leave', 0),
(233, 58, 'B. left', 0),
(234, 58, 'C. did leave', 0),
(235, 58, 'D. leaving', 1),
(236, 59, 'A. need', 0),
(237, 59, 'B. have', 0),
(238, 59, 'C. should have', 0),
(239, 59, 'D. should', 1),
(240, 60, 'A. see', 0),
(241, 60, 'B. to see', 0),
(242, 60, 'C. seeing', 1),
(243, 60, 'D. to seeing', 0),
(244, 61, 'A. will come to the party.', 0),
(245, 61, 'B. were coming to the party.', 1),
(246, 61, 'C. come to the party.', 0),
(247, 61, 'D. have come to the party.', 0),
(248, 62, 'A. must have come', 0),
(249, 62, 'B. can´t have come', 0),
(250, 62, 'C. should have come', 1),
(251, 62, 'D. may have come', 0),
(252, 63, 'A. by his own', 0),
(253, 63, 'B. on his own', 1),
(254, 63, 'C. on himself', 0),
(255, 64, 'A. would', 0),
(256, 64, 'B. should', 0),
(257, 64, 'C. had', 1),
(258, 64, 'D. ought', 0),
(259, 65, 'A. was able to', 1),
(260, 65, 'B. can', 0),
(261, 65, 'C. could', 0),
(262, 65, 'D. would be', 0),
(263, 66, 'A. am', 0),
(264, 66, 'B. would be', 0),
(265, 66, 'C. were', 1),
(266, 67, 'A. Ask her when will be ready the food.', 0),
(267, 67, 'B. Ask her when will be the food ready.', 0),
(268, 67, 'C. Ask her when the food will be ready.', 1),
(269, 68, 'A. had it mended', 1),
(270, 68, 'B. had it mend', 0),
(271, 68, 'C. did it mend', 0),
(272, 68, 'D. had mended', 0),
(273, 69, 'A. have', 0),
(274, 69, 'B. would have', 0),
(275, 69, 'C. had', 1),
(276, 69, 'D. had had', 0),
(277, 70, 'A. That\'s a brown, fashionable leather coat.', 0),
(278, 70, 'B. That\'s a brown leather coat fashionable.', 0),
(279, 70, 'C. That\'s a fashionable leather brown coat.', 0),
(280, 70, 'D. That\'s a fashionable brown leather coat.', 1),
(281, 71, 'A. as', 0),
(282, 71, 'B. as if he were', 0),
(283, 71, 'C. like', 0),
(284, 72, 'A. Little did he know', 1),
(285, 72, 'B. Little known', 1),
(286, 72, 'C. Little he knew', 0),
(287, 73, 'A. would enjoy', 0),
(288, 73, 'B. had enjoyed', 0),
(289, 73, 'C. would have enjoyed', 1),
(290, 73, 'D. will enjoy', 0),
(291, 74, 'A. must', 0),
(292, 74, 'B. may', 0),
(293, 74, 'C. would', 0),
(294, 74, 'D. should', 1),
(295, 75, 'A. should have been', 0),
(296, 75, 'B. must have been', 1),
(297, 75, 'C. might have been', 0),
(298, 75, 'D. may have been', 0),
(299, 76, 'A. There was no use in', 1),
(300, 76, 'B. It was no point in', 0),
(301, 76, 'C. It was no use in', 0),
(302, 77, 'A. years back.', 1),
(303, 77, 'B. for years.', 0),
(304, 77, 'C. since years.', 0),
(305, 77, 'D. in years.', 0),
(306, 78, 'A. don\'t we?', 0),
(307, 78, 'B. let us?', 0),
(308, 78, 'C. shall we?', 1),
(309, 78, 'D. will we?', 0),
(310, 79, 'A. will have', 0),
(311, 79, 'B. will have had', 1),
(312, 79, 'C. are having', 0),
(313, 79, 'D. will had had', 0),
(314, 80, 'A. especially.', 0),
(315, 80, 'B. specially.', 0),
(316, 80, 'C. in particular.', 1);

-- --------------------------------------------------------

--
-- Table structure for table `test`
--

CREATE TABLE `test` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `contact_id` int(11) DEFAULT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `starting_date` date NOT NULL,
  `status` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `salt` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `province` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `allows_email` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `contact_id`, `name`, `last_name`, `email`, `starting_date`, `status`, `password`, `salt`, `country`, `province`, `city`, `allows_email`) VALUES
(2, NULL, 'Facundo', 'Obregon', 'facuobregon@gmail.com', '2016-07-18', 'Activo', 'o5cAjSVT2tpIsFLvPXYod1KuEFBh3fTZAqE08WGVPHE5B7y4mU7Nfx9wfpy0fZZwbabL5dwqMn/P1Zkx3slLLw==', 'ef139d9feece14f915266effb3261050', NULL, NULL, NULL, 0),
(3, NULL, 'Jimena', 'Tulino', 'jime.s.tulino@gmail.com', '2016-07-18', 'Activo', 'HB58T+63+TCoDLM91OVhM4lA480D9i875k/+6d0Fvhva4tSdhDAesxrWrvrqhn9VIB00e8jvQy06kNGHum5oSA==', 'e4c9f9a8675f9200ba6a6cd771c33a0f', NULL, NULL, NULL, 0),
(4, NULL, 'Santiago', 'Peralta', 'speralta83@msn.com', '2016-09-05', 'Activo', 'lF/7LFSYlImBQ++JmPzHG6mMOBPFT8UPe1qPmRJN85n9Ulpv6TIMGkein871m69XXmre7uvCq6yR7OQHwQyKXw==', 'e61c8a152c66e151fd70467899662da5', NULL, NULL, NULL, 0),
(5, NULL, 'Facundo', 'Obregon', 'facundo.obregon@safabox.com', '2016-09-05', 'Activo', 'LcDSmTByf/2jiQK/bu7+nj08OM/lj+0fSfpGy3OHbq/t8BbU2T1dSZl2ydcPb1D488AdtzQ8kOvU++RxdouUZA==', 'da85a010fd63b79f7836d1dc83c3c01e', NULL, NULL, NULL, 0),
(6, NULL, 'Virginia', 'Abrigo', 'vabrigo@balanguagegroup.com', '2017-03-10', 'Activo', '73RqmzSE11iOE8hSdq9E2NwtxTBLln9tFzl7KBA3NYnFG7bgHJ5HOTCNTA1L8RRF7hWADQALLbyIFWz9Q3xMBQ==', '2461f2baf954fd99fc87f1d97832baa2', NULL, NULL, NULL, 1),
(14, NULL, 'facundo', 'obregon', 'facundo.obregon@example1.com', '2017-03-29', 'Activo', 'EU7MB355VhvcbvQ/y7rntcJL9gPEPMQZuMfaNos8BYzcFRrsNNyHS4DPOjzNFm+OJcJi1MlkymSEzV76xj2iBQ==', '3efcb14e4cf21adbf4359b7201bd86c9', NULL, NULL, NULL, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `caracteristica`
--
ALTER TABLE `caracteristica`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_999DAE495E237E06` (`name`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_4C62E6386DE44026` (`description`);

--
-- Indexes for table `idioma`
--
ALTER TABLE `idioma`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inscripcion`
--
ALTER TABLE `inscripcion`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_935E99F0A76ED395` (`user_id`),
  ADD KEY `IDX_935E99F07645698E` (`producto_id`);

--
-- Indexes for table `mp_ipn`
--
ALTER TABLE `mp_ipn`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mp_payer`
--
ALTER TABLE `mp_payer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mp_payment`
--
ALTER TABLE `mp_payment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_4B729E7AC17AD9A9` (`payer_id`);

--
-- Indexes for table `nivel`
--
ALTER TABLE `nivel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `placement_test`
--
ALTER TABLE `placement_test`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `preguntas`
--
ALTER TABLE `preguntas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_38794855DA3426AE` (`nivel_id`);

--
-- Indexes for table `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_A7BB06155E237E06` (`name`);

--
-- Indexes for table `productos_caracteristicas`
--
ALTER TABLE `productos_caracteristicas`
  ADD PRIMARY KEY (`producto_id`,`caracteristica_id`),
  ADD KEY `IDX_BC56B5197645698E` (`producto_id`),
  ADD KEY `IDX_BC56B519A7300D78` (`caracteristica_id`);

--
-- Indexes for table `productos_idiomas`
--
ALTER TABLE `productos_idiomas`
  ADD PRIMARY KEY (`producto_id`,`idioma_id`),
  ADD KEY `IDX_2ABBAA617645698E` (`producto_id`),
  ADD KEY `IDX_2ABBAA61DEDC0611` (`idioma_id`);

--
-- Indexes for table `respuestas`
--
ALTER TABLE `respuestas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_5CD06EB131A5801E` (`pregunta_id`);

--
-- Indexes for table `test`
--
ALTER TABLE `test`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`),
  ADD KEY `IDX_8D93D649E7A1254A` (`contact_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `caracteristica`
--
ALTER TABLE `caracteristica`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `idioma`
--
ALTER TABLE `idioma`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `inscripcion`
--
ALTER TABLE `inscripcion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `mp_ipn`
--
ALTER TABLE `mp_ipn`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mp_payment`
--
ALTER TABLE `mp_payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nivel`
--
ALTER TABLE `nivel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `placement_test`
--
ALTER TABLE `placement_test`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT for table `preguntas`
--
ALTER TABLE `preguntas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;
--
-- AUTO_INCREMENT for table `producto`
--
ALTER TABLE `producto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `respuestas`
--
ALTER TABLE `respuestas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=317;
--
-- AUTO_INCREMENT for table `test`
--
ALTER TABLE `test`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `inscripcion`
--
ALTER TABLE `inscripcion`
  ADD CONSTRAINT `FK_935E99F07645698E` FOREIGN KEY (`producto_id`) REFERENCES `producto` (`id`),
  ADD CONSTRAINT `FK_935E99F0A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `mp_payment`
--
ALTER TABLE `mp_payment`
  ADD CONSTRAINT `FK_4B729E7AC17AD9A9` FOREIGN KEY (`payer_id`) REFERENCES `mp_payer` (`id`);

--
-- Constraints for table `preguntas`
--
ALTER TABLE `preguntas`
  ADD CONSTRAINT `FK_38794855DA3426AE` FOREIGN KEY (`nivel_id`) REFERENCES `nivel` (`id`);

--
-- Constraints for table `productos_caracteristicas`
--
ALTER TABLE `productos_caracteristicas`
  ADD CONSTRAINT `FK_BC56B5197645698E` FOREIGN KEY (`producto_id`) REFERENCES `producto` (`id`),
  ADD CONSTRAINT `FK_BC56B519A7300D78` FOREIGN KEY (`caracteristica_id`) REFERENCES `caracteristica` (`id`);

--
-- Constraints for table `productos_idiomas`
--
ALTER TABLE `productos_idiomas`
  ADD CONSTRAINT `FK_2ABBAA617645698E` FOREIGN KEY (`producto_id`) REFERENCES `producto` (`id`),
  ADD CONSTRAINT `FK_2ABBAA61DEDC0611` FOREIGN KEY (`idioma_id`) REFERENCES `idioma` (`id`);

--
-- Constraints for table `respuestas`
--
ALTER TABLE `respuestas`
  ADD CONSTRAINT `FK_5CD06EB131A5801E` FOREIGN KEY (`pregunta_id`) REFERENCES `preguntas` (`id`);

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `FK_8D93D649E7A1254A` FOREIGN KEY (`contact_id`) REFERENCES `contact` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
