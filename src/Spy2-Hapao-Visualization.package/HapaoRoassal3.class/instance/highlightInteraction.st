initialization
highlightInteraction
	| int |
	int := RSHighlightable new.
	int setupAntAnimation.
	int highlightShape
		uniqueCommands;
		onElement;
		border: [ :e | TSBorder new width: 2; color: e border color ].
	^ int 