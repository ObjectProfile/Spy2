as yet unclassified
generatePackage: aPackage class: aClass on: aStream
	| methods |
	methods := aClass methods.
	aStream
		tab: 4;
		nextPutAll: '<class name="';
		nextPutAll: (self encode: aClass className);
		nextPutAll: '">';
		nextPut: Character lf.
	self
		generateType: 'method'
		indent: 5
		total: methods size
		actual: (methods count: #isCovered)
		on: aStream.
	
	methods do: [ :each | self generatePackage: each method: each on: aStream ].
	
	aStream
		tab: 4;
		nextPutAll: '</class>';
		nextPut: Character lf