DROP TABLE IF EXISTS `respuesta` ;

DROP TABLE IF EXISTS `formulario` ;

--
-- Estructura de tabla para la tabla `formulario`
--

CREATE TABLE IF NOT EXISTS `formulario` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `json` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `respuesta`
--

CREATE TABLE IF NOT EXISTS `respuesta` (
  `id` int(11) NOT NULL,
  `formularioId` int(11) NOT NULL,
  `respuestas` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `formularioRespuestas` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `fechaHora` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indices de la tabla `formulario`
--
ALTER TABLE `formulario`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `respuesta`
--
ALTER TABLE `respuesta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `formulario_fk` (`formularioId`);

--
-- AUTO_INCREMENT de la tabla `formulario`
--
ALTER TABLE `formulario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `respuesta`
--
ALTER TABLE `respuesta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;


ALTER TABLE `respuesta`
  ADD CONSTRAINT `formulario_fk` FOREIGN KEY (`formularioId`) REFERENCES `formulario` (`id`);
COMMIT;

--
-- Volcado de datos para la tabla `formulario`
--

INSERT INTO `formulario` (`id`, `nombre`, `json`) VALUES
(1, 'Registro de Curadurias', '{\r\n	\"groups\": [{\r\n			\"legend\": \"Rúbrica de valoración - Estado de cursos - \",\r\n			\"fields\": [{\r\n				\"type\": \"input\",\r\n				\"inputType\": \"text\",\r\n				\"label\": \"Nombre del curso\",\r\n				\"placeholder\": \"Nombre del curso\",\r\n				\"required\": true,\r\n				\"model\": \"course_name\",\r\n				\"inputName\": \"course_name\"\r\n			}, {\r\n				\"type\": \"input\",\r\n				\"inputType\": \"text\",\r\n				\"label\": \"Unidad Académica a la que pertenece\",\r\n				\"placeholder\": \"Unidad Académica a la que pertenece\",\r\n				\"required\": true,\r\n				\"model\": \"academic_unit\",\r\n				\"inputName\": \"academic_unit\"\r\n			}, {\r\n				\"type\": \"input\",\r\n				\"inputType\": \"text\",\r\n				\"label\": \"Código (En MARES)\",\r\n				\"placeholder\": \"Código (En MARES)\",\r\n				\"required\": true,\r\n				\"model\": \"mares_code\",\r\n				\"inputName\": \"mares_code\"\r\n			}, {\r\n				\"type\": \"input\",\r\n				\"inputType\": \"text\",\r\n				\"label\": \"URL\",\r\n				\"placeholder\": \"URL\",\r\n				\"required\": true,\r\n				\"model\": \"url\",\r\n				\"inputName\": \"url\"\r\n			}, {\r\n				\"type\": \"input\",\r\n				\"inputType\": \"text\",\r\n				\"label\": \"Docente a cargo\",\r\n				\"placeholder\": \"Docente a cargo\",\r\n				\"required\": true,\r\n				\"model\": \"teacher\",\r\n				\"inputName\": \"teacher\"\r\n			}, {\r\n				\"type\": \"input\",\r\n				\"inputType\": \"text\",\r\n				\"label\": \"Id del curso\",\r\n				\"placeholder\": \"Id del curso\",\r\n				\"model\": \"course_id\",\r\n				\"inputName\": \"course_id\"\r\n			}, {\r\n				\"type\": \"select\",\r\n				\"label\": \"Plataforma\",\r\n				\"model\": \"platform\",\r\n				\"values\": [\r\n					\"Udearroba Internos\",\r\n					\"Udearroba Internos\",\r\n					\"Aprendeenlinea principal\",\r\n					\"Aprendeenlinea investigación\"\r\n				]\r\n			}]\r\n		}, {\r\n			\"legend\": \"Generalidades\",\r\n			\"fields\": [{\r\n				\"type\": \"textArea\",\r\n				\"label\": \"Disposición de elementos de la plataforma: A continuación, haga una breve descripción general de cómo están distribuidos los recursos y herramientas en el aula virtual. Se trata de dar una percepción respecto a qué tan intuitivo resulta para los estudiantes su navegación, y cómo incide ello en su proceso de formación académica.\",\r\n				\"model\": \"disposition_elements\",\r\n				\"placeholder\": \"Disposicion de Elementos\"\r\n			}, {\r\n				\"type\": \"matrix\",\r\n				\"label\": \"Criterios para generalidades\",\r\n				\"model\": \"general_criteria\",\r\n				\"required\": true,\r\n				\"questions\": [{\r\n						\"name\": \"Cuenta con el mismo título en MARES y la plataforma\",\r\n						\"id\": \"has_same_amres_title\",\r\n						\"required\": true\r\n					},\r\n					{\r\n						\"name\": \"Posee un Texto o video de bienvenida que  ubique al estudiante, explicando de forma concisa en qué consistirá el curso.\",\r\n						\"id\": \"has_welcome_text\",\r\n						\"required\": true\r\n					},\r\n					{\r\n						\"name\": \"Presenta una Ficha del Tutor que es la Hoja de vida resumida del profesor.\",\r\n						\"id\": \"report_file\",\r\n						\"required\": true\r\n\r\n					},\r\n					{\r\n						\"name\": \"Cuenta con una metodología donde haga una descripción y explicación del qué, cómo y para qué del curso, enunciando el objetivo, temáticas, unidades o módulos, medios de comunicación, estrategias didácticas y evaluativas de todo el curso.\",\r\n						\"id\": \"has_methodology\",\r\n						\"required\": true\r\n\r\n					}, {\r\n						\"name\": \"Presenta la evaluación dónde se muestran los porcentajes evaluativos, además, de incluir rúbricas para la evaluación de las actividades.\",\r\n						\"id\": \"report_test\",\r\n						\"required\": true\r\n\r\n					}, {\r\n						\"name\": \"Contiene un Mapa conceptual u organigrama del curso dónde de relación lógica entre los diferentes conceptos del curso.\",\r\n						\"id\": \"has_conceptual_map\",\r\n						\"required\": true\r\n\r\n					}, {\r\n						\"name\": \"Dispone el Programa del curso de forma descargable\",\r\n						\"id\": \"downloadable_course\",\r\n						\"required\": true\r\n\r\n					}, {\r\n						\"name\": \"Cuenta con foros de Novedades, Dudas e inquietudes y presentación.\",\r\n						\"id\": \"has_news_forum\",\r\n						\"required\": true\r\n\r\n					}\r\n				],\r\n				\"values\": [{\r\n						\"name\": \"Cumple\",\r\n						\"value\": \"1\"\r\n					},\r\n					{\r\n						\"name\": \"Cumple parcialmente\",\r\n						\"value\": \"2\"\r\n					},\r\n					{\r\n						\"name\": \"No cumple\",\r\n						\"value\": \"3\"\r\n					},\r\n					{\r\n						\"name\": \"No Aplica\",\r\n						\"value\": \"4\"\r\n					}\r\n				]\r\n			}, {\r\n				\"type\": \"textArea\",\r\n				\"label\": \"Observación para generalidades\",\r\n				\"model\": \"general_observation\",\r\n				\"help\": \"Solo en caso de seleccionar Cumple parcialmente o No cumple\",\r\n				\"placeholder\": \"Observación para generalidades\"\r\n			}]\r\n		},\r\n		{\r\n			\"legend\": \"Sección: Unidades o Módulos\",\r\n			\"id\": \"0\",\r\n			\"fields\": [{\r\n				\"type\": \"input\",\r\n				\"inputType\": \"text\",\r\n				\"label\": \"Nombre del módulo / unidad / sección\",\r\n				\"placeholder\": \"Nombre del módulo / unidad / sección\",\r\n				\"model\": \"unity_name\"\r\n			}, {\r\n				\"type\": \"textArea\",\r\n				\"label\": \"Disposición de elementos en la plataforma: A continuación, haga una breve descripción general de cómo están distribuidos los recursos y herramientas en el aula virtual. Se trata de dar una percepción respecto a qué tan intuitivo resulta para los estudiantes su navegación, y cómo incide ello en su proceso de formación académica.\",\r\n				\"model\": \"disposition_elements_unity\",\r\n				\"placeholder\": \"Disposicion de Elementos\"\r\n			}, {\r\n				\"type\": \"matrix\",\r\n				\"label\": \"Criterios para la Sección\",\r\n				\"model\": \"section_criteria\",\r\n				\"required\": true,\r\n				\"questions\": [{\r\n						\"name\": \"Cada Unidad o Módulo cuenta con una  introducción de máximo 2 párrafos  donde se expliquen los ejes temáticos que se abordarán.\",\r\n						\"id\": \"has_a_instroduction\",\r\n						\"required\": true\r\n					},\r\n					{\r\n						\"name\": \"Dispone en cada módulo o unidad los objetivos que se pretenden cumplir.\",\r\n						\"id\": \"has_a_objectives\",\r\n						\"required\": true\r\n					},\r\n					{\r\n						\"name\": \"Cada unidad módulo cuenta con Material Fundamental (material realizado  por el docente)\",\r\n						\"id\": \"has_a_basic_material\",\r\n						\"required\": true\r\n\r\n					},\r\n					{\r\n						\"name\": \"Se dispone el material de apoyo con correcta citación (normas APA) y reconocimiento de créditos.\",\r\n						\"id\": \"has_a_support_material\",\r\n						\"required\": true\r\n\r\n					}, {\r\n						\"name\": \"Presenta una Guía de estudio donde se explica en cada unidad o módulo lo que el estudiante debe realizar, se aconseja que tenga un paso  a paso.\",\r\n						\"id\": \"has_a_study_guide\",\r\n						\"required\": true\r\n\r\n					}, {\r\n						\"name\": \"Dispone un cuestionario de Autoevaluación ya sea  en cada unidad o módulo o al inicio y al finalizar el curso.\",\r\n						\"id\": \"has_a_module_test\",\r\n						\"required\": true\r\n\r\n					}, {\r\n						\"name\": \"La autoevaluación cuenta con Una introducción donde se le cuente al estudiante cuál es el fin de este ejercicio y una serie de preguntas que  correspondan a lo trabajado en la unidad o módulo y den cuenta de lo aprendido.\",\r\n						\"id\": \"has_a_instroduction_test\",\r\n						\"required\": true\r\n\r\n					}, {\r\n						\"name\": \"Las Actividades cuentan con: título, modalidad (individual grupal), producto esperado, recursos y materiales que el estudiante debe abordar para el desarrollo de la actividad.\",\r\n						\"id\": \"has_a_activity_title\",\r\n						\"required\": true\r\n\r\n					}, {\r\n						\"name\": \"Las indicaciones de las actividades son claras y concisas, con criterios establecidos para la evaluación de los productos.\",\r\n						\"id\": \"has_a_activity_indications\",\r\n						\"required\": true\r\n\r\n					}, {\r\n						\"name\": \"Son claras la fechas de entrega de las actividades y el espacio por el cual se recibirán.\",\r\n						\"id\": \"has_a_activity_date\",\r\n						\"required\": true\r\n\r\n					}\r\n				],\r\n				\"values\": [{\r\n						\"name\": \"Cumple\",\r\n						\"value\": \"1\"\r\n					},\r\n					{\r\n						\"name\": \"Cumple parcialmente\",\r\n						\"value\": \"2\"\r\n					},\r\n					{\r\n						\"name\": \"No cumple\",\r\n						\"value\": \"3\"\r\n					},\r\n					{\r\n						\"name\": \"No Aplica\",\r\n						\"value\": \"4\"\r\n					}\r\n				]\r\n			}, {\r\n				\"type\": \"textArea\",\r\n				\"label\": \"Observación para seccion\",\r\n				\"help\": \"Solo en caso de seleccionar Cumple parcialmente o No cumple\",\r\n				\"model\": \"section_observation\",\r\n				\"placeholder\": \"Disposicion de Elementos\"\r\n			}]\r\n		}\r\n	]\r\n}');

