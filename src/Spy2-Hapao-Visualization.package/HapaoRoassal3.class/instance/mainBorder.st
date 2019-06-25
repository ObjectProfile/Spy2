accessing
mainBorder
	^ mainBorder ifNil: [ mainBorder := TSBorder new
		color: Smalltalk ui theme textColor ].