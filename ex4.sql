
-- 4. Liste os nomes dos alunos que nunca usaram livros escritos por NAVATHE 
-- e publicado pela editora OBJETIVA

SELECT 
		Bib_Alunos.Nome as 'Aluno',
        Bib_Livros.Titulo as 'Nome Livro',
		Bib_Livros.Autor,
		Bib_Livros.Editora
		 FROM 
        Bib_Alunos
INNER JOIN Bib_Matriculas ON Bib_Alunos.idAluno = Bib_Matriculas.idAluno
INNER JOIN Bib_Cursos ON Bib_Matriculas.idCurso = Bib_Cursos.idCurso
INNER JOIN Bib_livros ON Bib_Cursos.idCurso = Bib_livros.idLivro
INNER JOIN Bib_Exemplares ON Bib_Livros.idLivro = Bib_Exemplares.IdLivro
INNER JOIN Bib_Utilizacao ON Bib_Exemplares.idExemplar = Bib_Utilizacao.IdUtilizacao
WHERE Bib_Livros.Autor <> 'NAVATHE' AND Bib_Livros.Editora <> 'OBJETIVA'

-- Consulta não traz nenhum dado nas colunas, pois todos os livros são escritos por Navathe



-------
SELECT 
		Bib_Alunos.Nome as 'Aluno',
        Bib_Livros.Titulo as 'Nome Livro',
		Bib_Livros.Autor,
		Bib_Livros.Editora
		 FROM 
        Bib_Alunos
INNER JOIN Bib_Matriculas ON Bib_Alunos.idAluno = Bib_Matriculas.idAluno
INNER JOIN Bib_Cursos ON Bib_Matriculas.idCurso = Bib_Cursos.idCurso
INNER JOIN Bib_livros ON Bib_Cursos.idCurso = Bib_livros.idLivro
INNER JOIN Bib_Exemplares ON Bib_Livros.idLivro = Bib_Exemplares.IdLivro
INNER JOIN Bib_Utilizacao ON Bib_Exemplares.idExemplar = Bib_Utilizacao.IdUtilizacao
WHERE Bib_Livros.Autor <> 'NAVATHE' OR Bib_Livros.Editora <> 'OBJETIVA'

-- consulta retorna dados de todos os alunos que usam o livro do autor, mas não é publicado pela editora objetiva