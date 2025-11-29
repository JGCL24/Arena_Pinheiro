SELECT 
    p.Id_Produto,
    p.Nome AS Produto_Sem_Venda
FROM Produto p
LEFT JOIN Item_Comanda ic ON p.Id_Produto = ic.Id_Produto
WHERE ic.Id_Produto IS NULL;
