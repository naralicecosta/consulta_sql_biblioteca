
-- liste os registros de utilização de todos exemplares do livro ISBN = 
-- ‘998989898’ no formato

SELECT DISTINCT 
	Bib_Exemplares.idExemplar as 'Exemplar', 
	Bib_Livros.Titulo as 'Nome Livro',
	Bib_Alunos.Nome as 'Aluno',
	Bib_Cursos.Nome AS 'Nome Curso',
	Bib_livros.ISBN,
	Bib_Utilizacao.DataInicioUtilizacao,
	Bib_Utilizacao.DataFimUtilizacao

	FROM Bib_Alunos
INNER JOIN Bib_Matriculas ON Bib_Alunos.idAluno = Bib_Matriculas.idAluno
INNER JOIN Bib_Cursos ON Bib_Matriculas.idCurso = Bib_Cursos.idCurso
INNER JOIN Bib_livros ON Bib_Cursos.idCurso = Bib_livros.idLivro
INNER JOIN Bib_Exemplares ON Bib_Livros.idLivro = Bib_Exemplares.IdLivro
INNER JOIN Bib_Utilizacao ON Bib_Exemplares.idExemplar = Bib_Utilizacao.IdUtilizacao