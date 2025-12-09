select * from Servico;

select DISTINCT nome
from Servico;

Delete from Servico
where id_servico = 1;

Delete from Profissional
where id_profissional = 2;

select * from Profissional;

update Profissional
    set nome = 'Marta'
    where id_profissional = 3;

select * from Profissional;

select * from Profissional
order BY nome;
