--CRIANDO TABELA
CREATE TABLE serasa(
codigo INT PRIMARY KEY,
nome VARCHAR(50) NOT NULL,
depto INT(4) NOT NULL,
salario FLOAT
);

--Inserindo dados na tabela
INSERT INTO serasa(codigo, nome, depto, salario)
VALUES
(43500, 'Ana da Silva', 9411, 5200),
(43501, 'Vitoria Beatriz', 9411, 3400),
(43502, 'Pedro José', 9412, 2600),
(43503, 'Amary Manoel', 9412, 8400),
(43504, 'Carlos Silva', 9412, 5300),
(43505, 'Vitorio Cardoso', 9413, 2300),
(43506, 'Carlos Ives Souza', 9413, 3360),
(43507, 'Victor Silva', 9413, 4500),
(43508, 'Saulo Monteiro', 9413, 6800);

-- Altere o departamento de todos para 9414
UPDATE serasa
SET depto = 9414
WHERE depto IN (9411, 9412, 9413 );

-- Altere o departamento dos três primeiros registros para 9415
UPDATE serasa
SET depto = 9415
WHERE codigo IN (43500, 43501, 43502);

-- Altere o departamento de cada um para o valor original novamente
UPDATE serasa
SET depto = 9411
WHERE codigo IN (43500, 43501);

UPDATE serasa
SET depto = 9412
WHERE codigo IN (43502, 43503, 43504);

UPDATE serasa
SET depto = 9413
WHERE codigo IN (43505, 43506, 43507, 43508);

-- Realize um Select para todos os dados do Banco de Dados
SELECT * FROM serasa;

-- Realize um Select da coluna nome onde o salário for igual a R$ 6800,00
SELECT * FROM serasa
WHERE salario = 6800;

-- Realize um Select da coluna Codigo e nome onde o salário for igual a R$ 5200
SELECT nome, codigo FROM serasa
WHERE salario = 5200;

-- Realize um Select da coluna DEPTO onde o salário for maior que R$ 3000,00 e menor que R$ 5.500,00
SELECT depto FROM serasa
WHERE salario > 3000 or salario < 5500;

-- Realize um Select da coluna Codigo e DEPTO onde o salário estiver entre R$ 2600,00 e R$ 3380,00
SELECT depto, codigo FROM serasa
WHERE salario BETWEEN 2600 AND  3380;

-- Realize um Select da coluna nome onde o DEPTO for 9411 AND 9412      
SELECT nome FROM serasa
WHERE depto IN (9411, 9412);

-- Realize um Select de DEPTO, Salario e Nome onde o Código for 43500 OR 43502
SELECT depto, nome, salario FROM serasa 
WHERE codigo IN (43500, 43502);

-- Realize um Select SUM de todos os salários da tabela
SELECT SUM(salario) AS  soma_salario FROM serasa;



