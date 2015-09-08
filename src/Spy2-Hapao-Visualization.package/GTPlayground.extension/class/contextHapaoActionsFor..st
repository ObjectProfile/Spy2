*Spy2-Hapao-Visualization
contextHapaoActionsFor: aPlayground
	<playgroundContextMenu>
	
	^ Array with: (GLMGenericAction new
		action: [ :aPresentation | (Hapao2 profileString: aPresentation selectedText asString) inspect ];
		title: 'Hapao it!';
		yourself)