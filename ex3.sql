--  Liste os nomes dos departamentos que adotaram todos os livros didáticos 
-- escritos por NAVATHE e publicados pela editora OBJETIVA. 

SELECT Bib_Livros.Titulo, Bib_Departamentos.Nome, Bib_Livros.Editora, Bib_Livros.Autor  FROM Bib_Livros
INNER JOIN Bib_Cursos ON Bib_Livros.IdLivro = Bib_Cursos.idCurso
INNER JOIN Bib_Departamentos ON Bib_Cursos.idDepartamento = Bib_Departamentos.idDepartamentos
WHERE Bib_Livros.Editora = 'OBJETIVA' AND Bib_Livros.Autor = 'NAVATHE'