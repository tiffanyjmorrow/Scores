
CREATE VIEW ScoreChange as
SELECT one.studentid, one.percentage AS p1, ff.percentage AS p2, (one.percentage - ff.percentage) AS score_change
FROM Scores..one as one
JOIN Scores..fourfive as ff
ON one.studentid = ff.studentid; 

Select studentid, score_change,
CASE
	WHEN score_change > 0 THEN 'Yea!'
	WHEN score_change < 0 THEN 'Oh no'
	ELSE 'even'
END AS 'overall'
from scorechange;


