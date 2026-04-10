-- 📊 CONSULTAS ÚTEIS DO SISTEMA

-- 🔎 Listar todos os departamentos
SELECT * FROM departamento;

-- 💰 Departamentos com orçamento alto
SELECT nome, orcamento
FROM departamento
WHERE orcamento > 300000;

-- 🏢 Listar depósitos com cidade
SELECT d.nome AS deposito, e.cidade
FROM deposito d
JOIN endereco e ON d.endereco_id = e.id_endereco;

-- 📦 Listar fornecedores com endereço
SELECT f.razao_social, e.cidade, e.estado
FROM fornecedor f
JOIN endereco e ON f.endereco_id = e.id_endereco;

-- 📈 Contar quantos departamentos existem
SELECT COUNT(*) AS total_departamentos FROM departamento;

-- 📍 Listar endereços por cidade
SELECT cidade, COUNT(*) AS quantidade
FROM endereco
GROUP BY cidade;
