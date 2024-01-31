--1# Buscar nome e ano dos filmes
SELECT Nome, Ano FROM Filmes

--2# Buscar o nome e anos dos filmes, ordenando em ordem crescente pelo ano
SELECT Nome, Ano FROM Filmes
ORDER BY Ano ASC

--3# Buscar pelo filme de volta para o futuro, trazendo o nome, ano e duração
SELECT Nome, Ano, Duracao FROM Filmes
WHERE Nome='De Volta para o Futuro'

--4# Buscar pelo filmes lançados em 1997
SELECT Nome, Ano, Duracao FROM Filmes
WHERE Ano=1997

--5# Buscar os filmes lançados após o ano 2000
SELECT Nome, Ano, Duracao FROM Filmes
WHERE Ano > 2000

--6# Filmes com duração maior que 100 e menor 150, ordenar pela duração em ordem crescente
SELECT Nome, Ano, Duracao FROM Filmes
WHERE Duracao BETWEEN 100 AND 150
ORDER BY Duracao ASC

--7# Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duração em ordem decrescente
SELECT 
	Ano,
	COUNT(*) Quantidade
	FROM Filmes
GROUP BY Ano
ORDER BY Ano DESC

--8# Buscar atores do gênero masculino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome
SELECT PrimeiroNome, UltimoNome FROM Atores
WHERE Genero='M'
ORDER BY PrimeiroNome

--9# Buscar atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome
SELECT PrimeiroNome, UltimoNome FROM Atores
WHERE Genero='F'
ORDER BY PrimeiroNome

--10# Buscar nome do filme e gênero
SELECT Filmes.Nome, Generos.Genero
FROM FilmesGenero
JOIN Filmes
ON FilmesGenero.IdFilme = Filmes.Id
JOIN Generos
ON FilmesGenero.IdGenero = Generos.Id

--11# Buscar nome do filme e gênero do tipo "Misterio" 10
SELECT Filmes.Nome, Generos.Genero
FROM FilmesGenero
JOIN Filmes
ON FilmesGenero.IdFilme = Filmes.Id
JOIN Generos
ON FilmesGenero.IdGenero = Generos.Id
WHERE FilmesGenero.IdGenero = 10

--12# Buscar nome do filme e atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
SELECT Filmes.Nome, Atores.PrimeiroNome, Atores.UltimoNome, ElencoFilme.Papel
FROM ElencoFilme
JOIN Filmes
ON ElencoFilme.IdFilme = Filmes.Id
JOIN Atores
ON ElencoFilme.IdAtor = Atores.Id
