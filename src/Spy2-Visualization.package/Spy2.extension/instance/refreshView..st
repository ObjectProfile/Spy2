*Spy2-Visualization-Buttons
refreshView: view
	view edges do: #remove.
	view elements do: #remove.
	^ self visualizeOn: view