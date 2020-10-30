CREATE PROCEDURE BI_Inserir_Aluno_Procedure1

@Nome VARCHAR(100),
@Telefone VARCHAR(100)

AS
BEGIN

INSERT INTO Alunos
    (Nome_aluno,Telefone_aluno)
VALUES (@Nome,@Telefone)
END

EXECUTE BI_Inserir_Aluno_Procedure1 'Bruno','(11) 94567-8765'

SELECT *FROM Alunos

CREATE PROCEDURE BI_Atualizar_Aluno_Procedure2

    @Id_aluno INT ,
    @Telefone_aluno VARCHAR(100) 
AS
BEGIN
    UPDATE
        Alunos SET 
        Telefone_aluno = @Telefone_aluno 
        WHERE Id_aluno = @Id_aluno

END


EXEC BI_Atualizar_Aluno_Procedure2 6,'(21) 91234,4567'

SELECT *FROM Alunos



CREATE PROCEDURE BI_Inserir_Funcionarios_Procedure3

@Nome VARCHAR(100)

AS
BEGIN

INSERT INTO Funcionarios (Nome)
VALUES (@Nome)
END

EXECUTE BI_Inserir_Funcionarios_Procedure3 'Carlos'

SELECT FROM Funcionarios

CREATE PROCEDURE BI_Deletar_Funcinarios_Procedure4
    @Id_funcionario INT
    AS
    DELETE FROM
        Funcionarios
            WHERE Id_funcionario  = @Id_funcionario

EXEC BI_Deletar_Funcinarios_Procedure4 4

SELECTFROM Funcionarios



ALTER PROCEDURE BI_Inserir_Livros_Procedure5
    @Titulo VARCHAR(100),
    @Nome_categoria VARCHAR(100),
    @Nome VARCHAR(100)

    AS
    BEGIN TRAN
        INSERT INTO Livros
            (Titulo)
            VALUES(@Titulo);

        INSERT INTO Categorias
            (Nome_categoria)
            VALUES(@Nome_categoria);

        INSERT INTO Autores
            (Nome)
        VALUES(@Nome)

        COMMIT TRAN
