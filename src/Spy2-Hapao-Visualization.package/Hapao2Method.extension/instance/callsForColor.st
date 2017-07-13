*Spy2-Hapao-Visualization
callsForColor
	| color |
	color := RTGrayLinearColor new command: #yourself; scope: {0 . 1 . self class maxCalls}.
	^ (color rtValue: calls).