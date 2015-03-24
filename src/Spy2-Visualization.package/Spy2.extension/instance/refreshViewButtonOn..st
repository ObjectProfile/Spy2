*Spy2-Visualization-Buttons
refreshViewButtonOn: view
	view addMenu: 'Refresh' callback: [ self refreshView: view ]