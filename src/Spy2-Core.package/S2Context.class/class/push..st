adding
push: anSpyFrame

	anSpyFrame sender: self value.
	self value: anSpyFrame.
	^ anSpyFrame