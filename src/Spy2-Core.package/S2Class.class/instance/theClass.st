accessing
theClass
	"Return the Pharo class behind the class spy"
	^ self isMeta
		ifTrue: [ (Smalltalk at: self nonMetaClassName) class ]
		ifFalse: [ Smalltalk at: self className ]