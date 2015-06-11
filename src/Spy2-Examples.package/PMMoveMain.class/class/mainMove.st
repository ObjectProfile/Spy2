as yet unclassified
mainMove
	"Kind of hack :-("
	MainMove ifNil: [ MainMove := self new ].
	^ MainMove