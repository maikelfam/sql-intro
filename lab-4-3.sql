-- Who hit the most home runs in 2019, and what team did he play for?

-- Expected result:
--
-- +---------------+------------+-----------+-----------+
-- | New York Mets | Pete       | Alonso    | 53        |
-- +---------------+------------+-----------+-----------+

SELECT teams.name, players.first_name, players.last_name, stats.home_runs
FROM stats INNER JOIN teams on teams.id = stats.team_id
INNER JOIN players on players.id = stats.player_id
WHERE teams.year = 2019
ORDER BY stats.home_runs DESC
Limit 1;
