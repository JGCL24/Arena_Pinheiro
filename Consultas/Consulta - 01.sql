SELECT 
    f.Id_Usuario AS Cod_funcionario,
    u_func.Nome AS Nome_funcionario,
    f.Id_Admin_Cadastrou AS Cod_Admin_Responsavel,
    u_Admin.Nome AS Nome_Admin_Responsavel
fROM 
    funcionario f
INNER JOIN 
    Usuario u_func ON f.Id_Usuario = u_func.Id_Usuario
INNER JOIN 
    Usuario u_Admin ON f.Id_Admin_Cadastrou = u_Admin.Id_Usuario
ORDER BY 
    f.Id_Usuario ASC;