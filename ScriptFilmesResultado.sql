
--1 - Buscar o nome e ano dos filmes
select Nome, Ano from Filmes 

--2 - Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano
select Nome, Ano from Filmes order by Ano 

--3  Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração
select Nome,	Ano,	Duracao from Filmes where Nome = 'De Volta para o Futuro'

--4 - Buscar os filmes lançados em 1997
select Nome,	Ano,	Duracao from Filmes where Ano = 1997

--5 - Buscar os filmes lançados APÓS o ano 2000
select Nome,	Ano,	Duracao from Filmes where Ano > 2000

--6 - Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente
select Nome,	Ano,	Duracao from Filmes where Duracao > 100 and Duracao < 150 order by Duracao

--7 - Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente
select  Ano, count(Ano) as 'Quantidade'  from Filmes group by Ano order by count(Ano) desc

--8 - Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome
select PrimeiroNome,	UltimoNome from Atores where Genero = 'M'

--9 - Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome
select PrimeiroNome,	UltimoNome from Atores where Genero = 'F' order by PrimeiroNome

--10 - Buscar o nome do filme e o gênero
select 
	filme.Nome as 'Nome', genero.Genero as 'Genero'
from 
	FilmesGenero filmeGenero
	inner join Filmes filme on filme.Id = filmeGenero.IdFilme
	inner join Generos genero on genero.Id = filmeGenero.IdGenero

--11 - Buscar o nome do filme e o gênero do tipo "Mistério"
select 
	filme.Nome as 'Nome', genero.Genero as 'Genero'
from 
	FilmesGenero filmeGenero
	inner join Filmes filme on filme.Id = filmeGenero.IdFilme
	inner join Generos genero on genero.Id = filmeGenero.IdGenero
where 
	genero.Id = 10
	and genero.Genero  = 'Mistério'


--12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
select 
	filme.Nome as 'Nome', ator.PrimeiroNome, ator.UltimoNome, elencoFilme.Papel
from 
	Filmes filme 
	inner join ElencoFilme elencoFilme on elencoFilme.IdFilme = filme.Id 
	inner join Atores ator on ator.Id = elencoFilme.IdAtor








