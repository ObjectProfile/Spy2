public
openAbout
	<script: 'self new openAbout'>
	| canvas spy2 hapao profilers progress shapes label textPaint border boxPaint link |
	canvas := RSCanvas new.
	canvas color: (Color colorFrom: '1F60E1').
	spy2 := {'Spy' . '2'}.
	hapao := {'Hapao'}.
	profilers := {spy2 -> 'Spy2'. hapao ->'Hapao'}.
	progress := self progressShape.
	textPaint := self textPaint
		start: 0 @  -10;
		stop: 0 @ 10.
	
	label := RSLabel new
		bold;
		paint: textPaint;
		fontSize: 20.
	border := RSBorder new color: Color white.
	boxPaint := (LinearGradientPaint fromArray:
			{(0 -> Color black).
			(1 -> Color transparent)})
		start: 0 @  -10;
		stop: 0 @ 10.
	link := 'https://github.com/ObjectProfile/'.
	
	shapes := profilers collect: [:m |
		| boxes mborder |
		boxes := m key collect: [ :val | 
			RSComposite new
				add: (label copy text: val);
				adjustToChildren;
				border: border;
				paint: boxPaint;
				padding: 5;
				yourself
			 ] as: RSGroup.
		RSHorizontalLineLayout new 
			gapSize: 20;
			on: boxes.
		mborder := RSBorder new 
			width:3;
			color: Color white;
			dashArray: #(4).
		canvas newAnimation repeat
			from:0;
			to: -8;
			on: mborder set: #dashOffset:.
		boxes add: (RSLine new
			withHorizontalAttachPoint;
			border: mborder;
			from: boxes first;
			to: boxes last;
			yourself). 
		
		
		RSComposite new
			@ progress;
			model: m;
			popupText: [ :mo | link, mo value ];
			when: RSMouseClick do: [ :evt | WebBrowser openOn: link, m value ];
			color: (Color black alpha: 0.4);
			shapes: boxes;
			padding: 10;
			yourself
		 ] as: RSGroup.
	self createEdgeFor: shapes on: canvas.
	canvas addAll: shapes.
	self applyLayout: shapes on: canvas.
	self addFootShape: canvas.
	self addTextLegend: canvas.
	self setupWindow: canvas