SELECT 
    c.Nome AS Nome_Cliente, 
    co.Data AS Data_Transacao, 
    p.Nome AS Produto_Comprado, 
    co.Id_Comanda, 
    pag.Forma AS Forma_Pagamento 
FROM 
    Cliente c 
INNER JOIN 
    Comanda co ON c.CPF = co.CPF_Cliente 
INNER JOIN 
    Item_Comanda ic ON co.Id_Comanda = ic.Id_Comanda 
INNER JOIN 
    Produto p ON ic.Id_Produto = p.Id_Produto 
INNER JOIN 
    Pag_Comanda pc ON co.Id_Comanda = pc.Id_Comanda 
INNER JOIN 
    Pagamento pag ON pc.Id_Pagamento = pag.Id_Pagamento;