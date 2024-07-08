-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 08-07-2024 a las 08:54:38
-- Versión del servidor: 8.3.0
-- Versión de PHP: 8.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

-- Creación de usuario megamedia_fcocerda
CREATE USER 'megamedia_fcocerda'@'localhost' IDENTIFIED BY 'jw-//zb/5OPxiZ[S';

--
-- Base de datos: `megamedia_fcocerda`
--
DROP DATABASE IF EXISTS `megamedia_fcocerda`;
CREATE DATABASE IF NOT EXISTS `megamedia_fcocerda` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `megamedia_fcocerda`;
GRANT ALL PRIVILEGES ON megamedia_fcocerda.* TO 'megamedia_fcocerda'@'localhost';
FLUSH PRIVILEGES;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `noticia`
--

DROP TABLE IF EXISTS `noticia`;
CREATE TABLE `noticia` (
  `id` int NOT NULL,
  `titulo` varchar(300) NOT NULL,
  `contenido` varchar(10000) NOT NULL,
  `fecha` date NOT NULL,
  `video` varchar(11) NOT NULL,
  `autor` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `noticia`
--

INSERT INTO `noticia` (`id`, `titulo`, `contenido`, `fecha`, `video`, `autor`) VALUES
(1, 'Festival de Viña del Mar 2025 define fecha', 'Viña del Mar, 1 de julio de 2024.- . Este mediodía, la Comisión Organizadora del LXIV Festival Internacional de la Canción de Viña del Mar, llevó a cabo su primera reunión oficial donde se analizaron distintas materias relacionadas tanto con la organización de la 64° edición del certamen como la promoción de la ciudad de Viña del Mar.\r\n\r\nLa instancia estuvo presidida por la alcaldesa, Macarena Ripamonti Serrano y participaron los concejales miembros de la Comisión Promoción, funcionarios municipales a cargo y los ejecutivos de Megamedia y Bizarro Live Entertainment, responsables de la producción y transmisión del evento para Chile y el mundo.\r\n\r\nEs así como la Comisión definió las fechas en que se realizará este importante certamen. Estas serán desde el 23 hasta el 28 de febrero de 2025. Mientras que la Gala se efectuará el viernes 21 de febrero.\r\n\r\nTambién se revisaron modificaciones a las bases de las competencias, siendo el principal cambio, que las canciones postulantes no podrán  exceder los 5 años de antigüedad, contados a partir de la fecha de su inscripción en la sociedad administradora de derechos correspondiente y/o registro de propiedad intelectual. La fecha de publicación de las nuevas bases e inicio de las postulaciones será a partir del 15 de julio de 2024, a las 11 de la mañana hora local de Santiago de  Chile.\r\n\r\nAnte estos importantes anuncios, la alcaldesa Macarena Ripamonti sostuvo que “como en todo nuestro trabajo municipal nos tomamos muy seriamente la planificación estratégica porque esto permite tomar buenas decisiones con el objetivo de que la ciudad y las personas viñamarinas se vean beneficiadas. Es por eso una gran noticia confirmar la fecha del próximo certamen del Festival Internacional de la Canción de Viña del Mar. Esta decisión permitirá que el evento más importante del país contribuya con el desarrollo económico de la ciudad, generando empleo, altas ocupaciones hoteleras y que el turismo se dinamice durante todo el verano, debido a que el Festival terminará el último día del mes de febrero”.\r\n\r\nA lo expresado, la primera autoridad comunal agregó que “además, las bases de las Competencias Internacional y Folclórica, tendrán importantes avances para realzar la esencia del Festival, dando relevancia a los cantantes y músicos de todo el mundo que esperan competir en la versión 2025 del evento, la que en unos días más abrirá sus postulaciones. Esperamos que el trabajo conjunto del Municipio con Megamedia y Bizarro continúe siendo fructífero, con el único y más importante objetivo de dar valor al Festival, con una labor profesional, innovadora y con los más altos estándares de la industria musical y televisiva”, cerró la alcaldesa Ripamonti.\r\n\r\nEn la jornada también se definieron futuras actividades oficiales del certamen. Es así como se decidió, que la gira de promoción internacional, se lleve a cabo estratégicamente en noviembre próximo, en medio del desarrollo de la 25° Entrega Anual del Latin Grammy® en la ciudad de Miami, Florida, Estados Unidos.\r\n\r\nAl mismo tiempo, durante la comisión se dieron a conocer los nombres de los ejecutivos responsables del evento en sus distintas áreas. De esta forma, Daniel Merino, asumirá como Director Ejecutivo del Festival, liderando las tareas relacionadas con la organización, y producción del certamen. Mientras que Lorena de las Heras, ha sido designada como Productora Ejecutiva, quien se encargará de liderar los equipos de dirección de televisión, editorial y marketing del programa.\r\n\r\nPor su parte, la dirección de televisión corresponderá a Álex Hernández y Sebastián Hödar, mientras que  la dirección musical, nuevamente a Roberto López.', '2024-07-01', '-Ul7wVfz3Wc', 'Megamedia'),
(2, 'Radio Romántica cambia su imagen', 'Desde este lunes 1 de julio Radio Romántica cambia su imagen con una renovación mucho más romántica. Esta transformación viene acompañada con una modificación en la línea programática y musical con una parrilla enfocada en grandes éxitos latinos de ayer y hoy, acercándose más a sus raíces.\r\n\r\nAdemás, dos nuevos programas se suman a la parrilla de Radio Romántica. El primero es “Terapia Romántica” de 11:00 a 12:00 hrs con Begoña Basauri y el psicólogo Rodrigo Jarpa, este será un espacio seguro para hablar del amor y desamor, en donde los auditores podrán contar todo lo que no se atreven a decir abiertamente.\r\n\r\nSegún Begoña, “Terapia Romántica” es un programa “para todos, hombres, mujeres, de la edad que sean. Si bien son temas que son de adultos, no tienen una temática que no puedan ser escuchadas por niños, es un programa superameno, superliviano. Es una hora para abrirnos un poco, abrir nuestro corazón, pero también abrir la cabeza a cómo solucionar de repente ciertas problemáticas que se presentan en la vida adulta”.\r\n\r\nPara Rodrigo Jarpa sumarse a Radio Romántica lo hace sentir “muy feliz, muy motivado, muy agradecido y con muchas risas pronosticadas en el tiempo. En el programa podemos esperar conversaciones que planteen temas comunes, ojalá poder aportar en términos de aprender sobre las relaciones, el bienestar en la salud mental y reírnos también, pasarlo bien y disfrutar. Con Bego ya llevamos harto tiempo haciendo con el podcast y tenemos muy buen fiato y hemos enganchado superbien, así que estoy superconfiado de la dupla que armamos con esta tremenda partner”\r\n\r\nEn cuanto al segundo estreno de julio, llega  “Abrázame lento”, espacio musical que evocará a aquellas canciones que nos han hecho suspirar a todos, incluso en secreto. Este podremos escucharlo todos los viernes a las 21:00 hrs.\r\n\r\nY para finalizar, “Alerta en Romántica” con Rodrigo Sepúlveda, amplía su horario en una hora, estando al aire entre 15:00 y 18:00 horas, acercando la contingencia a todos los auditores de la radio.\r\n\r\nDe esta forma, Radio Romántica renueva su imagen enfocada en grandes éxitos latinos de ayer y hoy, acercándose a sus raíces.', '2024-06-28', 'I0eO5bsVc0U', 'Francisco A. Cerda'),
(3, 'MegaMedia lanzó MegaTiempo', 'Megamedia lanzó MEGATIEMPO, el primer canal en la historia de la televisión chilena orientado exclusivamente a temas meteorológicos, fenómenos climáticos y su impacto en el medio ambiente de nuestro país y del planeta.\r\n\r\nEl lanzamiento se realizó en Viña del Mar y contó con la presencia de la acaldesa de la ciudad, Macarena Ripamonti y del Presidente del directorio de Megamedia, Carlos Heller. De esta manera, la ceremonia cumplió con los objetivos de descentralizar un tema que es de relevancia para todo el país, y también fortalecer nuestro sentido de pertenencia con la ciudad de nuestro Festival de la Canción.\r\n\r\nEsta nueva señal estará disponible en todas las plataformas digitales de Mega, Meganoticias, Mega Go y directamente en el sitio Megatiempo.cl. Como complemento, su distribución también podrá ser a través de los diversos operadores de TV Paga que hay en el mercado.\r\n\r\nPara Javier Villanueva, director ejecutivo de Megamedia, \"Megatiempo, al tener una concepción digital multidispositivo, responde a las necesidades de las diferentes y nuevas audiencias que consumen los más variados contenidos informativos. El objetivo es que sea de fácil acceso para las personas y en el lugar que se encuentren\".\r\n\r\nCon un equipo altamente calificado que integran nuestro meteorólogo Jaime Leyton, los periodistas especializados en meteorología Alejandro Sepúlveda y Macarena Del Real, y el periodista especializado en ciencia, tecnología, sustentabilidad e innovación, Daniel Silva, el nuevo proyecto busca acercar temáticas medioambientales y climáticas a todas las audiencias.\r\n\r\nPara Alejandro Sepúlveda, editor de MegaTiempo, esta nueva señal \"es fundamental para la sociedad, es un servicio de información fundamental para todas las personas, no solamente para saber la temperatura o cómo va a estar al otro día, o la semana siguiente, sino que tiene que ver más allá de que me pongo o no me pongo. Tiene que ver con la agricultura, con el sector productivo y también entender los fenómenos que son cada vez más extremos, producto del cambio climático. Es una plataforma que se requería hace mucho tiempo y además que nos permite no solo llegar a través de la señal de televisión sino que también complementada con MegaTiempo.cl. También nos permite estar conectados con la comunidad Megatiempo, que toda la gente pueda participar de ella, es un ecosistema que se suma a todo el gran ecosistema de Megamedia y que es fundamental”.\r\n\r\nEntre los contenidos que podremos encontrar en MegaTiempo se encuentran microprogramas, reportajes especiales con temáticas medioambientales, actualización del tiempo con uso de inteligencia artificial y cámaras en vivo para monitorear la temperatura. Además, contará con explicaciones más extensas sobre los principales fenómenos y conceptos vinculados al tiempo y el cambio climático. También Daniel Silva presentará las innovaciones más sorprendentes de ciencia y tecnología.\r\n\r\nDe esta forma, Megamedia sigue a la vanguardia respecto a los nuevos desafíos que nos pone la industria de las comunicaciones, buscando conectar con los temas que nos interesan a todos los chilenos.', '2024-07-04', 'H3LnvzXi_Uk', 'Francisco Cerda S.'),
(4, 'Leontina comenta \"El Señor de la Querencia\"', 'Leontina Aguirre, interpretada por Luz Valdivieso, desclasifica a los personajes de “El Señor de la Querencia”. En este adelanto podemos ver al ama de llaves de La Querencia contarnos cómo son cada uno de los personajes que integran la nueva nocturna de Mega.\r\n\r\nComenzando con la familia Echeñique, Leontina parte con José Luis Echeñique, el patrón de La Querencia, definiéndolo como “un hombre con voluntad de fuego”, respecto a Leonor la describe como “una mujer inteligente y sometida, ansiosa de liberarse de su matrimonio”. También nos da un vistazo de los hijos de este matrimonio, Ignacio Echeñique, el hijo mayor y fiel brazo derecho de su padre, Luis Emilio Echeñique, el futuro abogado y un mujeriego incorregible, y Teresita Echeñique, la hija menor y cuyo despertar sexual sacudirá su vida y la demás en La Querencia.\r\n\r\nTambién desclasifica a Mercedes de los Ríos, la prima elegante y locuaz de Leonor, quien viene a arreglar vínculos rotos junto a su hija Lucrecia Santa María de los Ríos, quien tiene oscuros deseos.\r\n\r\nPara finalizar la presentación de los personajes, Leontina repasa a la familia Pradenas comenzando con Hermina, la hermana menor de este trío de hermanos, una atractiva, ambiciosa e incorregible mujer. Luego se encuentra María, la cocinera de La Querencia, una sufrida y abnegada mujer casada con Buenaventura Moreno, el peón de José Luis Echeñique, con quien tiene una hermosa hija, Violeta Moreno.\r\n\r\nEl ama de llaves de La Querencia termina su presentación con Manuel Pradenas, un hombre tenaz y valiente, quien está comprometido con los derechos y la dignidad del pueblo de La Querencia, Y finaliza con el cuestionamiento si Manuel podrá reclamar lo que es suyo y enfrentar a su hermano “El Señor de La Querencia”.\r\n\r\nNo te pierdas “El Señor de La Querencia” muy pronto por Mega y Mega GO.', '2024-06-27', 'cmBLfSWWSrY', 'Francisco Cerda S.'),
(5, 'Megamedia comprometido con la sostenibilidad', 'Megamedia Sostenible, el área de sostenibilidad de Megamedia, firmó un trascendental acuerdo con la empresa Santiago Climate Exchange (SCX), con el relevante objetivo de realizar una medición a nuestra huella de carbono, en un proceso que comenzará este mes de junio. En la ceremonia estuvieron presentes Javier Villanueva, director ejecutivo de Megamedia; Paola Ferrero, directora de Megamedia Sostenible y Aldo Cerda, Gerente General de SCX. \r\n\r\nEste hito permitirá a Megamedia desarrollar políticas desde las áreas de medio ambiente, con todas las temáticas de cambio climático como base; desde lo social, poniendo a las personas como centro; y desde la gobernanza, manteniendo transparencia y cumplimiento. Todo con una perspectiva de mediano y largo plazo. \r\n\r\nJavier Villanueva, director ejecutivo de Megamedia, señaló que \"Este convenio con SCX es nuestro primer gran paso en toda una estrategia de sostenibilidad que estamos desarrollando. Definimos el año pasado tener un grupo de medios sostenibles, que por lo demás va en sintonía con la tendencia mundial de las importantes compañías de comunicaciones del planeta, de asumir responsablemente el desafío de la sostenibilidad”.\r\n\r\nPaola Ferrero, directora Megamedia Sostenible, señaló que “En Megamedia estamos conscientes que un desarrollo sostenible integral es parte de nuestro rol social y de nuestra responsabilidad corporativa. Esto dado además por el alcance mediático que tenemos como holding de medios.  En este sentido, nuestro compromiso es absoluto y comienza desde el espíritu de cada uno de nuestros colaboradores y la capacidad que tendremos de proyectarlo a la comunidad en su conjunto”.  \r\n\r\nEsta alianza convierte a Megamedia en el primer holding de comunicaciones en Chile en implementar estas medidas concretas tendientes a medir y luego disminuir los residuos de carbono que se generen.  \r\n\r\nSegún Aldo Cerda, CEO Santiago Climate Exchange, \"la importancia de esta asociación es que la industria de telecomunicaciones en general se ha quedado atrás respecto al esfuerzo de las organizaciones para atender el problema del cambio del climático, por lo tanto, Megamedia en esto es pionero en términos de introducirse a medir y tratar de reducir el impacto de sus actividades medioambientales, particularmente en sus emisiones de gas efecto invernadero\".  \r\n\r\nLa Sostenibilidad es un desafío que en los últimos años han asumido las empresas más relevantes del mundo y de los más variados rubros. A nivel global se ha comprendido que un nuevo enfoque de gestión debe apuntar a integrar las necesidades ambientales, económicas y sociales, para de este modo no comprometer las necesidades básicas de desarrollo de las generaciones venideras.  Un proyecto global del que Megamedia ya es parte.', '2024-06-17', '6gjD34RHvaw', 'Francisco Cerda Sepúlveda');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `noticia`
--
ALTER TABLE `noticia`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `noticia`
--
ALTER TABLE `noticia`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
