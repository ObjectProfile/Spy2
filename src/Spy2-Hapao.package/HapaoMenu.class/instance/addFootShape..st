public
addFootShape: canvas
	| borderPaint foot |
	borderPaint := (LinearGradientPaint fromArray:
			{(0 -> Color transparent).
			(0.5 -> Color white).
			(1 -> Color transparent)})
		start: -500 @ 0;
		stop: 500 @ 0.
	foot := RSComposite new
		color: (Color black alpha: 0.4);
		border: (RSBorder new
			width: 2.5;
			paint: borderPaint);
		position: 0 @ 140;
		extent: 600 @ 100;
		yourself.
	canvas add: foot