-- Liste os 5 livros mais utilizados pelos aluno no periodo Letivo 2020.1
SELECT TOP 5 Bib_Livros.Titulo, Bib_LivrosCurso.Periodo, Bib_Cursos.Nome as 'NomeCurso' FROM Bib_Livros
INNER JOIN Bib_LivrosCurso ON Bib_Livros.idLivro = Bib_LivrosCurso.idLivro
INNER JOIN Bib_Cursos ON Bib_LivrosCurso.idCurso = Bib_Cursos.idCurso