SELECT
    TB_PRODUTO_id_produto AS "Product ID",
    AVG(nm_produtividade_mil_ha_mil_t) AS "Average Productivity (Mil Tons per Hectare)"
FROM
    tb_serie_historica_graos_cap10
WHERE
    TB_UF_sigla_UF = 'SP'
GROUP BY
    TB_PRODUTO_id_produto
ORDER BY
    AVG(nm_produtividade_mil_ha_mil_t) DESC;
