-- DML 
 USE   Senatur_Manha;

INSERT INTO Pacotes (NomePacote, Descricao, DataIda, DataVolta, Valor, Ativo, NomeCidade)
VALUES ('SALVADOR-5 DIAS/4 DI�RIAS', 'O que n�o falta em Salvador s�o atra��es. Prova disso s�o as praias, os museus e as constru��es seculares que d�o um charme mais que especial � regi�o. A cidade, sin�nimo de alegria, tamb�m � conhecida pela efervesc�ncia cultural que a credenciou como um dos destinos mais procurados por turistas brasileiros e estrangeiros. O Pelourinho e o Elevador s�o alguns dos principais pontos de visita��o', '2020-08-06', '2020-08-10', 854, 1,'Salvador'),
('RESORTS NA BAHIA-LITORAL NORTE-5 DIAS/4 DI�RIAS', 'O Litoral Norte da Bahia conta com in�meras praias emolduradas por coqueiros, al�m de piscinas naturais de �guas mornas que s�o protegidas por recifes e habitadas por peixes coloridos. Banhos de mar em �guas calmas ou agitadas, mergulho com snorkel, caminhada pela orla e cal�ad�es, passeios de bicicleta, pontos tur�sticos hist�ricos, intera��o com animais e at� baladas est�o entre as atra��es da regi�o. Destacam-se as praias de Guarajuba, Imbassa�, Praia do Forte e Costa do Sauipe','2020-05-14','2020-05-18',1826,1,'Salvador'),
('BONITO VIA CAMPO GRANDE-1 PASSEIO-5 DIAS/4 DI�RIAS', 'O Litoral Norte da Bahia conta com in�meras praias emolduradas por coqueiros, al�m de piscinas naturais de �guas mornas que s�o protegidas por recifes e habitadas por peixes coloridos. Banhos de mar em �guas calmas ou agitadas, mergulho com snorkel, caminhada pela orla e cal�ad�es, passeios de bicicleta, pontos tur�sticos hist�ricos, intera��o com animais e at� baladas est�o entre as atra��es da regi�o. Destacam-se as praias de Guarajuba, Imbassa�, Praia do Forte e Costa do Sauipe.','2020-03-28', '2020-04-01', 1004.00, 1,'Bonito');

INSERT INTO TiposUsuarios (Titulo)
VALUES ('Administrador'), ('Cliente');

INSERT INTO Usuarios(Email, Senha, fk_TipoUsuario)
VALUES ('admin@admin.com', 'admin',1), ('cliente@cliente.com','cliente',2);