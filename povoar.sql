PRAGMA foreign_keys = on;

-- Users
INSERT INTO User VALUES (2034390363479219, 'reeckset', 0);
INSERT INTO User VALUES (2391887954170140, 'ruizadas', 0);
INSERT INTO User VALUES (1172259692795609, 'el_pistaccio', 0);
INSERT INTO User VALUES (1213126072166765, 'amy_pond', 0);
INSERT INTO User VALUES (1399959692665501, 'eXcolhe', 0);
INSERT INTO User VALUES (1000000000000001, 'random123', 0);
INSERT INTO User VALUES (1000000000000002, 'helloWorld', 0);
INSERT INTO User VALUES (1000000000000003, 'dataBasesAreCool', 0);
INSERT INTO User VALUES (1000000000000004, 'SQLemPapel', 0);
INSERT INTO User VALUES (1000000000000005, 'sim_nao_talvez', 0);

-- Week Days
INSERT INTO WeekDay VALUES (0, 'Sunday');
INSERT INTO WeekDay VALUES (1, 'Monday');
INSERT INTO WeekDay VALUES (2, 'Tuesday');
INSERT INTO WeekDay VALUES (3, 'Wednesday');
INSERT INTO WeekDay VALUES (4, 'Thursday');
INSERT INTO WeekDay VALUES (5, 'Friday');
INSERT INTO WeekDay VALUES (6, 'Saturday');

-- Exercise Types
INSERT INTO ExerciseType VALUES (0, 'Endurance');
INSERT INTO ExerciseType VALUES (1, 'Strength');
INSERT INTO ExerciseType VALUES (2, 'Balance');
INSERT INTO ExerciseType VALUES (3, 'Flexibity');

-- Exercises
INSERT INTO Exercise VALUES (0, 'Push Ups', null, 'Push Ups are good for you', null, 2, 1);
INSERT INTO Exercise VALUES (1, 'Pull Ups', null, 'Pull Ups are good for you', null, 4, 1);
INSERT INTO Exercise VALUES (2, 'Crunches', null, 'Crunches are good for you', null, 2, 0);
INSERT INTO Exercise VALUES (3, 'Jumps', null, 'Jumps are good for you', null, 1, 0);
INSERT INTO Exercise VALUES (4, 'Jump Rope', null, 'Jump Rope is good for you', null, 2, 0);
INSERT INTO Exercise VALUES (5, 'Touch Feet', null, 'Touching Feet is good for your flexibity', null, 3, 3);

-- Default Exercises
INSERT INTO DefaultExercise VALUES (0);
INSERT INTO DefaultExercise VALUES (1);
INSERT INTO DefaultExercise VALUES (2);
INSERT INTO DefaultExercise VALUES (3);
INSERT INTO DefaultExercise VALUES (4);

-- Custom Exercises
INSERT INTO CustomExercise VALUES (5, 1, 1172259692795609);

-- Exercise Plans
INSERT INTO ExercisePlan VALUES(0, 2, 2);
INSERT INTO ExercisePlan VALUES(1, 3, 3);
INSERT INTO ExercisePlan VALUES(2, 1, 1);
INSERT INTO ExercisePlan VALUES(3, 2, 2);

-- Default Exercise Plans
INSERT INTO DefaultPlan VALUES(0);
INSERT INTO DefaultPlan VALUES(2);

-- Custom Exercise Plans
INSERT INTO CustomPlan VALUES(1, '2018-01-01', 0, 1000000000000001);
INSERT INTO CustomPlan VALUES(3, null, 1, 1399959692665501);

-- Exercise Parameters
INSERT INTO ExerciseParameters VALUES(2, 3, 5, 2);
INSERT INTO ExerciseParameters VALUES(0, 3, 6, 3);
INSERT INTO ExerciseParameters VALUES(0, 1, 5, 1);
INSERT INTO ExerciseParameters VALUES(0, 0, 4, 3);
INSERT INTO ExerciseParameters VALUES(1, 4, 10, 2);
INSERT INTO ExerciseParameters VALUES(1, 0, 7, 2);
INSERT INTO ExerciseParameters VALUES(1, 1, 5, 3);
INSERT INTO ExerciseParameters VALUES(3, 0, 10, 3);
INSERT INTO ExerciseParameters VALUES(3, 1, 7, 3);
INSERT INTO ExerciseParameters VALUES(3, 2, 15, 4);
INSERT INTO ExerciseParameters VALUES(3, 3, 10, 4);
INSERT INTO ExerciseParameters VALUES(3, 4, 25, 4);
INSERT INTO ExerciseParameters VALUES(3, 5, 2, 1);

-- Challenges
INSERT INTO Challenge VALUES(0, '2018-01-10', '2018-03-10', 0, 0);
INSERT INTO Challenge VALUES(1, '2017-12-10', '2018-02-15', 3, 1);

-- Challenge Days
INSERT INTO ChallengeDay VALUES(0, 2);
INSERT INTO ChallengeDay VALUES(0, 4);
INSERT INTO ChallengeDay VALUES(1, 1);
INSERT INTO ChallengeDay VALUES(1, 3);
INSERT INTO ChallengeDay VALUES(1, 5);

-- Participation Details
INSERT INTO ParticipationDetails VALUES(2391887954170140, 1, 12, 8);
INSERT INTO ParticipationDetails VALUES(1213126072166765, 1, 24, 9);
INSERT INTO ParticipationDetails VALUES(2034390363479219, 0, 6, 8);
INSERT INTO ParticipationDetails VALUES(1172259692795609, 0, 6, 1);
INSERT INTO ParticipationDetails VALUES(1399959692665501, 0, 12, 5);

-- Executions
INSERT INTO Execution VALUES(0, '2017-12-12', 3, 1213126072166765, 1);
INSERT INTO Execution VALUES(1, '2018-01-01', 2, 1213126072166765, 1);
INSERT INTO Execution VALUES(2, '2017-12-16', 4, 2391887954170140, 1);
INSERT INTO Execution VALUES(3, '2018-01-19', 5, 2034390363479219, 0);
INSERT INTO Execution VALUES(4, '2018-01-23', 7, 1172259692795609, 0);
INSERT INTO Execution VALUES(5, '2018-02-11', 12, 1399959692665501, 0);
INSERT INTO Execution VALUES(6, '2018-02-13', 5, 1399959692665501, 0);




