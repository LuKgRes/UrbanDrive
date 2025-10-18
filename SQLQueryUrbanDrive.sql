CREATE TABLE mecanicos (
    idmecanicos INT IDENTITY(1,1) PRIMARY KEY,
    nome VARCHAR(100),
    turno VARCHAR(100),
    servicos VARCHAR(200),
    telefone VARCHAR(100),
    salario SMALLINT
);


CREATE TABLE OrdemServicos (
    id INT IDENTITY(1,1) PRIMARY KEY,
    IdCliente INT NOT NULL,
    DataAgenda DATE NULL,
    DataEntrega DATE NULL,
    Veiculo VARCHAR(200),
    Mecanico VARCHAR(100) ,
    Descricao VARCHAR (300)
    idmecanico VARCHAR(100)
    CONSTRAINT FK_Servicos_Cliente FOREIGN KEY (IdCliente) REFERENCES Cliente(id),
);
ALTER TABLE OrdemServicos ADD CONSTRAINT FK_Servicos_mecanicos FOREIGN KEY (idmecanico) REFERENCES mecanicos(idmecanicos)

DELETE FROM OrdemServicos

select * from OrdemServicos 

CREATE TABLE Cliente (
    id INT IDENTITY(1,1) PRIMARY KEY,
    nome VARCHAR(100),
    telefone VARCHAR(100),
    email VARCHAR(100),    
    veiculo VARCHAR(100)   
);

INSERT INTO Cliente (nome, telefone, email, veiculo) values 
('Silverson', '(51)99888-2222', 'SilversonAuto@gmail.com', 'VW Gol 2018'),
('Marialves', '(51)99666-1111', 'MarialvesCarros@gmail.com', 'Honda Civic 2019');

select * from cliente
select * from Servicos 

CREATE TABLE Servicos (
    id INT PRIMARY KEY, 
    descricao VARCHAR(200) NOT NULL,
    valor DECIMAL(10,2) NOT NULL,
    CONSTRAINT FK_Servicos_OrdemServico FOREIGN KEY (id) REFERENCES OrdemServico(id)
    CONSTRAINT FK_Servicos_OrdemServico FOREIGN KEY (Mecanico) REFERENCES OrdemServico(Mecanico)
    CONSTRAINT FK_Servicos_Cliente FOREIGN KEY (veiculo) REFERENCES Cliente(veiculo)
);



