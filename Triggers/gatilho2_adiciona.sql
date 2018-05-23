CREATE TRIGGER ParticipationScore
AFTER INSERT ON Execution
FOR EACH ROW
BEGIN
    UPDATE ParticipationDetails
    SET participationScore = participationScore
                            + (SELECT count(*) FROM ExerciseParameters
                            WHERE exercisePlanID = (SELECT participationScore FROM ParticipationDetails WHERE challengeID = NEW.challengeID AND userID = NEW.userID))
                            * (SELECT difficulty FROM ExercisePlan
                              WHERE exercisePlanID = (SELECT participationScore FROM ParticipationDetails WHERE challengeID = NEW.challengeID AND userID = NEW.userID))
    WHERE User.userID = NEW.userID;

    DROP VIEW IF EXISTS getPlanID;
END;
