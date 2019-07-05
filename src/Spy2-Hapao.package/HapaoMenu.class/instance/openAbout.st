public
openAbout
	<script: 'self new openAbout'>
	| v spy2 hapao profilers progress shape elements box textPaint border boxPaint link |
	v := RSView new.
	v color: (Color colorFrom: '1F60E1').
	spy2 := {'Spy' . '2'}.
	hapao := {'Hapao'}.
	profilers := {spy2 -> 'Spy2'. hapao ->'Hapao'}.
	progress := self progressShape.
	textPaint := self textPaint
		start: 0 @  -10;
		stop: 0 @ 10.
	box := RSShapeBuilder multiline
		bold;
		paint: textPaint;
		fontSize: 20.
	border := TSBorder new color: Color white.
	boxPaint := (TSGradientPalette
		linearGradient:
			{(0 -> Color black).
			(1 -> Color transparent)})
		start: 0 @  -10;
		stop: 0 @ 10.
	link := 'https://github.com/ObjectProfile/'.
	shape := RSShapeBuilder composite
		allowRepeatCommands;
		addInteraction: progress;
		interactionDo: [ :i | i popupText: [ :m | link, m value ]; draggable ];
		when: TSMouseClick do: [ :m | [ WebBrowser openOn: link, m value ] ];
		onElement;
		when: TSMouseDragging do: [ :e | [:evt | 
			layout fix: e at: evt position - (e extent / 2) ] ];
		when: TSMouseDragEnd do: [ :e | [ :evt |layout removeFix: e ] ];
		onModel;
		color: (Color black alpha: 0.4);
		shapes: [ :m | 
			| boxes mborder |
			boxes := box elementsOn: m key.
			boxes do: [ :b | 
				b
					border: border;
					paint: boxPaint;
					padding: 5 ].
			RSHorizontalLineLayout new 
				gapSize: 20;
				on: boxes.
			mborder := TSBorder new 
				width:3;
				color: Color white;
				dashArray: #(4).
			v newAnimation repeat
				from:0;
				to: -8;
				on: mborder set: #dashOffset:.
			boxes add: (RSSingleEdgeBuilder line
				withHorizontalAttachPoint;
				border: mborder;
				from: boxes first;
				to: boxes last;
				edge). 
			boxes ];
		padding: 10.
	elements := shape elementsOn: profilers.
	self createEdgeFor: elements on: v.
	v addAll: elements.
	self applyLayout: elements on: v.
	self addFootShape: v.
	self addTextLegend: v.
	self setupWindow: v