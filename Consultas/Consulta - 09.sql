SELECT 
    C.Numero AS Numero_Campo,
    COUNT(R.Id_Reserva) AS Total_Confirmadas
FROM 
    Campo C
LEFT JOIN 
    Reserva R ON C.Id_Campo = R.Id_Campo AND R.Status = 'confirmada'
GROUP BY 
    C.Numero
ORDER BY 
    Total_Confirmadas DESC;