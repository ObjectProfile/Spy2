*Spy2-Visualization-Buttons
exportSVGButton: view
	view addMenu: 'export as SVG' callback: [ RTSVGExporter interactiveExportViewAsSVG: view ].