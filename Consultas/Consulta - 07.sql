 7
SELECT 
    c.Data, 
    SUM(ic.Quantidade * ic.Preco_Unitario) AS Receita_Do_Dia
FROM Comanda c
JOIN Item_Comanda ic ON c.Id_Comanda = ic.Id_Comanda
WHERE c.Status = 'paga'
GROUP BY c.Data
ORDER BY c.Data DESC;
