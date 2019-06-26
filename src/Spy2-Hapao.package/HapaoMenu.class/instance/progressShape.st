public
progressShape
	| progress progressPaint |
	progress := RSLabeled new.
	progressPaint := (TSGradientPalette
		linearGradient:
			{(0 -> Color red).
			(0.5 -> Color orange).
			(1 -> Color green)})
		start:  -25 @ 0;
		stop: 25 @ 0.
	progress shape: (RSShapeBuilder box
		paint: progressPaint;
		cornerRadius: 2.5;
		extent: 50 @ 5).
				
	^ progress