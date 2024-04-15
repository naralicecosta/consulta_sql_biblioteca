Liste os nomes dos departamentos que adotam livros APENAS da Editora  Pearson

SELECT Bib_Livros.Titulo, Bib_Departamentos.Nome, Bib_Livros.Editora FROM Bib_Livros
INNER JOIN Bib_Cursos ON Bib_Livros.IdLivro = idCurso
INNER JOIN Bib_Departamentos ON Bib_Cursos.idDepartamento = Bib_Departamentos.idDepartamentos
WHERE Bib_Livros.Editora = 'PEARSON'