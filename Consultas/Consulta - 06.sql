SELECT 
    p.Nome AS Produto, 
    SUM(ic.Quantidade) AS Total_Vendido
FROM Item_Comanda ic
JOIN Produto p ON ic.Id_Produto = p.Id_Produto
GROUP BY p.Nome
ORDER BY Total_Vendido DESC
