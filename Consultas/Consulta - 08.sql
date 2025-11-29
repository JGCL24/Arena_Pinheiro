SELECT 
    C.Data AS Data_Compra,
    Cli.Nome AS Nome_Cliente,
    P.Valor AS Valor_Pago,
    P.Forma AS Forma_Pagamento
FROM 
    Pagamento P
INNER JOIN 
    Pag_Compra PC ON P.Id_Pagamento = PC.Id_Pagamento
INNER JOIN 
    Compra C ON PC.Id_Compra = C.Id_Compra
INNER JOIN 
    Cliente Cli ON C.CPF_Cliente = Cli.CPF
ORDER BY 
    P.Valor DESC;