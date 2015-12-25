visualization
visualizeOn: view
	| c |
	c := RTComposer new.
	c gap: 35.
	c view: view.
	depFrames do: [ :f | 
		f visualizeOn: view.
		c group: f hash asString.
	].
	c layout: RTCellLayout new.
	^ view
