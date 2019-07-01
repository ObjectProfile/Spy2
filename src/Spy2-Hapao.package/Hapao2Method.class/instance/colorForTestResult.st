accessing - computed
colorForTestResult
	"Return a color depending on whether I passed or not"
	self didIPass ifTrue: [ ^ Color green ].
	self didIFail ifTrue: [ ^ Color yellow ].
	self didIError ifTrue: [ ^ Color red ].
	^ Color transparent