USE move;

/* NIVELES */
insert into move.nivel (id,numero,cantidad_respuestas_incorrectas,nombre) values (1,1,3,'Nivel Inicial');
insert into move.nivel (id,numero,cantidad_respuestas_incorrectas,nombre) values (2,2,8,'Nivel Elemental');
insert into move.nivel (id,numero,cantidad_respuestas_incorrectas,nombre) values (3,3,5,'Nivel Pre-Intermedio');
insert into move.nivel (id,numero,cantidad_respuestas_incorrectas,nombre) values (4,4,4,'Nivel Intermedio');
insert into move.nivel (id,numero,cantidad_respuestas_incorrectas,nombre) values (5,5,2,'Nivel Intermedio Alto');
insert into move.nivel (id,numero,cantidad_respuestas_incorrectas,nombre) values (6,6,2,'Nivel Avanzado');

/* Preguntas Nivel Inicial */
insert into move.preguntas (id,nivel_id,pregunta,cantidad_ok,cantidad_no_ok) values (1,1,'1. How old are you?',0,0);
insert into move.preguntas (id,nivel_id,pregunta,cantidad_ok,cantidad_no_ok) values (2,1,'2. Do you live in Buenos Aires?',0,0);
insert into move.preguntas (id,nivel_id,pregunta,cantidad_ok,cantidad_no_ok) values (3,1,'3. ¿Cuál de las siguientes preguntas es la correcta para la respuesta “They’re from Italy”?',0,0);
insert into move.preguntas (id,nivel_id,pregunta,cantidad_ok,cantidad_no_ok) values (4,1,'4. Are you Mr Norton’s assistant?',0,0);
insert into move.preguntas (id,nivel_id,pregunta,cantidad_ok,cantidad_no_ok) values (5,1,'5. ¿Cuál de las siguientes preguntas es correcta para la respuesta “I’m a secretary”?',0,0);
insert into move.preguntas (id,nivel_id,pregunta,cantidad_ok,cantidad_no_ok) values (6,1,'6. ¿Cuál de las siguientes preguntas es correcta para la respuesta “He’s an architect.”?',0,0);
insert into move.preguntas (id,nivel_id,pregunta,cantidad_ok,cantidad_no_ok) values (7,1,'7. I have pilates class ...',0,0);
insert into move.preguntas (id,nivel_id,pregunta,cantidad_ok,cantidad_no_ok) values (8,1,'8. My best friend ..... to pubs every night.',0,0);
insert into move.preguntas (id,nivel_id,pregunta,cantidad_ok,cantidad_no_ok) values (9,1,'9. How ..... does one class cost?',0,0);
insert into move.preguntas (id,nivel_id,pregunta,cantidad_ok,cantidad_no_ok) values (10,1,'10. ¿Cuál de las siguientes preguntas es correcta para preguntar de qué nacionalidad es una persona?',0,0);
insert into move.preguntas (id,nivel_id,pregunta,cantidad_ok,cantidad_no_ok) values (11,1,'11. ¿Cuál de las siguientes opciones es correcta?',0,0);
insert into move.preguntas (id,nivel_id,pregunta,cantidad_ok,cantidad_no_ok) values (12,1,'12. ¿Cuál de las siguientes opciones es correcta para ofrecer una bebida?',0,0);

/* Respuestas Nivel Inicial */
insert into move.respuestas (id,pregunta_id,respuesta,correcta) values (1,1,'I have 31 years old',0);
insert into move.respuestas (id,pregunta_id,respuesta,correcta) values (2,1,'I am 31 years old',1);
insert into move.respuestas (id,pregunta_id,respuesta,correcta) values (3,1,'No, I\'m not old',0);
insert into move.respuestas (id,pregunta_id,respuesta,correcta) values (4,1,'I have 31 years',0);

insert into move.respuestas (id,pregunta_id,respuesta,correcta) values (5,2,'Yes, I live',0);
insert into move.respuestas (id,pregunta_id,respuesta,correcta) values (6,2,'Yes, I do',1);
insert into move.respuestas (id,pregunta_id,respuesta,correcta) values (7,2,'Yes, I am',0);
insert into move.respuestas (id,pregunta_id,respuesta,correcta) values (8,2,'Yes, I does',0);

insert into move.respuestas (id,pregunta_id,respuesta,correcta) values (9,3,'Where are you from?',0);
insert into move.respuestas (id,pregunta_id,respuesta,correcta) values (10,3,'Where are they of?',0);
insert into move.respuestas (id,pregunta_id,respuesta,correcta) values (11,3,'Where is they from?',0);
insert into move.respuestas (id,pregunta_id,respuesta,correcta) values (12,3,'Where are they from?',1);

insert into move.respuestas (id,pregunta_id,respuesta,correcta) values (13,4,'No, I aren\'t',0);
insert into move.respuestas (id,pregunta_id,respuesta,correcta) values (14,4,'No, I don\'t',0);
insert into move.respuestas (id,pregunta_id,respuesta,correcta) values (15,4,'No, I am not',1);
insert into move.respuestas (id,pregunta_id,respuesta,correcta) values (16,4,'No, am not',0);

insert into move.respuestas (id,pregunta_id,respuesta,correcta) values (17,5,'What are you do?',0);
insert into move.respuestas (id,pregunta_id,respuesta,correcta) values (18,5,'What you do?',0);
insert into move.respuestas (id,pregunta_id,respuesta,correcta) values (19,5,'What are you doing?',0);
insert into move.respuestas (id,pregunta_id,respuesta,correcta) values (20,5,'What do you do?',1);

insert into move.respuestas (id,pregunta_id,respuesta,correcta) values (21,6,'What his job?',0);
insert into move.respuestas (id,pregunta_id,respuesta,correcta) values (22,6,'What\'s his job?',1);
insert into move.respuestas (id,pregunta_id,respuesta,correcta) values (23,6,'What\'s he job?',0);
insert into move.respuestas (id,pregunta_id,respuesta,correcta) values (24,6,'What do he job?',0);

insert into move.respuestas (id,pregunta_id,respuesta,correcta) values (25,7,'on Tuesdays',1);
insert into move.respuestas (id,pregunta_id,respuesta,correcta) values (26,7,'the Tuesdays',0);
insert into move.respuestas (id,pregunta_id,respuesta,correcta) values (27,7,'in Tuesdays',0);
insert into move.respuestas (id,pregunta_id,respuesta,correcta) values (28,7,'at Tuesdays',0);

insert into move.respuestas (id,pregunta_id,respuesta,correcta) values (29,8,'gos',0);
insert into move.respuestas (id,pregunta_id,respuesta,correcta) values (30,8,'go',0);
insert into move.respuestas (id,pregunta_id,respuesta,correcta) values (31,8,'goed',0);
insert into move.respuestas (id,pregunta_id,respuesta,correcta) values (32,8,'goes',1);

insert into move.respuestas (id,pregunta_id,respuesta,correcta) values (33,9,'is',0);
insert into move.respuestas (id,pregunta_id,respuesta,correcta) values (34,9,'many',0);
insert into move.respuestas (id,pregunta_id,respuesta,correcta) values (35,9,'big',0);
insert into move.respuestas (id,pregunta_id,respuesta,correcta) values (36,9,'much',1);

insert into move.respuestas (id,pregunta_id,respuesta,correcta) values (37,10,'What is your nationality?',1);
insert into move.respuestas (id,pregunta_id,respuesta,correcta) values (38,10,'What nationality are you?',0);
insert into move.respuestas (id,pregunta_id,respuesta,correcta) values (39,10,'What is your country?',0);
insert into move.respuestas (id,pregunta_id,respuesta,correcta) values (40,10,'',0);

insert into move.respuestas (id,pregunta_id,respuesta,correcta) values (41,11,'He live in Madrid',0);
insert into move.respuestas (id,pregunta_id,respuesta,correcta) values (42,11,'He’s lives in Madrid',0);
insert into move.respuestas (id,pregunta_id,respuesta,correcta) values (43,11,'He lives in Madrid',1);
insert into move.respuestas (id,pregunta_id,respuesta,correcta) values (44,11,'He is live in Madrid',0);

insert into move.respuestas (id,pregunta_id,respuesta,correcta) values (45,12,'What you like to drink?',0);
insert into move.respuestas (id,pregunta_id,respuesta,correcta) values (46,12,'What would you like to drink?',1);
insert into move.respuestas (id,pregunta_id,respuesta,correcta) values (47,12,'What would you like drinking?',0);
insert into move.respuestas (id,pregunta_id,respuesta,correcta) values (48,12,'',0);

DELETE FROM move.respuestas WHERE id in (48,40);

COMMIT;


