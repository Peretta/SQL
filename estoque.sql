create database Estoque;

use estoque;

insert into usuarios(idusuarios, nome, datacadastro) VALUES
(2, 'Pedro', '2009-04-15'),
(3, 'João', '2011-03-18'),
(4, 'Jéssica', '2019-07-22'),
(5, 'Beatriz', '2021-01-11');

select * from usuarios;

insert into fornecedores(idfornecedores, nome, telefone) VALUES
(2, 'Bigsoft', '(12) 8888-8888'),
(3, 'BLA', '(13)7777-7777'),
(4, 'Positivo ', '(14)6666-6666'),
(5, 'LG', '(15)5555-5555'),
(6, 'NASA', '(16)44444-4444');

select * from fornecedores;

insert into produtos(id_produto, nome, preco, estoque, minestoque, id_fornecedor) VALUES
(1, 'Teclado Gamer XYZ', 200, 10, 5, 1),
(2, 'Mouse 9200dpi', 125.66, 36, 15, 2),
(3, 'Monitor 99\' ultrawide', 999, 14, 10, 3),
(4, 'Notebook 50gb ram', 9546, 7, 10, 4),
(5, 'Teclado Numérico  x', 37, 5, 5, 1),
(6, 'Cadeira Gamer BLA ', 864, 12, 10, 3),
(7, 'Monitor 55\' curvo ', 140, 33, 35, 5),
(8, 'PC da Nasa', 54536, 2, 1, 6),
(9, 'PC Ruim', 50, 75, 50, 6),
(10, 'Cubo Mágico 13 faces', 3, 324, 350, 6);

-- selecionando dados

select * from produtos; -- toda tabela
select nome from produtos; -- uma coluna
select nome, preco from produtos; -- duas ou mais colunas

-- filtrando dados

select nome, preco from produtos where id_fornecedor = 6;
select nome, preco from produtos where id_fornecedor = 5;
select * from usuarios WHERE nome = 'Pedro';


-- OPEDARORES: =, !=, >, >=, <, <=

select * from produtos where preco > 150;
select * from produtos where preco <= 140;
select * from produtos where estoque <= minestoque;

-- AND e OR

select * from produtos where preco = 140 and estoque = 33;
select * from produtos where preco = 140 or preco = 200;
    -- DICA: COLOQUE ENTRE PARENTESE O QUE DEVE SER PRIORIZADO
select * from produtos where preco > 140 and preco < 1000 and id_fornecedor = 6;
select * from produtos where (preco > 140 and preco < 1000) or id_fornecedor = 6;

-- WHERE LIKE

select * from usuarios where nome like "j%"; -- todos os usuarios que começam com J
select * from usuarios where nome like "%o"; -- todos os usuarios que terminam com O
select * from usuarios where nome like "%o%"; -- todos os usuarios tiverem O 
select * from produtos where nome like 'monitor%';

-- WHERE BETWEEN e IN
