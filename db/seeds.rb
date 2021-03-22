# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#

users = User.create([{
    username: "testuser",
    password: "test",
    bio: "This is the first user made to test things out",
    avatar: "https://i.pinimg.com/originals/c3/6e/de/c36ede9dc63099eb0520d1197b181fa0.png"
  },
  {
    username: "testuser2",
    password: "test",
    bio: "This is the second user made to test things out",
    avatar: "https://data.whicdn.com/images/194549722/original.gif"
  }
])

years = Year.create([
  {
    name: "primero"
  },
  {
    name: "segundo"
  },
  {
    name: "tercero"
  },
  {
    name: "cuarto"
  },
  {
    name: "quinto"
  },
])

subjects = Subject.create([
  {
    name: "Expresión de Problemas y Algoritmos",
    image_url: 'idea.png',
    description: 'Brindar una metodología básica para la resolución de problemas utilizando una computadora. Se
    comienza analizando el problema a resolver, se propone una especificación clara de la manera de
    solucionarlo y finalmente se expresa esa solución en un lenguaje de programación.',
    year: years.first
  },
  {
    name: "Conceptos de Organización de Computadoras",
    image_url: 'bag.png',
    description: 'Analizar los aspectos básicos de las arquitecturas físicas de las computadoras, sus periféricos y los
    mecanismos de comunicación CPU-Memoria-Periféricos.',
    year: years.first
  },
  {
    name: "Matematica 0",
    image_url: 'calculator.png',
    description: 'Repasar los conceptos matemáticos básicos vistos en el nivel medio.',
    year: years.first
  },
  {
    name: "Conceptos de Algoritmos, Datos y Programas",
    image_url: 'ruler.png',
    description: 'Se trabaja a partir de diferentes
    situaciones problemáticas de la vida real y se abordan las estrategias de solución bajo criterios de calidad, eficiencia y corrección,
    para finalmente llegar a una implementación acorde a las especificaciones planteadas.
    Los conceptos abordados en la asignatura permitirán al alumno familiarizarse con los conceptos básicos de la disciplina.',
    year: years.first
  },
  {
    name: "Organización de Computadoras",
    image_url: 'glasses.png',
    description: 'Brindar los conocimientos que permitan una profunda comprensión de los principios de funcionamiento de
    los modernos equipos de computación. El alumno analizará aspectos propios de las arquitecturas físicas
    de las computadoras, sus periféricos y los mecanismos de comunicación CPU-Memoria-Periféricos.',
    year: years.first
  },
  {
    name: "Matemática 1",
    image_url: 'calculator.png',
    description: 'Introducir al alumno en los conceptos fundamentales de la matemática básica requerida en Informática, tales
    como nociones básicas de conjuntos, conceptos de álgebra y geometría analítica y sistemas de ecuaciones
    lineales.
    Se trata de una asignatura de fundamentos, orientada a reforzar el pensamiento lógico del alumno y su
    capacidad de expresión y resolución de problemas matemáticos.',
    year: years.first
  },
  {
    name: "Taller de Programación",
    image_url: 'book.png',
    description: 'Se trabaja a partir de diferentes situaciones problemáticas de la vida real y se abordan las estrategias de
    solución bajo criterios de calidad, eficiencia y corrección, para finalmente llegar a una implementación
    acorde a las especificaciones planteadas. Todos los aspectos mencionados son abordados a partir del
    trabajo con diferentes paradigmas de programación.',
    year: years.first
  },
  {
    name: "Arquitectura de Computadoras",
    image_url: 'ruler.png',
    description: 'Profundizar los conceptos vistos en Organización de Computadoras, de modo de lograr que el alumno
    comprenda los mecanismos internos de operación de una computadora. En particular analizar el manejo
    de memoria y periféricos vía interrupciones. Introducir los conceptos de máquinas no Von Neumann y
    procesadores de alta prestación.',
    year: years.first
  },
  {
    name: "Matematica 2",
    image_url: 'calculator.png',
    description: 'Funciones Elementales
    Límites y Continuidad
    Derivadas y Extremos
    Integración
    Elementos de Optimización en 1 variable
    Sucesiones y Series',
    year: years.first
  },
  {
    name: "Fundamentos de Organización de Datos",
    image_url: 'open-book.png',
    description: 'Introducir al alumno en los conceptos de estructuras de datos residentes en memoria
    externa, tales como archivos, sistemas de archivos y bases de datos relacionales.
    Estudiar las técnicas de organización de archivos más usuales en la manipulación de
    BD.',
    year: years[1]
  },
  {
    name: "Algoritmos y Estructuras de Datos",
    image_url: 'ruler.png',
    description: 'Que los alumnos adquieran un conocimiento exhaustivo de las principales estructuras de datos y aprendan
    a implementarlas en forma eficiente; aprendan a analizar diferentes algoritmos de acceso y manejo a tales
    estructuras de datos, utilizando un formalismo matemático para estimar la eficiencia de los algoritmos.',
    year: years[1]
  },
  {
    name: "(Android) Seminario de Lenguajes",
    image_url: 'telegram.png',
    description: 'Profundizar los conocimientos obtenidos por el alumno en los primeros cursos vinculados con Algoritmos y
    Programación, permitiéndole desarrollar un estudio teórico-práctico de algún lenguaje de programación (el lenguaje
    puede variar con los cambios tecnológicos), poniendo énfasis en el análisis formal de las características del lenguaje
    y su comparación con los que el alumno conociera a ese momento (típicamente Pascal).',
    year: years[1]
  },
  {
    name: "(C) Seminario de Lenguajes",
    image_url: 'telegram.png',
    description: 'Profundizar los conocimientos obtenidos por el alumno en los primeros cursos vinculados con Algoritmos y
    Programación, permitiéndole desarrollar un estudio teórico-práctico de algún lenguaje de programación (el lenguaje
    puede variar con los cambios tecnológicos), poniendo énfasis en el análisis formal de las características del lenguaje
    y su comparación con los que el alumno conociera a ese momento (típicamente Pascal).',
    year: years[1]
  },
  {
    name: "(PHP) Seminario de Lenguajes",
    image_url: 'telegram.png',
    description: 'Profundizar los conocimientos obtenidos por el alumno en los primeros cursos vinculados con Algoritmos y
    Programación, permitiéndole desarrollar un estudio teórico-práctico de algún lenguaje de programación (el lenguaje
    puede variar con los cambios tecnológicos), poniendo énfasis en el análisis formal de las características del lenguaje
    y su comparación con los que el alumno conociera a ese momento (típicamente Pascal).',
    year: years[1]
  },
  {
    name: "(.NET) Seminario de Lenguajes",
    image_url: 'telegram.png',
    description: 'Profundizar los conocimientos obtenidos por el alumno en los primeros cursos vinculados con Algoritmos y
    Programación, permitiéndole desarrollar un estudio teórico-práctico de algún lenguaje de programación (el lenguaje
    puede variar con los cambios tecnológicos), poniendo énfasis en el análisis formal de las características del lenguaje
    y su comparación con los que el alumno conociera a ese momento (típicamente Pascal).',
    year: years[1]
  },
  {
    name: "(Python) Seminario de Lenguajes",
    image_url: 'telegram.png',
    description: 'Profundizar los conocimientos obtenidos por el alumno en los primeros cursos vinculados con Algoritmos y
    Programación, permitiéndole desarrollar un estudio teórico-práctico de algún lenguaje de programación (el lenguaje
    puede variar con los cambios tecnológicos), poniendo énfasis en el análisis formal de las características del lenguaje
    y su comparación con los que el alumno conociera a ese momento (típicamente Pascal).',
    year: years[1]
  },
  {
    name: "Diseño de Bases de Datos",
    image_url: 'book.png',
    description: 'Estudiar el proceso de diseño de BD.
    Estudiar las técnicas de administración de aplicaciones sobre bases de datos.
    Comprender el lenguaje de consultas estructurado (SQL)
    Comprender las reglas básicas de seguridad e integridad de datos.
    El alumno desarrollará trabajos experimentales de manejo de bases de datos, dentro
    de sistemas de software.',
    year: years[1]
  },
  {
    name: "Ingeniería de Software 1",
    image_url: 'atom.png',
    description: 'Introducir al alumno en los conceptos fundamentales de la Ingeniería de Software. En particular
    profundizar las primeras etapas del ciclo de vida (requerimientos, análisis y diseño de sistemas). Presentar
    los conceptos de calidad de software y de privacidad, integridad y seguridad de datos.
    El alumno desarrollará trabajos experimentales de análisis y diseño de sistemas.',
    year: years[1]
  },
  {
    name: "Orientación a Objetos 1",
    image_url: 'apple.png',
    description: 'Presentar formalmente el paradigma de objetos, sus características, ventajas y aplicaciones dentro del
    desarrollo de sistemas de software. Desarrollar prácticas concretas con lenguajes orientados a Objetos.
    Establecer metodologías de análisis y diseño orientados a objetos.',
    year: years[1]
  },
  {
    name: "Introducción a los Sistemas Operativos",
    image_url: 'keyboard.png',
    description: 'Dar los conceptos fundamentales de los Sistemas Operativos, a partir del enfoque clásico del SO
    como administrador eficiente de recursos y la facilitación al usuario de su uso. Desarrollar con el
    alumno casos experimentales en Sistemas Operativos de mayor penetración en el mercado.',
    year: years[1]
  },
  {
    name: "Taller de lecto-comprensión y Traducción en Inglés",
    image_url: 'world.png',
    description: 'Que el alumno lea e interprete la información de textos académicos, artículos de publicación periódica y
    publicaciones en línea sobre temas específicos para las carreras de Informática redactados en idioma inglés.',
    year: years[1]
  },
  {
    name: "Matematica 3",
    image_url: 'calculator.png',
    description: 'Se pretende abarcar los conceptos básicos de probabilidad, variables aleatorias continuas y discretas,
    valores esperados, distribuciones de probabilidad conjunta e independencia y teorema central del límite de
    una manera razonablemente completa, pero al mismo tiempo se evitan muchos detalles matemáticos o de
    índole más teórica buscando conservar el equilibrio entre la teoría y las aplicaciones.
    De la misma forma se presentan las herramientas básicas de la inferencia estadística: la estimación puntual,
    la estimación por intervalos y las pruebas de hipótesis, temas claramente orientados hacia las aplicaciones.
    Con esto se busca interesar al estudiante en la forma en que estos métodos pueden emplearse para resolver
    problemas reales, además de hacer que logre cierta comprensión sobre los conceptos que encierran. Por
    otra parte, el desarrollo de los conceptos se hace de una manera lógica y heurística, más que matemática.',
    year: years[2]
  },
  {
    name: "Ingeniería de Software 2",
    image_url: 'ruler.png',
    description: 'Continuar con los temas desarrollados en Ingeniería de Software I, a partir del
    diseño de sistemas de software. Introducir los conceptos de re-ingeniería e
    ingeniería inversa. Estudiar los temas de gestión, planificación y evaluación de
    proyectos de software, incluyendo el análisis de riesgo. El alumno deberá desarrollar
    sistemas concretos utilizando las metodologías/herramientas estudiadas.',
    year: years[2]
  },
  {
    name: "Conceptos y Paradigmas de Lenguajes de Programación",
    image_url: 'glasses.png',
    description: 'Introducir, analizar, comparar y evaluar los conceptos subyacentes de los Lenguajes de Programación en
    los distintos Paradigmas.
    Adquirir la capacidad de evaluar lenguajes de programación desde distintos puntos de vista, ya sea como
    su diseñador, implementador o como usuario del lenguaje.',
    year: years[2]
  },
  {
    name: "Orientación a Objetos 2",
    image_url: 'apple.png',
    description: 'Patrones de diseño, refactoring hacia patrones y frameworks
    orientados a objetos. Se profundizará también en el uso de un lenguaje de modelado gráfico orientado a
    objetos (UML), que le permitirá construir diagramas especificando distintos aspectos de un sistema',
    year: years[2]
  },
  {
    name: "Redes y Comunicaciones",
    image_url: 'world.png',
    description: 'Introducir al alumno en los conceptos de transmisión de datos, protocolos de comunicación y aplicaciones
    sobre redes de computadoras. Adicionalmente, se introduce como funciona la Internet sobre la base de
    sus protocolos y aplicaciones.',
    year: years[2]
  },
  {
    name: "Proyecto de Software",
    image_url: 'idea.png',
    description: 'El objetivo general de esta asignatura es realizar un desarrollo web que signifique para los estudiantes una
    aplicación concreta de los conocimientos adquiridos, consolidando la formación experimental.
    Se promoverán las “Instancias Supervisadas de Formación en la Práctica Profesional (ISFPP)” haciendo
    hincapié en trabajos de relevancia y pertinencia social.',
    year: years[2]
  },
  {
    name: "Programación Concurrente",
    image_url: 'clock.png',
    description: 'Brindar los conceptos fundamentales de Concurrencia en software. Analizar la semántica y sintaxis para
    especificar concurrencia. Analizar el concepto de sistema concurrente compuesto por la arquitectura, el
    sistema operativo y los algoritmos. Estudiar la sincronización de procesos concurrentes por memoria
    compartida y mensajes. Vincular la concurrencia en software con los conceptos de procesamiento distribuido
    y paralelo. Desarrollar estudios de casos con diferentes lenguajes/ herramientas para concurrencia.',
    year: years[2]
  },
  {
    name: "Bases de Datos 1",
    image_url: 'book.png',
    description: 'Generar habilidades para que los alumnos puedan identificar y abordar las etapas de diseño y
    desarrollo de un sistema de información usando bases de datos
    Retomar y profundizar conceptos adquiridos previamente, analizando los problemas de
    normalización y optimización del diseño de las bases de datos
    Desarrollar trabajos experimentales sobre diferentes motores de bases de datos relacionales para
    comparar ventajas y desventajas de cada uno de ellos',
    year: years[2]
  },
  {
    name: "Fundamentos de la Teoría de la Computación",
    image_url: 'glasses.png',
    description: 'Familiarizar al estudiante con la teoría de algoritmos, la teoría de máquinas abstractas, la teoría de
    lenguajes formales y la lógica matemática.
    Introducir al estudiante en la base teórica de los sistemas inteligentes.',
    year: years[3]
  },
  {
    name: "Sistemas Operativos",
    image_url: 'keyboard.png',
    description: 'Profundizar los conceptos desarrollados en Introducción a los Sistemas Operativos, considerando
    los temas de vinculación entre sistemas operativos, sistemas operativos distribuidos y problemas
    de concurrencia y sincronización en arquitecturas distribuidas. El ámbito de aplicación se hace
    sobre sistemas Windows y Linux avanzado.',
    year: years[3]
  },
  {
    name: "Bases de Datos 2",
    image_url: 'book.png',
    description: 'Completar el estudio de los temas básicos de BD, desarrollados en Introducción a las BD y Bases de
    Datos 1, abarcando aspectos de BD orientadas a objetos y lenguajes de operación de BDOO, utilización
    de diferentes alternativas de mapeo objeto-relacional. Se incluye además el estudio de otros mecanismos
    de persistencia no tradicional como las bases de datos NOSQL y su aplicabilidad a problemas habituales.
    Dotar a los alumnos de criterios que les permitan afrontar las diferentes etapas de un proyecto tendiente al
    diseño, implementación y posterior puesta en producción de soluciones de software de persistencia de
    información.',
    year: years[3]
  },
  {
    name: "Ingeniería de Software 3",
    image_url: 'ruler.png',
    description: 'Integrar conocimientos aprendidos de Ingeniería de Software para planificar el uso estratégico de sistemas
    de información. Introducir conceptos y principios de calidad y su aplicación a productos, procesos y a la
    organización. Explicar el concepto y técnicas para la auditoría de sistemas de información, focalizándose
    en los controles a la tarea de gerenciamiento de los mismos. Estudiar las técnicas para la administración
    de programas y proyectos de tecnología, y para la gobernanza efectiva de tecnología de información.
    Desarrollar habilidades para realizar estudios de costos efectivos. Adquirir conocimientos sobre sistemas
    colaborativos y sistemas que integran interfaces no tradicionales.',
    year: years[3]
  },
  {
    name: "Sistemas y Organizaciones",
    image_url: 'magnifying-glass.png',
    description: 'Dar al alumno los conceptos necesarios de la Teoría General de Sistemas como instrumento para analizar
    la realidad, su aplicación para la resolución de problemas en las empresas/organizaciones vistas como un
    sistema y considerando su comportamiento dinámico de relación con el contexto (en particular el contexto
    económico, social, industrial y comercial) y la conciencia de la importancia de la confidencialidad de la
    información y cuestiones de seguridad relacionadas con el proceso de desarrollo y mantenimiento del
    software, así como en el empleo del producto software.',
    year: years[3]
  },
  {
    name: "Matemática 4",
    image_url: 'calculator.png',
    description: 'Profundizar temas de Matemática 1, 2 y 3 de las Licenciaturas. Asimismo, incorporar temas de matemática
    que son utilizados en cursos superiores de 4to y 5to año, y también como fundamentos en el desarrollo de
    las tesinas de grado.
    Conocer e interpretar los conceptos, teorías y métodos matemáticos relativos a la informática, para su
    aplicación en problemas concretos de la disciplina.',
    year: years[3]
  },
  {
    name: "Desarrollo de Software en Sistemas Distribuidos",
    image_url: 'world.png',
    description: 'Profundizar los conceptos de concurrencia y distribución de datos y procesos que el alumno ha visto hasta
    el momento, aplicándolos al diseño de Sistemas Distribuidos (contemplando los aspectos de hardware,
    software y comunicaciones).
    Desarrollar el estudio experimental de casos concretos, Desarrollar el estudio experimental de casos
    concretos, promoviendo las “Instancias Supervisadas de Formación en la Práctica Profesional (ISFPP)”',
    year: years[3]
  },
  {
    name: "Taller de Tecnologías de Producción de Software",
    image_url: 'keyboard.png',
    description: 'Hay diferentes opciones. Entre ellas la mejor, Ruby.',
    year: years[3]
  },
  {
    name: "Aspectos Sociales y Profesionales de Informática",
    image_url: 'sissors.png',
    description: 'Preparar al profesional informático a los efectos que, al finalizar el curso, pueda:
    1.- Manejar los conceptos elementales del ordenamiento jurídico argentino.
    2.- Comprender el marco regulatorio de la actividad desempeñada, diferenciando claramente las diferentes
    formas jurídicas que se establecen en la actividad informática.
    3.- Introducirlo la teoría y práctica de la actuación como perito, al ser auxiliar de la justicia.
    4.- Entender las consecuencias legales de los actos realizados en vista a un mejor desempeño profesional.',
    year: years[4]
  },
])

reviews = Review.create([
  {
    title: 'No es necesario',
    description: 'Realmente deberian sacar esta previa',
    score1: 2,
    score2: 2,
    score3: 3,
    score4: 4,
    subject: subjects.first,
    user: users.first
  },
  {
    title: 'No es necesario',
    description: 'Realmente deberian sacar esta previa, necesitamos que las materias empiecen antes',
    score1: 1,
    score2: 1,
    score3: 3,
    score4: 4,
    subject: subjects[1],
    user: users[1]
  }
])