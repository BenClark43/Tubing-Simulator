extends CanvasLayer

var score = 0

func score_point():
	score += 1
	$Score.text = "Score " + str(score)
