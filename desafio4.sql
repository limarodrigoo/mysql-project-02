SELECT u.user_name as usuario, (IF( YEAR(MAX(h.date)) > 2020 , 'Usuário ativo', 'Usuário inativo')) as condicao_usuario 
FROM SpotifyClone.user AS u
INNER JOIN SpotifyClone.history as h
ON u.user_id = h.user_id
GROUP BY u.user_id
ORDER BY u.user_name;