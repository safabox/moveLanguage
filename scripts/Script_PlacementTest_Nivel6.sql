USE move;

/* Preguntas Nivel Avanzado */
insert into move.preguntas (id,nivel_id,pregunta,cantidad_ok,cantidad_no_ok) values (72,6,'72. ..... but I realised what he had done. ',0,0); 
insert into move.preguntas (id,nivel_id,pregunta,cantidad_ok,cantidad_no_ok) values (73,6,'73. If you\'d come to the theatre last night, you ..... the  play. ',0,0); 
insert into move.preguntas (id,nivel_id,pregunta,cantidad_ok,cantidad_no_ok) values (74,6,'74. Which of the following options is correct to illustrate the idea of disappointment? He .... have thanked you. ',0,0); 
insert into move.preguntas (id,nivel_id,pregunta,cantidad_ok,cantidad_no_ok) values (75,6,'75. Which of the following options is correct to express a deduction from the past? They laughed a lot last night. The film ..... very funny. ',0,0); 
insert into move.preguntas (id,nivel_id,pregunta,cantidad_ok,cantidad_no_ok) values (76,6,'76. ..... thinking that he would win the lottery. ',0,0); 
insert into move.preguntas (id,nivel_id,pregunta,cantidad_ok,cantidad_no_ok) values (77,6,'77. If only I had had the courage to do this ..... ',0,0); 
insert into move.preguntas (id,nivel_id,pregunta,cantidad_ok,cantidad_no_ok) values (78,6,'78. Let\'s go to the theatre, ..... ',0,0); 
insert into move.preguntas (id,nivel_id,pregunta,cantidad_ok,cantidad_no_ok) values (79,6,'79. Which of the following options is correct to illustrate that an action will happen before a specific time in the future?',0,0); 
insert into move.preguntas (id,nivel_id,pregunta,cantidad_ok,cantidad_no_ok) values (80,6,'80. "We\'ll never be able to do it" said the man to nobody .....',0,0);  


/* Respuestas Nivel Avanzado */
insert into move.respuestas (id,pregunta_id,respuesta,correcta) values (284,72,'A. Little did he know',1);
insert into move.respuestas (id,pregunta_id,respuesta,correcta) values (285,72,'B. Little known',1);
insert into move.respuestas (id,pregunta_id,respuesta,correcta) values (286,72,'C. Little he knew',0);
insert into move.respuestas (id,pregunta_id,respuesta,correcta) values (287,73,'A. would enjoy',0);
insert into move.respuestas (id,pregunta_id,respuesta,correcta) values (288,73,'B. had enjoyed',0);
insert into move.respuestas (id,pregunta_id,respuesta,correcta) values (289,73,'C. would have enjoyed',1);
insert into move.respuestas (id,pregunta_id,respuesta,correcta) values (290,73,'D. will enjoy',0);
insert into move.respuestas (id,pregunta_id,respuesta,correcta) values (291,74,'A. must',0);
insert into move.respuestas (id,pregunta_id,respuesta,correcta) values (292,74,'B. may',0);
insert into move.respuestas (id,pregunta_id,respuesta,correcta) values (293,74,'C. would',0);
insert into move.respuestas (id,pregunta_id,respuesta,correcta) values (294,74,'D. should',1);
insert into move.respuestas (id,pregunta_id,respuesta,correcta) values (295,75,'A. should have been',0);
insert into move.respuestas (id,pregunta_id,respuesta,correcta) values (296,75,'B. must have been',1);
insert into move.respuestas (id,pregunta_id,respuesta,correcta) values (297,75,'C. might have been',0);
insert into move.respuestas (id,pregunta_id,respuesta,correcta) values (298,75,'D. may have been',0);
insert into move.respuestas (id,pregunta_id,respuesta,correcta) values (299,76,'A. There was no use in',1);
insert into move.respuestas (id,pregunta_id,respuesta,correcta) values (300,76,'B. It was no point in',0);
insert into move.respuestas (id,pregunta_id,respuesta,correcta) values (301,76,'C. It was no use in',0);
insert into move.respuestas (id,pregunta_id,respuesta,correcta) values (302,77,'A. years back.',1);
insert into move.respuestas (id,pregunta_id,respuesta,correcta) values (303,77,'B. for years.',0);
insert into move.respuestas (id,pregunta_id,respuesta,correcta) values (304,77,'C. since years.',0);
insert into move.respuestas (id,pregunta_id,respuesta,correcta) values (305,77,'D. in years.',0);
insert into move.respuestas (id,pregunta_id,respuesta,correcta) values (306,78,'A. don\'t we?',0);
insert into move.respuestas (id,pregunta_id,respuesta,correcta) values (307,78,'B. let us?',0);
insert into move.respuestas (id,pregunta_id,respuesta,correcta) values (308,78,'C. shall we?',1);
insert into move.respuestas (id,pregunta_id,respuesta,correcta) values (309,78,'D. will we?',0);
insert into move.respuestas (id,pregunta_id,respuesta,correcta) values (310,79,'A. will have',0);
insert into move.respuestas (id,pregunta_id,respuesta,correcta) values (311,79,'B. will have had',1);
insert into move.respuestas (id,pregunta_id,respuesta,correcta) values (312,79,'C. are having',0);
insert into move.respuestas (id,pregunta_id,respuesta,correcta) values (313,79,'D. will had had',0);
insert into move.respuestas (id,pregunta_id,respuesta,correcta) values (314,80,'A. especially.',0);
insert into move.respuestas (id,pregunta_id,respuesta,correcta) values (315,80,'B. specially.',0);
insert into move.respuestas (id,pregunta_id,respuesta,correcta) values (316,80,'C. in particular.',1);

COMMIT;
