------ INSERT-------
INSERT INTO Cliente(nome, telefone, email, data_cadastro)
VALUES
('ANA CAROLINA', '6999999-9999', 'NOMESOBRENOME@gmail.com', '00/00/0000');

select * from Cliente;

--------SERVICO----------
INSERT INTO Servico(nome_servico, descricao, preco, duracao_minutos)
VALUES
('ESCOVA', 'MODELAGEM', '60', '30MIN'),
('HIDRATAÇÃO', 'CABELOS SEDOZOS', '60', '30MIN');

select * from Servico;

--------PROFISSIONAL---------
INSERT INTO Profissional(nome, cargo, comissao)
VALUES
('Marcos Costa', 'Cabelereiro', '75%'),
('Marcos Costa', 'Cabelereiro', '75%'),
('Maria Rosa', 'manicure', '70%');

select * from Profissional;

---------Agendamento------------
INSERT INTO Agendamento(data_hora_inicio, data_hora_fim, status, valor_final, id_cliente, id_profissional, id_servico)
VALUES
('15:00 2025-11-25', '16:00 2025-11-25', 'Em andamento', '300', 1, 1, 1);

select * from Agendamento;


