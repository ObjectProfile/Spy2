as yet unclassified
goBackFor: anObject
	| t |
	t := playBackIndex - 1.
	[ (messages at: t) object ~~ anObject ] whileTrue: [ t := t - 1.
	t == -1 ifTrue: [ self error: 'No more history' ] ].

	(messages at: t) object becomeForward: (messages at: t) objectCopy