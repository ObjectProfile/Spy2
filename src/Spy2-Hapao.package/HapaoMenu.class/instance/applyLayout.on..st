public
applyLayout: elements on: v
	layout := RSForceBasedLayout new.
	elements @ (RSDraggableForce new layout: layout).
	layout
		initialLayout: RSTreeLayout new;
		center: -100 @ -50;
		length: 150;
		nodes: elements;
		edges: v edges;
		start.
	v newAnimation repeat onStepDo: [ :t | layout step ]