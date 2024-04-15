-- Liste os alunos que se matricularam em um cursos que utilizam livros
-- publicado pela Editora Objetiva.
SELECT DISTINCT Bib_Alunos.Nome, Bib_Cursos.Nome, Bib_livros.Editora FROM Bib_Alunos
INNER JOIN Bib_Matriculas ON Bib_Alunos.idAluno = Bib_Matriculas.idAluno
INNER JOIN Bib_Cursos ON Bib_Matriculas.idCurso = Bib_Cursos.idCurso
INNER JOIN Bib_livros ON Bib_Cursos.idCurso = Bib_livros.idLivro
WHERE Bib_Livros.Editora = 'OBJETIVA'




