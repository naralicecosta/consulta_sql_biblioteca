-- Elabore uma Procedure para gerar a relação de pagamento por atraso para 
-- determinada matricula passada por parametro no seguinte formato: Cobrar 
-- 1,00 por dia de atraso


CREATE PROCEDURE GerarRelacaoPagamentoPorAtraso
    @idMatricula INT
AS
BEGIN
    SELECT 
        Bib_Livros.Titulo as 'Nome Livro',
		Bib_Alunos.Nome as 'Aluno',
        Bib_Utilizacao.DataInicioUtilizacao,
		Bib_Utilizacao.DataPrevistaEntrega,
		Bib_Utilizacao.DataFimUtilizacao,
        DATEDIFF(DAY, Bib_Utilizacao.DataPrevistaEntrega, Bib_Utilizacao.DataFimUtilizacao) AS DiasAtraso,
        DATEDIFF(DAY, Bib_Utilizacao.DataPrevistaEntrega, Bib_Utilizacao.DataFimUtilizacao) AS Valor
        FROM Bib_Alunos
	INNER JOIN Bib_Matriculas ON Bib_Alunos.idAluno = Bib_Matriculas.idAluno
	INNER JOIN Bib_Cursos ON Bib_Matriculas.idCurso = Bib_Cursos.idCurso
	INNER JOIN Bib_livros ON Bib_Cursos.idCurso = Bib_livros.idLivro
	INNER JOIN Bib_Exemplares ON Bib_Livros.idLivro = Bib_Exemplares.IdLivro
	INNER JOIN Bib_Utilizacao ON Bib_Exemplares.idExemplar = Bib_Utilizacao.IdUtilizacao
   
    WHERE 
       Bib_Utilizacao.idExemplar  = @idMatricula
        AND Bib_Utilizacao.DataFimUtilizacao > Bib_Utilizacao.DataPrevistaEntrega;
END
