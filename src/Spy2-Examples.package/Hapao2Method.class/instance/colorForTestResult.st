accessing
colorForTestResult
	"Return a color depending on whether I passed or not"
	self didIPass ifTrue: [ ^ Color lightGreen ].
	self didIFail ifTrue: [ ^ Color lightYellow ].
	self didIError ifTrue: [ ^ Color lightRed ].
	^ Color white