public
setupWindow: v
	| window |
	window := v open
		extent: 600 @ 400;
		setLabel: 'About Sp2';
		beUnresizeable.
	window center: window world clearArea center