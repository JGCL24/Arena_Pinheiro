SELECT 
    C.Id_Comanda,
    C.Data,
    P.Nome AS Nome_Produto,
    IC.Quantidade,
    U_Func.Nome AS Nome_Garcom
FROM 
    Item_Comanda IC
INNER JOIN 
    Produto P ON IC.Id_Produto = P.Id_Produto
INNER JOIN 
    Comanda C ON IC.Id_Comanda = C.Id_Comanda
INNER JOIN 
    Funcionario F ON C.Id_Funcionario = F.Id_Usuario
INNER JOIN 
    Usuario U_Func ON F.Id_Usuario = U_Func.Id_Usuario
ORDER BY 
    C.Data DESC;