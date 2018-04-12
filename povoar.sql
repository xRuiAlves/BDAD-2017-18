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

