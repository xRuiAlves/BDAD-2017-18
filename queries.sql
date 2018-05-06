-- QUERY 1
SELECT * FROM
  (SELECT userID, nickname, userScore, COUNT(*) as nChallenges, startTime, endTime
  FROM User NATURAL JOIN ParticipationDetails NATURAL JOIN Challenge
  WHERE startTime <= '2018-06-11' AND endTime >= '2018-03-11' -- MODIFY HERE THE DATE WHERE YOU WANT THE ACTIVE CHALLENGES
  GROUP BY userID)
WHERE nChallenges > 0
ORDER BY nChallenges DESC;

-- QUERY 2
SELECT challengeID, participationScore, startTime, endTime, isPublic, nParticipants
FROM User NATURAL JOIN Challenge NATURAL JOIN
      (SELECT *, count(*) as nParticipants
      FROM ParticipationDetails
      GROUP BY challengeID
      )
WHERE userID = '4400230660011923'; -- MODIFY HERE THE ID FOR THE USER YOU WANT TO KNOW THE CHALLENGES OF

-- QUERY 3
SELECT name FROM ExerciseType;

-- QUERY 4
SELECT name
FROM DefaultExercise NATURAL JOIN Exercise
WHERE exerciseTypeID = (
  SELECT exerciseTypeID FROM ExerciseType WHERE name = 'Strength' -- MODIFY HERE THE TYPE YOU WANT TO KNOW THE EXERCISES OF
);

-- QUERY 5
SELECT userID, nickname, userScore, COUNT(*) as nChallenges
FROM User NATURAL JOIN ParticipationDetails
GROUP BY userID
ORDER BY userScore DESC, nChallenges DESC
LIMIT 3;

-- QUERY 6
SELECT challengeID, nickname, max(participationScore)
FROM User NATURAL JOIN ParticipationDetails
GROUP BY challengeID;

-- QUERY 7
SELECT challengeID, avg(finalPlanRating) as Rating, count(*) as nVotes
FROM Challenge NATURAL JOIN ParticipationDetails
GROUP BY challengeID
ORDER BY Rating DESC, nVotes DESC;
