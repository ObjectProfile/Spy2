hooks
install
	self addToSpyMetamodel.
	[ 
	self assert: (ByteString class methodDictionary includesKey: #new:) not.
	self assert: profiler isNotNil.
	self primitiveInstall.
	] valueUnpreemptively