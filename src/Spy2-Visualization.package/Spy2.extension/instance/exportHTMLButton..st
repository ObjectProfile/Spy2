*Spy2-Visualization-Buttons
exportHTMLButton: view
	view addMenu: 'export as HTML' callback: [ RTHTML5Exporter export: view ].