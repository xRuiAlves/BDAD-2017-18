.mode       columns
.headers    on
.nullvalue  NULL

CREATE VIEW [getExerciseTypeFrequency]
AS SELECT exerciseTypeID, count(*) as ExerciseTypeFrequency
  FROM Execution
  NATURAL JOIN Challenge
  NATURAL JOIN ExerciseParameters
  JOIN Exercise USING(ExerciseID)
  WHERE userID = 1000000000000009
  GROUP BY exerciseTypeID;

--QUERY ITSELF
SELECT * FROM
    (SELECT exerciseID, ExerciseTypeID, count(*)*numRepetitions*numSets as ExerciseFrequency
    FROM Execution
    NATURAL JOIN Challenge
    NATURAL JOIN ExercisePlan
    NATURAL JOIN ExerciseParameters
    JOIN Exercise USING(ExerciseID)
    WHERE userID = 1000000000000009
    GROUP BY exerciseID)

NATURAL JOIN

    [getExerciseTypeFrequency]

UNION

SELECT exerciseID, exerciseTypeID, 0, exerciseTypeID FROM
(Exercise NATURAL JOIN [getExerciseTypeFrequency])

ORDER BY ExerciseFrequency DESC, ExerciseTypeFrequency DESC;
