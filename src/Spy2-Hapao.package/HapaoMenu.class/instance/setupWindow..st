public
setupWindow: canvas
	| window |
	window := canvas open
		extent: 600 @ 400;
		setLabel: 'About Sp2';
		beUnresizeable.
	window center: window world clearArea center