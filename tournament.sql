-- Table definitions for the tournament project.
--
-- Put your SQL 'create table' statements in this file; also 'create view'
-- statements if you choose to use it.
--
-- You can write comments in this file by starting them with two dashes, like
-- these lines here.

-- Drop the tournament database if one already exists.
-- Create and connect to the tournament database.
DROP DATABASE IF EXISTS tournament;
CREATE DATABASE tournament;
\c tournament

-- Create table for players who will play in the tournament.
CREATE TABLE player (
  id SERIAL PRIMARY KEY,
  name VARCHAR(100) NOT NULL
);

-- Create table to record winnners and losers of matches in the tournament.
CREATE TABLE match (
  id SERIAL PRIMARY KEY,
  winner INTEGER NOT NULL REFERENCES player(id),
  loser INTEGER NOT NULL REFERENCES player(id)
);

-- Create view with the player's ID, player's name, and number of wins.
CREATE VIEW v_wins as
SELECT player.id, player.name, COALESCE(COUNT(match.winner), 0) AS wins
FROM player
LEFT JOIN match on player.id = match.winner
GROUP BY player.id
ORDER BY wins DESC;