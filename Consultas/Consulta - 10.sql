SELECT 
    m.Tipo AS Tipo_Movimento,
    SUM(m.Quantidade) AS Total_Itens
FROM Movimenta m
WHERE m.Data BETWEEN '2024-01-01' AND '2024-03-31' 
GROUP BY m.Tipo;
