.mode       columns
.headers    on
.nullvalue  NULL

SELECT exerciseID, count(*)*numRepetitions*numSets as ExercisePopularity
FROM Execution
NATURAL JOIN Challenge
NATURAL JOIN ExercisePlan
NATURAL JOIN ExerciseParameters
JOIN Exercise USING(ExerciseID)
NATURAL JOIN CustomExercise
GROUP BY exerciseID
ORDER BY ExercisePopularity DESC
