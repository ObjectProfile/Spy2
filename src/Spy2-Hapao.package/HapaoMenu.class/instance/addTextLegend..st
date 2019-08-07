public
addTextLegend: v
	| text textPaint textAreaPaint |
	textPaint := self textPaint
		start: 0 @ -5;
		stop: 0 @ 5.
	textAreaPaint := (TSGradientPalette
		linearGradient:
		{(0 -> (Color black alpha: 0.8)).
	(1 -> Color transparent)})
		start: 0 @ -50;
		stop: 0 @ 50.
	text := RSShapeBuilder multiline
		fontSize: 15;
		bold;
		paint: textPaint;
		text:
			'Spy is a profiling 
framework for Pharo 
and VisualWorks.
Spy is useful to 
obtain information
when code is being
executed';
		element.
	text
		padding: 10;
		paint: textAreaPaint;
		border:
			(TSBorder new
				width: 2;
				color: Color white).
	text position: 0 @ 0.
	v add: text.
	text newAnimation
		from: 180 @ -400;
		to: 180 @ -15;
		easing: TSEasing bounceOut;
		on: text shape set: #position: