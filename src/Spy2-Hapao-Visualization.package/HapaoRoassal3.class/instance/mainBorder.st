accessing
mainBorder
	^ mainBorder ifNil: [ mainBorder := RSBorder new
		color: Smalltalk ui theme textColor ].