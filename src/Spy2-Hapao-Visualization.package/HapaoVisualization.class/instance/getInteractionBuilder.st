visualization
getInteractionBuilder
	| interactionBuilder |
	interactionBuilder := RTInteractionBuilder new.
	interactionBuilder menu
		item: 'inspect' action: [ :el | el model inspect ];
		item: 'browse' action: [ :m | m model browse ];
		item: 'Browse one test' action: [ :el | el model browseOneUnitTest ].
	interactionBuilder popup.
	^ interactionBuilder