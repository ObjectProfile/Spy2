layout
borderColorForMethod: met
	met hasBeenExecuted ifTrue: [ ^ Smalltalk ui theme textColor ].
	met abstractMethod ifTrue: [ ^ Color blue ].
	met isTest ifTrue: [ ^ Color green ].
	^ Color red