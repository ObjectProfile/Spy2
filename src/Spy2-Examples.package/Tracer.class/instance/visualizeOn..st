visualization
visualizeOn: view
	| b lb |
	b := RTMondrian new.
	b view: view.
	b nodes: trace.
	b layout grid gapSize: 2.
	b normalizer 
		distinctColorUsing: #first.
	b build.
	
	lb := RTLegendBuilder new.
	lb view: view.
	lb addText: 'Each box is a message sent in the profiled application'.
	lb addText: 'a message name are indicates using the colors'.
	lb build