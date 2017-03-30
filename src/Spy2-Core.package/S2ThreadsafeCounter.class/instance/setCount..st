accessing
setCount: anInteger
	mutex critical: [ count := anInteger ]