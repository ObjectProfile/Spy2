algorithm
sim: cm withClass: aClass
	"Note, we are not considering here class methods"
	| sim |
	sim := 0.
	aClass methods do: [ :cm2|
		cm ~~ cm2
			ifTrue: [ sim := sim + (cm simWith: cm2) ] ].
	^ sim / aClass methods size