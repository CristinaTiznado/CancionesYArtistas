USE canciones_db;

-- Inserts artistas
INSERT INTO artistas (nombre, apellido, biografia, fecha_creacion, fecha_actualizacion) 
VALUES ('Queen', '', 'Banda británica de rock formada en Londres en 1970, conocida por su diversidad musical y arreglos vocales.', NOW(), NOW());

INSERT INTO artistas (nombre, apellido, biografia, fecha_creacion, fecha_actualizacion) 
VALUES ('Juanes', '', 'Cantante, compositor y músico colombiano de pop latino y rock en español.', NOW(), NOW());

INSERT INTO artistas (nombre, apellido, biografia, fecha_creacion, fecha_actualizacion) 
VALUES ('Ed', 'Sheeran', 'Cantautor y guitarrista británico, uno de los artistas musicales con mayores ventas en el mundo.', NOW(), NOW());

INSERT INTO artistas (nombre, apellido, biografia, fecha_creacion, fecha_actualizacion) 
VALUES ('Soda Stereo', '', 'Banda argentina de rock en español formada en 1982, considerada una de las más importantes e influyentes de Iberoamérica.', NOW(), NOW());

INSERT INTO artistas (nombre, apellido, biografia, fecha_creacion, fecha_actualizacion) 
VALUES ('a-ha', '', 'Banda noruega de synth-pop y rock alternativo formada en Oslo en 1982.', NOW(), NOW());

-- Inserts canciones
INSERT INTO canciones (titulo, id_artista, album, genero, idioma, fecha_creacion, fecha_actualizacion) 
VALUES ('Bohemian Rhapsody', 1, 'A Night at the Opera', 'Rock', 'Inglés', NOW(), NOW());

INSERT INTO canciones (titulo, id_artista, album, genero, idioma, fecha_creacion, fecha_actualizacion) 
VALUES ('La Camisa Negra', 2, 'Mi Sangre', 'Pop Latino', 'Español', NOW(), NOW());

INSERT INTO canciones (titulo, id_artista, album, genero, idioma, fecha_creacion, fecha_actualizacion) 
VALUES ('Shape of You', 3, 'Divide', 'Pop', 'Inglés', NOW(), NOW());

INSERT INTO canciones (titulo, id_artista, album, genero, idioma, fecha_creacion, fecha_actualizacion) 
VALUES ('De Música Ligera', 4, 'Canción Animal', 'Rock en Español', 'Español', NOW(), NOW());

INSERT INTO canciones (titulo, id_artista, album, genero, idioma, fecha_creacion, fecha_actualizacion) 
VALUES ('Take On Me', 5, 'Hunting High and Low', 'Synth-pop', 'Inglés', NOW(), NOW());
