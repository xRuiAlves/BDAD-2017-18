.mode       columns
.headers    on
.nullvalue  NULL

SELECT planCreator, (nCustoms*100)/nExercises
FROM
  (SELECT planCreator, count(*) as nCustoms
    FROM (SELECT creator as planCreator, exercisePlanID FROM CustomPlan) NATURAL JOIN ExerciseParameters NATURAL JOIN CustomExercise
    GROUP BY planCreator)
  NATURAL JOIN
  (SELECT planCreator, count(*) as nExercises
    FROM (SELECT creator as planCreator, exercisePlanID FROM CustomPlan) NATURAL JOIN ExerciseParameters
    WHERE planCreator = '1399959692665501');
