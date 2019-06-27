public
applyLayout: elements on: v
	layout := RSForceBasedLayout new
		initialLayout: RSTreeLayout new;
		gravityAt: -100 @ -50;
		length: 150;
		nodes: elements;
		edges: v edges;
		start: elements;
		yourself.
	v animation repeat onStepDo: [ :t | layout step ]