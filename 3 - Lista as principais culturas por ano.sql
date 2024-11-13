SELECT
    TB_PRODUTO_id_produto AS "Product ID",
    SUM(nm_producao_mil_t) AS "Total Production (Mil Tons)"
FROM
    tb_serie_historica_graos_cap10
WHERE
    TB_ANO_AGR = '2023'
GROUP BY
    TB_PRODUTO_id_produto
ORDER BY
    SUM(nm_producao_mil_t) DESC
FETCH FIRST 5 ROWS ONLY;
