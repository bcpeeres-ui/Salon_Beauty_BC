BEGIN TRANSACTION;

-------TABELA CLIENTE---------
Create table Cliente (
    id_cliente INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT(100) NOT NULL,
    telefone TEXT(15) UNIQUE,
    email TEXT(50) UNIQUE,
    data_cadastro DATETIME
);

--------TABELA PROFISSIONAL--------
Create table Profissional (
    id_profissional INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT(100) NOT NULL,
    cargo TEXT(30) NOT NULL,
    comissao DECIMAL NOT NULL
);

---------TABELA SERVICO---------------
Create table Servico (
    id_servico INTEGER PRIMARY KEY AUTOINCREMENT,
    nome_servico TEXT(100) UNIQUE NOT NULL,
    descricao TEXT(200),
    preco DECIMAL NOT NULL,
    duracao_minutos INT
);

--------TABELA AGENDAMENTO--------------
Create table Agendamento (
    id_agendamento INTEGER PRIMARY KEY AUTOINCREMENT,
    data_hora_inicio DATETIME,
    data_hora_fim DATETIME,
    status TEXT(15) NOT NULL,
    valor_final DECIMAL,
    ----FOREIGNS KAYS---------
    id_cliente INTEGER NOT NULL,
    id_profissional INTEGER NOT NULL,
    id_servico INTEGER NOT NULL,
    
    FOREIGN KEY (id_cliente) REFERENCES Cliente(id_cliente),
    FOREIGN KEY (id_profissional) REFERENCES Profissional(id_profissional),
    FOREIGN KEY (id_servico) REFERENCES Servico(id_servico)
);