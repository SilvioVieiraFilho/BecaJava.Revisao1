CREATE TABLE Alunos (
        Id_aluno int IDENTITY,
        Nome_aluno varchar(100),
        Telefone_aluno varchar(100)

        PRIMARY KEY (Id_aluno)
);

CREATE TABLE Categorias (
        Id_categoria int IDENTITY,
        Nome varchar(100)

        PRIMARY KEY (Id_categoria)
);

CREATE TABLE Livros (
        Id_livro int IDENTITY,
        Id_categoria int,
        Titulo varchar(100),
        N_livros int

        PRIMARY KEY (Id_livro)
        CONSTRAINT FK_Categoria FOREIGN KEY (Id_categoria) REFERENCES Categorias(Id_categoria),
);

CREATE TABLE Requisicoes (
        Id_requisicao int IDENTITY,
        Id_livro int,
        Id_aluno int,
        Data_req Date,
        Data_entrega Date,
        Data_entregou Date

        PRIMARY KEY (Id_requisicao),
        CONSTRAINT FK_Aluno FOREIGN KEY (Id_aluno) REFERENCES Alunos(Id_aluno),
        CONSTRAINT FK_Livro FOREIGN KEY (Id_livro) REFERENCES Livros(Id_livro)
);

CREATE TABLE Funcionarios (
        Id_funcionario int IDENTITY,
        Nome varchar(100)

        PRIMARY KEY (Id_funcionario)
);

CREATE TABLE FuncionariosRequisicoes(
        Id_requisicao int, 
        Id_funcionario int

        PRIMARY KEY (Id_requisicao, Id_funcionario),
        CONSTRAINT FK_Requisicao FOREIGN KEY (Id_requisicao) REFERENCES Requisicoes(Id_Requisicao),
        CONSTRAINT FK_Funcionario FOREIGN KEY (Id_funcionario) REFERENCES Funcionarios(Id_funcionario)
);

CREATE TABLE Autores (
        Id_autor int IDENTITY,
        Nome varchar(100)

        PRIMARY KEY (Id_autor)
);

CREATE TABLE LivrosAutores (
        Id_autor int,
        Id_livro int

        PRIMARY KEY (Id_autor, Id_Livro)
        CONSTRAINT FK_Livros FOREIGN KEY (Id_livro) REFERENCES Livros(Id_livro),
        CONSTRAINT FK_Autores FOREIGN KEY (Id_autor) REFERENCES Autores(Id_autor)
);