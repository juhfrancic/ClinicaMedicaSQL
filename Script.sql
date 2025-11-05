CREATE DATABASE BDFotografia;

USE BDFotografia;

CREATE TABLE Endereco(
    Id_endereco Int PRIMARY KEY,
    CEP VARCHAR(8),
    Rua VARCHAR(50),
    Bairro VARCHAR(50),
    Numero Int,
    Cidade VARCHAR(50),
    Estado VARCHAR(2)
);

CREATE TABLE Clientes(
    Id_cliente PRIMARY KEY,
    Id_venda Int FOREIGN KEY,
    Id_endereco Int,
    Nome VARCHAR(50) NOT NULL,
    TelefoneResidencial VARCHAR(15),
    TelefoneComercial VARCHAR(15),
    TelefoneCelular VARCHAR(15),
    FOREIGN KEY (Id_endereco) REFERENCES Endereco(Id_endereco),
    FOREIGN KEY (Id_venda) REFERENCES Venda(Id_venda)
);

CREATE TABLE PessoaFisica(
    Id_cliente int FOREIGN KEY,
    RG VARCHAR(50),
    Sexo Varchar(10),
    CPF VARCHAR(11),
    DataNasc DATE,
    FOREIGN KEY (Id_cliente) REFERENCES Cliente(Id_cliente)
);

CREATE TABLE PessoaJuridica(
    Id_cliente int FOREIGN KEY
    Cnpj VARCHAR(14),
    InscEstadual VARCHAR(50),
    Responsavel VARCHAR(50),
    FOREIGN KEY (Id_cliente) REFERENCES Cliente(Id_cliente)
);


CREATE TABLE Funcionario(
    Codigo PRIMARY KEY,
    Id_venda Int FOREIGN KEY,
    Id_endereco Int FOREIGN KEY,
    Nome VARCHAR(50) NOT NULL,
    Telefone VARCHAR(15),
    FOREIGN KEY (Id_endereco) REFERENCES Endereco(Id_endereco),
    FOREIGN KEY (Id_venda) REFERENCES Venda(Id_venda)
);

CREATE TABLE Produto(
    Codigo INT PRIMARY KEY,
    Id_venda Int FOREIGN KEY,
    QuantidadeMinima INT,
    QuantidadeEmEstoque INT,
    PrecoDeCusto FLOAT,
    PrecoDeVenda FLOAT,
    Descricao VARCHAR(50),
    Tipo VARCHAR (50)
    FOREIGN KEY (Id_venda) REFERENCES Venda(Id_venda)
);

CREATE TABLE Venda(
    Id_venda INT PRIMARY KEY,
    Valor FLOAT,
    Data DATE,
    Numero VARCHAR(15),
    CondicaoPagamento VARCHAR(15)
);







