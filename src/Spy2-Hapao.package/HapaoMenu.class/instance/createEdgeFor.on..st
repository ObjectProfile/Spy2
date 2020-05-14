public
createEdgeFor: shapes on: canvas
	| markerPaint marker |
	markerPaint := (LinearGradientPaint fromArray:
		{(0 -> Color black).
	(0.5 -> (Color black alpha: 0.8)).
	(1 -> Color transparent)})
		start: 0 @ -10;
		stop: 0 @ 10.
	marker := (RSShapeFactory triangle
		size: 20;
		paint: markerPaint;
		border: (RSBorder new color: Color white)) asMarker offset: 10.
	canvas add: (RSLine new
		withBorderAttachPoint;
		markerStart: marker;
		from: shapes first;
		to: shapes second;
		yourself)