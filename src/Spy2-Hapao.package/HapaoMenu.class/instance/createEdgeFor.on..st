public
createEdgeFor: elements on: v
	| markerPaint marker |
	markerPaint := (TSGradientPalette
		linearGradient:
		{(0 -> Color black).
	(0.5 -> (Color black alpha: 0.8)).
	(1 -> Color transparent)})
		start: 0 @ -10;
		stop: 0 @ 10.
	marker := (RSShapeBuilder triangle
		size: 20;
		paint: markerPaint;
		border: (TSBorder new color: Color white);
		element) shape asMarker offset: 10.
	v
		add:
			(RSSingleEdgeBuilder line
				withBorderAttachPoint;
				markerStart: marker;
				from: elements first;
				to: elements second;
				edge)