--Listar as tabelas no banco de dados
SELECT name
FROM sys.tables;

--Inserir Clientes
INSERT INTO Clientes (Nome, Email, Telefone) VALUES
('Cassia Silva', 'ana@email.com', '1199999-1111'),
('Judite Costa', 'judcosta@emai.com', '1199999-2222'),
('Carla Souza', 'carla@email.com', '1199999-3333');

--Conferir Clientes
SELECT * FROM Clientes;

--Inserir Produtos
INSERT INTO Produtos (Nome_do_Produto, Preco) VALUES
('Notebook', 3500.00),
('Mouse sem fio', 80.00),
('Teclado mec�nico', 250.00),
('Monitor 24 polegadas', 900.00),
('Headset Gamer', 300.00);

--Conferir Produtos
SELECT * FROM Produtos;

--Inserir Pedidos
--Certificando-se de que os clientes existem
INSERT INTO Pedidos (Data_do_Pedido, Valor_Total, ID_Cliente) VALUES
('2025-08-15', 3850.00, 1), --Cassie Silva
('2025-08-16', 1450.00, 2), --Judite Costa
('2025-08-17', 1600.00, 3); --Carla Souza

SELECT * FROM Pedidos;

--S� inserir para pedidos existentes
INSERT INTO Itens_Pedido (ID_Pedido, ID_Produto, Qualidade) VALUES
--Pedido 1
(1,1,1), --Notebook
(1,2,1), --Mouse
(1,3,1), --Teclado

--Pedido 2
(2,4,1), --Monitor
(2,5,1), --Headset

--Pedido 3
(3,1,1), --Notebook
(3,5,1); --Headset

--Conferir itens de pedidos
SELECT * FROM Itens_Pedido;