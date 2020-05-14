public
addTextLegend: canvas
	| text textPaint textAreaPaint |
	textPaint := self textPaint
		start: 0 @ -5;
		stop: 0 @ 5.
	textAreaPaint := (LinearGradientPaint fromArray:
		{(0 -> (Color black alpha: 0.8)).
	(1 -> Color transparent)})
		start: 0 @ -50;
		stop: 0 @ 50.
	text := RSMultilineLabelBuilder new.
	text labelShape
		fontSize: 15;
		bold;
		paint: textPaint.
	text := text shapeFor:
'Spy is a profiling 
framework for Pharo 
and VisualWorks.
Spy is useful to 
obtain information
when code is being
executed'.
	text
		padding: 10;
		paint: textAreaPaint;
		border:
			(RSBorder new
				width: 2;
				color: Color white).
	text position: 0 @ 0.
	canvas add: text.
	text newAnimation
		from: 180 @ -400;
		to: 180 @ -15;
		easing: RSEasing bounceOut;
		on: text shape set: #position: