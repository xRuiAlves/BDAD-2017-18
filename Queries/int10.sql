.mode       columns
.headers    on
.nullvalue  NULL

SELECT ExerciseID, difficulty FROM Exercise
WHERE difficulty >= 2 AND difficulty <= 4
ORDER BY difficulty ASC
