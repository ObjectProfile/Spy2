plugins
plugins: keyword

	^ (self collectPragmas: keyword) 
		collect: [ :prg |
			prg method valueWithReceiver: self arguments: #() ]