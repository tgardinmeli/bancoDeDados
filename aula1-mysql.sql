-- Mostrar todos os registros da tabela filmes
SELECT * 
FROM movies;

-- Mostrar o nome, sobrenome e classificação de todos os atores
SELECT first_name, last_name, rating
FROM actors;

-- Mostrar o título de todas as séries e usa alias para que tanto o nome da tabela quuanto 
-- o campo estejam em portugues;
SELECT Séries.title AS Título
FROM series AS Séries;

-- Mostrar o nome e sobrenome dos atores cuja classificação é superior a 7,5
SELECT first_name, last_name, rating
FROM actors
WHERE rating > 7.5;

-- Mostrar o título dos filmes, a classificação e os prêmios dos filmes com classificação 
-- superior a 7,5 e com mais de dois prêmios
SELECT title, rating, awards
FROM movies
where rating > 7.5 AND awards > 2;

-- Mostrar o título dos filmes e a classificação ordenados por classifcação em ordem crescente
SELECT title, rating
FROM movies
ORDER BY rating DESC ;

-- Mostrar o titulos dos três primeiros filmes no banco de dados
SELECT title
FROM movies
LIMIT 3;

-- Mostrar os 5 melhores filmes com a classificação mais alta
SELECT title, rating
FROM movies
ORDER BY rating DESC
LIMIT 5;

-- Listar os 10 primeiros atores
SELECT first_name, last_name
FROM actors
LIMIT 10;

-- Mostrar o titulo e a classificações dos filmes cujo o nome é toy story
SELECT title, rating
FROM movies
WHERE title LIKE 'Toy Story%';

-- Mostrar todos os atores cujos nomes começa com Sam
SELECT first_name, last_name
FROM actors
WHERE first_name LIKE 'Sam%';

-- Mostrar o título dos filmes que saíram entre 2004 e 2008
SELECT title, release_date, YEAR(release_date)
FROM movies
-- WHERE YEAR(release_date) >= 2004 AND YEAR(release_date) <= 2008;
WHERE YEAR(release_date) BETWEEN 2004 AND 2008;

-- Mostrar o titlo dos filmes com a classificação superior a 3, com mais de 1 prêmio
-- e com data de lançamento enbtre 1988 e 2009. Ordernar os resuultados por classificação 
SELECT title, rating, awards, release_date
FROM movies
WHERE rating > 3 AND awards > 1 AND YEAR(release_date) BETWEEN 1988 AND 2009
ORDER BY rating;

--
INSERT INTO actors VALUES (null, null, null, 'Armando', 'Santos', 5.7, 1);

SELECT last_name, first_name FROM actors WHERE first_name LIKE 'Armando';

UPDATE actors
SET last_name = 'Silva'
WHERE id=50;

DELETE FROM actors
WHERE id = 50;




