util
createNewDepFrame
	| f |
	f := ClassDepFrame new.
	depFrames add: f.
	f index: depFrames size