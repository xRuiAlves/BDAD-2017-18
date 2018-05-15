.mode       columns
.headers    on
.nullvalue  NULL

SELECT name
FROM DefaultExercise NATURAL JOIN Exercise
WHERE exerciseTypeID = (
  SELECT exerciseTypeID FROM ExerciseType WHERE name = 'Strength' -- MODIFY HERE THE TYPE YOU WANT TO KNOW THE EXERCISES OF
);
