public
addFootShape: v
	| borderPaint foot |
	borderPaint := (TSGradientPalette
		linearGradient:
			{(0 -> Color transparent).
			(0.5 -> Color white).
			(1 -> Color transparent)})
		start: -500 @ 0;
		stop: 500 @ 0.
	foot := RSShapeBuilder composite
		color: (Color black alpha: 0.4);
		border:
			(TSBorder new
				width: 2.5;
				paint: borderPaint);
		position: 0 @ 140;
		extent: 600 @ 100;
		element.
	v add: foot