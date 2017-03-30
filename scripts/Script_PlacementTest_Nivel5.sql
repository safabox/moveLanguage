USE move;

/* Preguntas Nivel Intermedio Alto */
insert into move.preguntas (id,nivel_id,pregunta,cantidad_ok,cantidad_no_ok) values (64,5,'64. We ..... better hurry up or we\'ll be late.',0,0); 
insert into move.preguntas (id,nivel_id,pregunta,cantidad_ok,cantidad_no_ok) values (65,5,'65. She worked hard yesterday and ..... finish all the reports.',0,0); 
insert into move.preguntas (id,nivel_id,pregunta,cantidad_ok,cantidad_no_ok) values (66,5,'66. Which of the options is correct to illustrate speculation?',0,0); 
insert into move.preguntas (id,nivel_id,pregunta,cantidad_ok,cantidad_no_ok) values (67,5,'67. ',0,0); 
insert into move.preguntas (id,nivel_id,pregunta,cantidad_ok,cantidad_no_ok) values (68,5,'68. I couldn\'t mend the PC myself, so I ..... at a shop.',0,0); 
insert into move.preguntas (id,nivel_id,pregunta,cantidad_ok,cantidad_no_ok) values (69,5,'69. I wish I ..... a car, I\'m tired of catching the bus.',0,0); 
insert into move.preguntas (id,nivel_id,pregunta,cantidad_ok,cantidad_no_ok) values (70,5,'70. ',0,0); 
insert into move.preguntas (id,nivel_id,pregunta,cantidad_ok,cantidad_no_ok) values (71,5,'71. He ran so fast ..... being followed by a ghost.',0,0); 

/* Respuestas Nivel Intermedio Alto */
insert into move.respuestas (id,pregunta_id,respuesta,correcta) values (255,64,'A. would',0);
insert into move.respuestas (id,pregunta_id,respuesta,correcta) values (256,64,'B. should',0);
insert into move.respuestas (id,pregunta_id,respuesta,correcta) values (257,64,'C. had',1);
insert into move.respuestas (id,pregunta_id,respuesta,correcta) values (258,64,'D. ought',0);
insert into move.respuestas (id,pregunta_id,respuesta,correcta) values (259,65,'A. was able to',1);
insert into move.respuestas (id,pregunta_id,respuesta,correcta) values (260,65,'B. can',0);
insert into move.respuestas (id,pregunta_id,respuesta,correcta) values (261,65,'C. could',0);
insert into move.respuestas (id,pregunta_id,respuesta,correcta) values (262,65,'D. would be',0);
insert into move.respuestas (id,pregunta_id,respuesta,correcta) values (263,66,'A. am',0);
insert into move.respuestas (id,pregunta_id,respuesta,correcta) values (264,66,'B. would be',0);
insert into move.respuestas (id,pregunta_id,respuesta,correcta) values (265,66,'C. were',1);
insert into move.respuestas (id,pregunta_id,respuesta,correcta) values (266,67,'A. Ask her when will be ready the food.',0);
insert into move.respuestas (id,pregunta_id,respuesta,correcta) values (267,67,'B. Ask her when will be the food ready.',0);
insert into move.respuestas (id,pregunta_id,respuesta,correcta) values (268,67,'C. Ask her when the food will be ready.',1);
insert into move.respuestas (id,pregunta_id,respuesta,correcta) values (269,68,'A. had it mended',1);
insert into move.respuestas (id,pregunta_id,respuesta,correcta) values (270,68,'B. had it mend',0);
insert into move.respuestas (id,pregunta_id,respuesta,correcta) values (271,68,'C. did it mend',0);
insert into move.respuestas (id,pregunta_id,respuesta,correcta) values (272,68,'D. had mended',0);
insert into move.respuestas (id,pregunta_id,respuesta,correcta) values (273,69,'A. have',0);
insert into move.respuestas (id,pregunta_id,respuesta,correcta) values (274,69,'B. would have',0);
insert into move.respuestas (id,pregunta_id,respuesta,correcta) values (275,69,'C. had',1);
insert into move.respuestas (id,pregunta_id,respuesta,correcta) values (276,69,'D. had had',0);
insert into move.respuestas (id,pregunta_id,respuesta,correcta) values (277,70,'A. That\'s a brown, fashionable leather coat.',0);
insert into move.respuestas (id,pregunta_id,respuesta,correcta) values (278,70,'B. That\'s a brown leather coat fashionable.',0);
insert into move.respuestas (id,pregunta_id,respuesta,correcta) values (279,70,'C. That\'s a fashionable leather brown coat.',0);
insert into move.respuestas (id,pregunta_id,respuesta,correcta) values (280,70,'D. That\'s a fashionable brown leather coat.',1);
insert into move.respuestas (id,pregunta_id,respuesta,correcta) values (281,71,'A. as',0);
insert into move.respuestas (id,pregunta_id,respuesta,correcta) values (282,71,'B. as if he were',0);
insert into move.respuestas (id,pregunta_id,respuesta,correcta) values (283,71,'C. like',0);

COMMIT;