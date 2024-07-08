# Prueba Técnica Postulante Megamedia

**Autor:** Franciso Cerda <hola@nufrankz.org>

**Licencia:** [GPL-3.0 license](https://github.com/nufrankz/test-mm?tab=GPL-3.0-1-ov-file#readme)

**Descripción:** Proyecto creado en MySQL, PHP y Twig para el puesto de [Analista Programador Web](https://mega.trabajando.cl/empleos/ofertas/5719355/Analista-Programador---WEB.html) en Megamedia. Instrucciones recibidas en PDF incluídas en el repositorio.

## Características 

- Basado en el look&feel de [megamedia.cl](https://megamedia.cl/)
- Completamente responsivo, uso de Bootstrap y custom CSS
- Es un proyecto CRUD (Create/Read/Update/Delete) de noticias, con su propio mantenedor

## Cumplimiento

1. Uso de PHP nativo (controladores `/*.php`) y Twig (`/templates/*.twig`)
2. 5 artículos cargados en base de datos
3. Archivos .sql en repositorio, creación de usuario `megamedia_fcocerda` y sus tablas
4. Videos YouTube embedidos en todas las noticias que contengan datos en el campo `video` (opcional)
5. Google Analytics 4 integrado (id `G-CCNEVC6X5Y`)

## Requisitos

Un sistema operativo con estos programas:
1. [Apache 2.4](https://www.apachelounge.com/download/)
2. [PHP 8.3.9](https://php.net)
3. [MySQL](https://www.mysql.com/products/community/)
4. [phpMyAdmin](https://www.phpmyadmin.net/) (opcional)

## Instalación

1. Clonar repositorio: `git clone https://github.com/nufrankz/test-mm.git`
2. Ejecutar `megamedia_fcocerda.sql`: esto creará un nuevo usuario y una nueva base de datos, ambos con nombre `megamedia_fcocerda`, y poblará con datos la tabla `noticia`
3. Iniciar servidor PHP en la carpeta del proyecto: `php -S localhost:8000`