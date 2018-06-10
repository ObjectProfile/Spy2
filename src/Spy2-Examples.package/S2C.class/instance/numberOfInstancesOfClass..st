metrics
numberOfInstancesOfClass: aClass
	"Return the number of instances of the provided class"
	counting associations do: [ :assoc | assoc key == aClass ifTrue: [ ^ assoc value ] ].
	^ 0