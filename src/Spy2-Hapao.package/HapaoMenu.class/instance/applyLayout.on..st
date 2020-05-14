public
applyLayout: shapes on: canvas
	layout := RSForceBasedLayout new.
	shapes @ (RSDraggableForce new layout: layout).
	layout
		initialLayout: RSTreeLayout new;
		center: -100 @ -50;
		length: 150;
		nodes: shapes;
		edges: canvas edges;
		start.
	canvas newAnimation repeat onStepDo: [ :t | layout step ]