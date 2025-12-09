------Agendamento+ cliente+ profissional+ servico-----------

Select
    a.status,
    a.data_hora_inicio AS data_aagendamento,
    c.id_cliente,
    c.nome AS nome_cliente,
    c.telefone,
    c.email,
    p.nome AS nome_profissional,
    p.cargo,
    ser.nome_servico,
    ser.preco
FROM agendamento a   ----tabela principal
JOIN cliente c
    ON c.id_cliente = a.id_cliente   -----JOIN: agendamento+cliente 
JOIN servico ser
    ON ser.id_servico = a.id_servico   -----JOIN servico+agendamento
JOIN profissional p
    ON p.id_profissional = a.id_profissional; -----JOIN profissional+agendamento