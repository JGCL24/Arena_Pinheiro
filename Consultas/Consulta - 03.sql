SELECT 
    R.Data AS Data_Reserva,
    Cli.Nome AS Nome_Cliente,
    Cp.Numero AS Numero_Campo,
    R.Quant_Horas,
    U_Resp.Nome AS Responsavel_Cadastro
FROM 
    Reserva R
INNER JOIN 
    Cliente Cli ON R.CPF_Cliente = Cli.CPF
INNER JOIN 
    Campo Cp ON R.Id_Campo = Cp.Id_Campo
INNER JOIN 
    Usuario U_Resp ON R.Id_Usuario_Cadastrou = U_Resp.Id_Usuario
WHERE 
    R.Status = 'confirmada';