as yet unclassified
generatePackage: aPackage on: aStream
	| classes methods |
	classes := aPackage classes.
	methods := aPackage allMethods.
	aStream tab: 3; nextPutAll: '<package name="'; 
		nextPutAll: (self encode: (aPackage packageName copyReplaceAll: '-' with: '.')); nextPutAll: '">'; nextPut: Character lf.
	self
		generateType: 'class' indent: 4
		total: classes size
		actual: (classes count: #isPartiallyCovered)
		on: aStream.
	self
		generateType: 'method' indent: 4
		total: methods size
		actual: (methods count: #isCovered)
		on: aStream.
		
	aPackage classes
		do: [ :class | self generatePackage: aPackage classAndMetaclass: class on: aStream ].
		
	aStream tab: 3; nextPutAll: '</package>'; nextPut: Character lf