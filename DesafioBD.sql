-- 1 - Buscar o nome e ano dos filmes
select Nome, Ano from Filmes

--2 - Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano
select Nome, Ano
from filmes order by Ano

-- 3 - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração
select Nome, Ano, duracao
from Filmes where Nome like '%De volta para o futuro%' 

-- 4 - Buscar os filmes lançados em 1997
select * from Filmes where Ano = 1997

-- 5 - Buscar os filmes lançados APÓS o ano 2000
select * from Filmes where Ano > 2000

-- 6 - Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente
select * from Filmes
where Duracao > 100 and duracao < 150
order by Duracao

-- 7 - Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente
select Ano, count(*) as 'Quantidade'
from filmes
group by Ano
order by MAX(Duracao) desc

-- 8 - Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome
select Id, PrimeiroNome, UltimoNome, Genero from Atores where Genero = 'M'

-- 9 - Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome
select Id, PrimeiroNome, UltimoNome, Genero
from Atores
where Genero = 'F'
Order by PrimeiroNome

-- 10 - Buscar o nome do filme e o gênero
select F.Nome, G.Genero from Filmes F
inner join FilmesGenero FG on FG.IdFilme = F.Id
inner join Generos G on G.Id = FG.IdGenero

-- 11 - Buscar o nome do filme e o gênero do tipo "Mistério"
select F.Nome, G.Genero from Filmes F
inner join FilmesGenero FG on FG.IdFilme = F.Id
inner join Generos G on G.Id = FG.IdGenero
where G.Genero = 'Mistério'

-- 12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
select  F.Nome, A.PrimeiroNome, A.UltimoNome, EF.Papel from Filmes F
inner join ElencoFilme EF on EF.IdFilme = F.Id
inner join Atores A on A.Id = EF.IdAtor