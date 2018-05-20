CREATE TRIGGER UserScore
AFTER INSERT ON ParticipationDetails
FOR EACH ROW
BEGIN
    UPDATE User
    SET userScore = userScore + NEW.participationScore
    WHERE User.userID = NEW.userID;
END;
