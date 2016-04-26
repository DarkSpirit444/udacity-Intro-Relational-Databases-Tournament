-- Table definitions for the tournament project.
--
-- Put your SQL 'create table' statements in this file; also 'create view'
-- statements if you choose to use it.
--
-- You can write comments in this file by starting them with two dashes, like
-- these lines here.

\connect vagrant;
DROP DATABASE IF EXISTS tournament;

CREATE DATABASE tournament;
\connect tournament;

CREATE TABLE Players (Id SERIAl PRIMARY KEY, Name TEXT);
CREATE TABLE Matches(Id SERIAL PRIMARY KEY, Winner INTEGER REFERENCES Players(Id), Loser INTEGER REFERENCES Players(Id));
