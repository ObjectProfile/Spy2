specific api
methods: methodCollection classes: classCollection packages: pacakgeCollection
	self assert: [ methods isNil and: [ classes isNil and: [ packages isNil]] ] description: 'These are final variables, should not change to prevent erratic behavior.'.
	methods := methodCollection collect: #asSpyRingDefinition.
	classes := (classCollection collect: #theNonMetaClass) asSet collect: #asSpyRingDefinition.
	packages := pacakgeCollection asSet collect: #asSpyRingDefinition.