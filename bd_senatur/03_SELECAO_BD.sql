USE  Senatur_Manha;

-- Selects gerais de todas as tabelas:
SELECT * FROM Pacotes;
SELECT * FROM TiposUsuarios;
SELECT * FROM Usuarios;

-- trazer dados do usu�rio e o t�tulo do seu tipo de Usu�rio
SELECT U.id_Usuario, U.Email, U.fk_TipoUsuario, TU.Titulo FROM Usuarios U
INNER JOIN TiposUsuarios TU
ON U.fk_TipoUsuario = TU.id_TipoUsuario;
GO

-- buscar um usu�rio por email e senha  
SELECT U.id_Usuario, U.Email, U.fk_TipoUsuario, TU.Titulo FROM Usuarios U
INNER JOIN TiposUsuarios TU
ON U.fk_TipoUsuario = TU.id_TipoUsuario
WHERE Email = 'admin@admin.com' AND Senha = 'admin';
GO

-- Listar todos os pacotes
SELECT * FROM Pacotes;

-- seleceionar um pacote atrav�s do seu ID
SELECT * FROM Pacotes
WHERE id_Pacote = 1;

-- Listar somente pacotes ATIVOS
SELECT * FROM Pacotes
WHERE Ativo = 1;

-- Listar somente pacotes INATIVOS
SELECT * FROM Pacotes
WHERE Ativo = 2;

-- Listar pacotes somentes de uma determinada Cidade
SELECT * FROM Pacotes
WHERE NomeCidade = 'S�o Paulo';

-- Listar pacotes com ordena��o DECRESCENTE atrav�s do pre�o
SELECT * FROM Pacotes
ORDER BY Valor desc;

-- Listar pacotes com ordena��o CRESCENTE atrav�s do pre�o
SELECT * FROM Pacotes
ORDER BY Valor DESC;