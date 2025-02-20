--Banco Utilizado para os desafios "PGAdmin"


------------------------------Desafio 1------------------------------

-- Criar Tabela Clientes
CREATE TABLE Clientes (
    IDCliente INT PRIMARY KEY,
    Nome VARCHAR(255) NOT NULL,
    Email VARCHAR(255) UNIQUE
);

-- Criar Tabela Pedidos
CREATE TABLE Pedidos (
    IDPedido INT PRIMARY KEY,
    IDCliente INT,
    DataPedido DATE NOT NULL,
    ValorTotal DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (IDCliente) REFERENCES Clientes(IDCliente) ON DELETE CASCADE
);

-- Criar Tabela ItensPedido
CREATE TABLE ItensPedido (
    IDItem INT PRIMARY KEY,
    IDPedido INT,
    Produto VARCHAR(255) NOT NULL,
    Quantidade INT NOT NULL,
    PrecoUnitario DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (IDPedido) REFERENCES Pedidos(IDPedido)
);


-- Inserir dados na tabela Clientes
INSERT INTO Clientes (IDCliente, Nome, Email) 
VALUES (1, 'Bruno Aquino', 'bruno.aquino@gmail.com'),
       (2, 'Maria Souza', 'maria.souza@gmail.com'),
       (3, 'Pedro Alves', 'pedro.alves@gmail.com'),
	   (4, 'João Silva', 'joao.silva@gmail.com');

-- Inserir dados na tabela Pedidos
INSERT INTO Pedidos (IDPedido, IDCliente, DataPedido, ValorTotal) 
VALUES (100, 1, '10/02/2025', 300.00),
       (101, 4, '12/01/2025', 150.00),
	   (102, 2, '16/02/2025', 200.00),
       (103, 1, '02/02/2025', 75.00),
       (104, 3, '18/01/2025', 300.00);

-- Inserir dados na tabela ItensPedido
INSERT INTO ItensPedido (IDItem, IDPedido, Produto, Quantidade, PrecoUnitario) 
VALUES (1000, 100, 'Cueca', 3, 15.00),
	   (1001, 101, 'Camiseta', 2, 50.00),
	   (1002, 101, 'Calça Jeans', 1, 100.00),
	   (1003, 102, 'Tênis', 1, 150.00),
	   (1004, 102, 'Meias', 2, 25.00),
	   (1005, 103, 'Boné', 1, 75.00),
	   (1006, 104, 'Jaqueta', 1, 200.00),
	   (1007, 104, 'Luvas', 1, 100.00);


------------------------------Desafio 2------------------------------

-- Exibir resultados
SELECT c.Nome AS NomeCliente,
       p.DataPedido,
       p.ValorTotal,
      (SELECT SUM(ValorTotal)
         FROM Pedidos
        WHERE IDCliente = c.IDCliente 
		  AND DataPedido <= p.DataPedido) AS TotalAcumulado
  FROM Clientes c JOIN Pedidos p ON c.IDCliente = p.IDCliente
 ORDER BY c.Nome, 
          p.DataPedido;

------------------------------Desafio 3------------------------------

-- Criar a procedure
CREATE OR REPLACE PROCEDURE ExcluirLancamentosPedido(pedido_id INTEGER)
LANGUAGE plpgsql
AS $$
BEGIN
     -- Exclui os itens do pedido
     DELETE FROM ItensPedido WHERE IDPedido = pedido_id;

     -- Exclui o pedido 
     DELETE FROM Pedidos WHERE IDPedido = pedido_id;

     -- Retorna uma mensagem de sucesso
     RAISE NOTICE 'Lançamentos removidos com sucesso';
END;
$$;

-- Executar a stored procedure:
CALL ExcluirLancamentosPedido(101);

------------------------------Desafio 4------------------------------

-- Criar a function
CREATE OR REPLACE FUNCTION fn_PedidosCliente(cliente_id INTEGER)
RETURNS TABLE (
    IDPedido INTEGER,
    DataPedido DATE,
    Produto VARCHAR(255),
    Quantidade INTEGER,
    PrecoUnitario DECIMAL(10, 2),
    Subtotal DECIMAL(10, 2)
)
LANGUAGE plpgsql
AS $$
BEGIN
    RETURN QUERY
    SELECT P.IDPedido,
           P.DataPedido,
		   IP.Produto,
           IP.Quantidade,
           IP.PrecoUnitario,
           (IP.Quantidade * IP.PrecoUnitario) AS Subtotal
      FROM Pedidos P JOIN ItensPedido IP ON P.IDPedido = IP.IDPedido
     WHERE P.IDCliente = cliente_id;
END;
$$;


-- Executar a function:
SELECT * FROM fn_PedidosCliente(1);