.mode       columns
.headers    on
.nullvalue  NULL

SELECT challengeID, nickname, max(participationScore)
FROM User NATURAL JOIN ParticipationDetails
GROUP BY challengeID;
