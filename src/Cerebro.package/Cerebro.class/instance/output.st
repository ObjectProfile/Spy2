public - outputing
output

| s str |
s := WriteStream on: String new.
self trace do: [ :m |
	m dictionary associationsDo: [ :assoc | 
		s nextPutAll: m asString.
		s nextPutAll: ','.
		s nextPutAll: assoc key asString. 
		s nextPutAll: ','.
		s nextPutAll: assoc value asString.
		s crlf
	].
].
s contents.
str := 'roassalTestExecution.csv' asFileReference writeStream.
str nextPutAll: s contents.
str close