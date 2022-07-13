SELECT *
FROM Tokoyo_Olympics.medals

# Changing NOC column to Team
ALTER TABLE medals RENAME COLUMN NOC TO Team;
ALTER TABLE athletes RENAME COLUMN NOC TO Team;

---------------------------------------------------------------------------
# Determining which Country won the most golds

SELECT Team, Gold
FROM Tokoyo_Olympics.medals
order by Gold DESC
# Here we can see that the United States has the most gold medals with 39 


# Total Medals vs Golds

SELECT Team, Gold, Total, (Gold/Total)*100 AS GoldPercentage
FROM Tokoyo_Olympics.medals
ORDER BY GoldPercentage DESC



# Joining Olympics table to Medals table
SELECT *
FROM Tokoyo_Olympics.olympics

SELECT *
FROM Tokoyo_Olympics.medals
JOIN Tokoyo_Olympics.olympics ON medals.Team=olympics.Team;

# Total Athletes vs Total Medals
SELECT medals.Team, medals.Total, olympics.TotalAthletes, (medals.Total/olympics.TotalAthletes)*100 AS AthletePerMedal
FROM Tokoyo_Olympics.medals
JOIN Tokoyo_Olympics.olympics ON medals.Team=olympics.Team
ORDER BY AthletePerMedal DESC








---------------------------------------------------------------------------

