SELECT 
    p.Nome AS produto,
    e.Quant_present AS Quantidade_Atual,
    p.preco AS preco_Unitario,
    (e.Quant_present * p.preco) AS Valor_Total_Estoque
FROM 
    Estoque e
INNER JOIN 
    produto p ON e.Id_produto = p.Id_produto
ORDER BY 
    Valor_Total_Estoque DESC;