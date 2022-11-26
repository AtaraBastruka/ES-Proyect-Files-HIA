;DEFINIR PLANTILLA

(deftemplate Carreras
 ;======================Carreras====================================
	(slot destrezas (type STRING)(default "ninguno"))
	(slot preferencia (type STRING)(default "ninguno"))
	(slot opcar (type STRING)(default "ninguno"))
	(slot opcar2 (type STRING)(default "ninguno"))
	(slot opcar3 (type STRING)(default "ninguno"))
)

(defrule inicial
	=>
	(printout t crlf crlf "======================Sistema experto para Recomendacion de Carreras======================" crlf crlf crlf) 
	(printout t crlf crlf "¿Cuales son tus destrezas academicas" crlf)  
	(printout t "(A) Informatica " crlf)
	(printout t "(B) Ciencias exactas " crlf)
	(printout t "(C) Bellas Artes " crlf)
	(printout t "(D) Comercio, Administración o Humanidades " crlf)
	(bind ?carr(readline))
	(assert(destrezas ?carr))
)

(defrule reglas
   (destrezas ?carr)
   =>
   ;======================Carreras Informatica========================================
	(if (eq ?carr "A")
		then
			(printout t crlf "¿Que area de la informatica te parece mas interesante?" crlf)
			(printout t "(A) Desarrollo, programacion e informatica aplicada" crlf)
			(printout t "(B) Redes Informaticas" crlf)
			(bind ?pref(readline))
		
	(if (eq ?pref "A")
		then
			(printout t crlf "¿Cual de estas ramas te parece mas interesante?" crlf)
			(printout t "(A) Mantenimiento/ Mejora de software" crlf)
			(printout t "(B) Creacion de soluciones de problemas" crlf)
			(printout t "(C) Educacion" crlf)
			(bind ?op(readline))
			(assert(opcar ?op))
		
		(if (eq ?op "A")
		then
			(printout t crlf "¿Cual de estas opciones prefieres?" crlf)
			(printout t "(A) Desarrollo de Sistemas" crlf)
			(printout t "(B) Analisis de seguridad de los sistemas" crlf)
			(bind ?op2(readline))
			(assert(opcar2 ?op2))
			
			(if (eq ?op2 "A")
				then
					(assert (Carreras(destrezas ?carr)(preferencia ?pref)(opcar ?op)(opcar2 ?op2)))
			)
			
			(if (eq ?op2 "B")
				then
					(assert (Carreras(destrezas ?carr)(preferencia ?pref)(opcar ?op)(opcar2 ?op2)))
			)
		)
		(if (eq ?op "B")
		then
			(printout t crlf "¿Cual de estas opciones te agrada mas?" crlf)
			(printout t "(A) Aplicación de tecnologías de la información en negocios e industrias" crlf)
			(printout t "(B) Crear y adaptar soluciones informáticas innovadoras y originales a problemas." crlf)
			(bind ?op2(readline))
			(assert(opcar2 ?op2))
			
			(if (eq ?op2 "A")
				then
					(assert (Carreras(destrezas ?carr)(preferencia ?pref)(opcar ?op)(opcar2 ?op2)))
			)
			
			(if (eq ?op2 "B")
				then
					(assert (Carreras(destrezas ?carr)(preferencia ?pref)(opcar ?op)(opcar2 ?op2)))
			)
		)
		(if (eq ?op "C")
		then
			(assert (Carreras(destrezas ?carr)(preferencia ?pref)(opcar ?op)))
		)
    )
	(if (eq ?pref "B")
		then
			(assert (Carreras(destrezas ?carr)(preferencia ?pref)))
	)
    

	)
	
	;===================================  Carreras Ciencias Exactas ========================================================
	(if (eq ?carr "B")
		then
			(printout t crlf "¿Cuál de las ciencias exactas más reconocidas te parece más interesante?" crlf)
			(printout t "(A) Fisica" crlf)
			(printout t "(B) Matemáticas" crlf)
			(printout t "(C) Biología o Química" crlf)
			(bind ?pref(readline))
			
			(if (eq ?pref "A")
				then
					(printout t crlf "¿Qué te agrada más? Electricidad, Estudio del Movimiento o la Estática?" crlf)
					(printout t "(A) Electricidad" crlf)
					(printout t "(B) Cinética" crlf)
					(printout t "(C) Estática" crlf)
					(bind ?op(readline))
					
					(if (eq ?op "A")
						then
							(assert (Carreras(destrezas ?carr)(preferencia ?pref)(opcar ?op)))
					)
					(if (eq ?op "B")
						then
							(assert (Carreras(destrezas ?carr)(preferencia ?pref)(opcar ?op)))
					)
					(if (eq ?op "C")
						then
							(assert (Carreras(destrezas ?carr)(preferencia ?pref)(opcar ?op)))
					)
			)
			(if (eq ?pref "B")
			    then
					(assert (Carreras(destrezas ?carr)(preferencia ?pref)))
			)
			(if (eq ?pref "C")
			    then
					(assert (Carreras(destrezas ?carr)(preferencia ?pref)))
			)
					
	)
	
	
	;===================================  Carreras De bellas artes ========================================================
	
	(if (eq ?carr "C")
		then
			(printout t crlf "¿Cuál de las siguientes artes te llama mas la atención ?" crlf)
			(printout t "(A) Cine" crlf)
			(printout t "(B) Otras Artes" crlf)
			(bind ?pref(readline))	
			
			(if (eq ?pref "A")
				then
					(printout t crlf "¿Que prefieres ?" crlf)
					(printout t "(A) Actuar" crlf)
					(printout t "(B) Dirigir" crlf)
					(bind ?op(readline))
					
					(if (eq ?op "A")
						then
							(assert (Carreras(destrezas ?carr)(preferencia ?pref)(opcar ?op)))	
					)
					(if (eq ?op "B")
						then
							(assert (Carreras(destrezas ?carr)(preferencia ?pref)(opcar ?op)))	
					)
			)
			(if (eq ?pref "B")
				then
					(printout t crlf "¿Tienes habilidades para la pintura/Dibujo?" crlf)
					(printout t "(A) Si" crlf)
					(printout t "(B) No" crlf)
					(bind ?op(readline))
					
					(if (eq ?op "A")
						then
							(printout t crlf "¿Te agrada la idea de educar en esta rama?" crlf)
							(printout t "(A) Si" crlf)
							(printout t "(B) No" crlf)
							(bind ?op2(readline))
							
							(if (eq ?op2 "A")
								then
									(assert (Carreras(destrezas ?carr)(preferencia ?pref)(opcar ?op)(opcar2 ?op2)))	
							)
							(if (eq ?op2 "B")
								then
									(printout t crlf "¿Qué prefieres hacer, pintar o criticar?" crlf)
									(printout t "(A) Pintar / Dibujar" crlf)
									(printout t "(B) Criticar" crlf)
									(bind ?op3(readline))

									(if (eq ?op3 "A")
										then
											(assert (Carreras(destrezas ?carr)(preferencia ?pref)(opcar ?op)(opcar2 ?op2)(opcar3 ?op3)))	
									)
									(if (eq ?op3 "B")
										then
											(assert (Carreras(destrezas ?carr)(preferencia ?pref)(opcar ?op)(opcar2 ?op2)(opcar3 ?op3)))	
									)
							)
					)
					(if (eq ?op "B")
						then
							(printout t crlf "¿Cuál de estas Opciones te Agrada más?" crlf)
							(printout t "(A) Musica" crlf)
							(printout t "(B) Danza" crlf)
							(printout t "(C) Diseño y Produccion" crlf)
							(bind ?op2(readline))
							
							(if (eq ?op2 "A")
								then
									(assert (Carreras(destrezas ?carr)(preferencia ?pref)(opcar ?op)(opcar2 ?op2)))	
							)
							(if (eq ?op2 "B")
								then
									(assert (Carreras(destrezas ?carr)(preferencia ?pref)(opcar ?op)(opcar2 ?op2)))	
							)
							(if (eq ?op2 "C")
								then
									(printout t crlf "¿Qué te agrada más?" crlf)
									(printout t "(A) Diseño Grafico" crlf)
									(printout t "(B) Diseño de Interiores" crlf)
									(printout t "(C) Produccion AudioVisual" crlf)
									(printout t "(D) Moda" crlf)
									(bind ?op3(readline))
									
									(if (eq ?op3 "A")
										then
											(assert (Carreras(destrezas ?carr)(preferencia ?pref)(opcar ?op)(opcar2 ?op2)(opcar3 ?op3)))	
									)
									(if (eq ?op3 "B")
										then
											(assert (Carreras(destrezas ?carr)(preferencia ?pref)(opcar ?op)(opcar2 ?op2)(opcar3 ?op3)))	
									)
									(if (eq ?op3 "C")
										then
											(assert (Carreras(destrezas ?carr)(preferencia ?pref)(opcar ?op)(opcar2 ?op2)(opcar3 ?op3)))	
									)
									(if (eq ?op3 "D")
										then
											(assert (Carreras(destrezas ?carr)(preferencia ?pref)(opcar ?op)(opcar2 ?op2)(opcar3 ?op3)))	
									)
							)
					)
			)
	)
	
	;===================================  Carreras Comercio, Administración o Humanidades ========================================================
	(if (eq ?carr "D")
		then
			(printout t crlf "¿Cuál de estas opciones te agrada más?" crlf)
			(printout t "(A) Análisis y evaluación de sistemas integrados por recursos humanos, financieros, entre otros." crlf)
			(printout t "(B) Gestión Ejecutiva y administrativa de empresas." crlf)
			(bind ?pref(readline))
	
			(if (eq ?pref "A")
				then
					(printout t crlf "¿Te agrada la idea de especializarte en alguna de estas ramas?" crlf)
					(printout t "(A) Mercadeo y Negocios" crlf)
					(printout t "(B) Administración de Producción Industrial" crlf)
					(printout t "(C) Logística" crlf)
					(printout t "(D) No me Interesa Especializarme de Manera específica" crlf)
					(bind ?op(readline))
					
					(if (eq ?op "A")
						then
							(assert (Carreras(destrezas ?carr)(preferencia ?pref)(opcar ?op)))
					)
					(if (eq ?op "B")
						then
							(assert (Carreras(destrezas ?carr)(preferencia ?pref)(opcar ?op)))
					)
					(if (eq ?op "C")
						then
							(assert (Carreras(destrezas ?carr)(preferencia ?pref)(opcar ?op)))
					)
					(if (eq ?op "D")
						then
							(assert (Carreras(destrezas ?carr)(preferencia ?pref)(opcar ?op)))
					)
			)
			(if (eq ?pref "B")
				then
					(assert (Carreras(destrezas ?carr)(preferencia ?pref)))
			)
	)
)

;Definiendo reglas

;===================================  Carreras Informaticas ========================================================

;Redes Informaticas

(defrule RedesInformatica
	(Carreras(destrezas "A")(preferencia "B"))
	=>
	(printout t crlf "Usted debe estudiar licenciatura en redes" crlf)
)

;Informatica aplicada a la educacion

(defrule InformaticaEduca
	(Carreras(destrezas "A")(preferencia "A")(opcar "C"))
	=>
	(printout t crlf "Quizás la licenciatura en Informática aplicada a la educación sea la opción que buscas." crlf)
)

;Desarrollo de Software
(defrule DesarrolloSoftware
	(Carreras(destrezas "A")(preferencia "A")(opcar "A")(opcar2 "A"))
	=>
	(printout t crlf "La licenciatura en Desarrollo de Software es probablemente la opción para ti." crlf)
)


;Ciberseguridad
(defrule Ciberseguridad
	(Carreras(destrezas "A")(preferencia "A")(opcar "A")(opcar2 "B"))
	=>
	(printout t crlf "La licenciatura en Ciberseguridad es probablemente la opción para ti." crlf)
)

;Ingeniería de sistemas de información
(defrule IngenieriaSistemasInformación
	(Carreras(destrezas "A")(preferencia "A")(opcar "B")(opcar2 "A"))
	=>
	(printout t crlf "En ese caso la carrera de ingeniería de sistemas de información es para ti." crlf)
)

;Ingeniería en sistemas y computación
(defrule IngenieriaSistemasComputacion
	(Carreras(destrezas "A")(preferencia "A")(opcar "B")(opcar2 "B"))
	=>
	(printout t crlf "Quizás la ingeniería en sistemas y computación sea la carrera que buscas." crlf)
)




;===================================  Carreras Ciencias Exactas ========================================================
;Ingeniería Electrica
(defrule IngenieriaElectrica
	(Carreras(destrezas "B")(preferencia "A")(opcar "A"))
	=>
	(printout t crlf "Cualquiera de las carreras de la facultad de Eléctrica puede ser excelente para ti" crlf)
)


;Ingeniería Mecánica
(defrule IngenieriaMecanica
	(Carreras(destrezas "B")(preferencia "A")(opcar "B"))
	=>
	(printout t crlf "Quizás alguna de las carreras de la facultad de Mecánica sean de tu agrado" crlf)
)

;Ingenieria Civil
(defrule IngenieriaCivil
	(Carreras(destrezas "B")(preferencia "A")(opcar "C"))
	=>
	(printout t crlf "Algunas de las carreras de la facultad de Ingeniería Civil podrían ser de tu agrado" crlf)
)

;Carrera Ingenieril
(defrule CarreraIngenieril
	(Carreras(destrezas "B")(preferencia "B"))
	=>
	(printout t crlf "Las carreras Ingenieriles de la universidad Tecnológica poseen de por si un gran énfasis en el conocimiento matemático avanzado, cualquiera de estas puede ser buena para ti." crlf)
)

;Ingenieria Ambiental
(defrule IngenieriaAmbiental
	(Carreras(destrezas "B")(preferencia "C"))
	=>
	(printout t crlf "En caso de estas dos Ciencias Exactas, se tienen carreras como la Ingeniería Ambiental, Ingeniería en Saneamiento y Ambiente, Ingeniería de Energía y Ambiente." crlf)
)





;===================================  Carreras De bellas artes ========================================================
	
;Teatro
(defrule Teatro
	(Carreras(destrezas "C")(preferencia "A")(opcar "A"))
	=>
	(printout t crlf "Puedes estudiar Teatro o Artes Teatrales." crlf)
)

;Audio Visual
(defrule ProduccionAudioVisual
	(Carreras(destrezas "C")(preferencia "A")(opcar "B"))
	=>
	(printout t crlf "Puedes estudiar Produccion AudioVisual" crlf)
)

;Arte Aplicadasa
(defrule ArtesAplicadas
	(Carreras(destrezas "C")(preferencia "B")(opcar "A")(opcar2 "A"))
	=>
	(printout t crlf "Puedes estudiar Licenciatura en Artes Aplicadas" crlf)
)

;PintarArtesVisuales
(defrule ArtesVisuales
	(Carreras(destrezas "C")(preferencia "B")(opcar "A")(opcar2 "B")(opcar3 "A"))
	=>
	(printout t crlf "Podrías estudiar Artes Visuales" crlf)
)

;CriticarArtesVisuales
(defrule CriticaArtesVisuales
	(Carreras(destrezas "C")(preferencia "B")(opcar "A")(opcar2 "B")(opcar3 "B"))
	=>
	(printout t crlf "Podrías estudiar licenciatura en artes Visuales para luego especializarte en Historia Crítica y Teoría del arte" crlf)
)

;Musica
(defrule MusicaUP
	(Carreras(destrezas "C")(preferencia "B")(opcar "B")(opcar2 "A"))
	=>
	(printout t crlf "Cualquiera de las licenciaturas de música y/o canto de la UP." crlf)
)

;Danza
(defrule DanzaUP
	(Carreras(destrezas "C")(preferencia "B")(opcar "B")(opcar2 "B"))
	=>
	(printout t crlf "Podrías estudiar la carrera de Licenciatura en Danza de la UP" crlf)
)

;Diseño Grafico
(defrule DiseñoGrafico
	(Carreras(destrezas "C")(preferencia "B")(opcar "B")(opcar2 "C")(opcar3 "A"))
	=>
	(printout t crlf "Podrías estudiar la carrera de Licenciatura en Diseño Gráfico de la UP" crlf)
)

;Diseño de Interiores
(defrule DiseñoInteriores
	(Carreras(destrezas "C")(preferencia "B")(opcar "B")(opcar2 "C")(opcar3 "B"))
	=>
	(printout t crlf "Podrías estudiar la carrera de Licenciatura en Diseño de Interiores de la UP" crlf)
)

;Produccion Audiovisual
(defrule ProduccionAudioVisualUP
	(Carreras(destrezas "C")(preferencia "B")(opcar "B")(opcar2 "C")(opcar3 "C"))
	=>
	(printout t crlf "Podrías estudiar la carrera de Licenciatura en Producción Audiovisual de la UP" crlf)
)

;Moda
(defrule ModaUP
	(Carreras(destrezas "C")(preferencia "B")(opcar "B")(opcar2 "C")(opcar3 "D"))
	=>
	(printout t crlf "Podrías estudiar la carrera de Licenciatura en Diseño de Modas de la UP" crlf)
)





;===================================  Carreras Comercio, Administración o Humanidades ========================================================
;Mercadeo y Negocios
(defrule MercadeoNegocio
	(Carreras(destrezas "D")(preferencia "A")(opcar "A"))
	=>
	(printout t crlf "Si es el caso, entonces podrías Tomar la Licenciatura en Mercadeo y negocios Internacionales de la facultad de Ingeniería Industrial." crlf)
)

;Gestion de produccion industrial
(defrule GestionProduccionIndustrial
	(Carreras(destrezas "D")(preferencia "A")(opcar "B"))
	=>
	(printout t crlf "Si es el caso, entonces podrías Tomar la Licenciatura en Gestion de produccion industrial." crlf)
)

;Logística 
(defrule Logistica
	(Carreras(destrezas "D")(preferencia "A")(opcar "C"))
	=>
	(printout t crlf "Dada esta respuesta le recomendamos estudiar Licenciatura en logistica y transporte multimodal." crlf)
)

;Ingenieria Industrial
(defrule IngenieriaIndustrial
	(Carreras(destrezas "D")(preferencia "A")(opcar "D"))
	=>
	(printout t crlf "Elegida esta opcion le recomendamos estudiar Ingenieria Industrial." crlf)
)

;Gestion Administrativa
(defrule GestionAdministrativa
	(Carreras(destrezas "D")(preferencia "B"))
	=>
	(printout t crlf "Elegida esta opcion le recomendamos 2 opciones , La Licenciatura en comunicacion ejecutiva Bilingüe o licenciatura en gestion administrativa." crlf)
)