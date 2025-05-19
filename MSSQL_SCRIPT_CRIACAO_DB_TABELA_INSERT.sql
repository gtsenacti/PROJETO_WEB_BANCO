-- Criação do banco de dados
IF NOT EXISTS (SELECT * FROM sys.databases WHERE name = 'ProdutosLoja')
BEGIN
    CREATE DATABASE ProdutosLoja;
END;
GO

USE ProdutosLoja;
GO

-- Criação da tabela
IF NOT EXISTS (SELECT * FROM sys.tables WHERE name = 'produtosValores')
BEGIN
    CREATE TABLE produtosValores (
        id INT IDENTITY(1,1) PRIMARY KEY,
        produto NVARCHAR(100) NOT NULL,
        preco DECIMAL(10, 2) NOT NULL
    );
END;
GO

-- Inserção de produtos
INSERT INTO produtosValores (produto, preco) VALUES
('Camisa Polo', 79.90),
('Calça Jeans', 129.99),
('Tênis Esportivo', 199.90),
('Jaqueta de Couro', 249.90),
('Sandália Feminina', 89.90);
GO