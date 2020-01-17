layout
basicMethodShape
	^ basicMethodShape ifNil: [ 
		basicMethodShape := RSBox new
			popup;
			addInteraction: self highlightInteraction;
			when: RSMouseClick do: [ :evt | evt shape model compiledMethod browse ];
			yourself ].