visualization
visualizeOn: view
	| b |
	b := RTMondrian new.
	b view: view.
	b nodes: trace.
	b layout grid gapSize: 2.
	b normalizer 
		distinctColorUsing: #first.
	b build.