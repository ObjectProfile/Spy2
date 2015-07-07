as yet unclassified
generatePackage: aPackage classAndMetaclass: aClass on: aStream
	aStream
		tab: 4;
		nextPutAll: '<srcfile name="';
		nextPutAll: (self encode: aClass className);
		nextPutAll: '">';
		nextPut: Character lf.
	self
		generateType: 'class'
		indent: 4
		total: 1
		actual: aClass isPartiallyCovered asBit
		on: aStream.
	self
		generateType: 'method'
		indent: 4
		total: aClass allMethods size
		actual: (aClass allMethods count: #isCovered)
		on: aStream.
	self generatePackage: aPackage class: aClass on: aStream.
	self generatePackage: aPackage class: aClass metaclassSpy on: aStream.
	aStream
		tab: 4;
		nextPutAll: '</srcfile>';
		nextPut: Character lf