public - outputing
output

| s str |
s := WriteStream on: String new.
self do: [ :m |
	m dictionary associationsDo: [ :assoc | 
		s nextPutAll: m asString.
		s nextPutAll: ','.
		s nextPutAll: assoc key asString. 
		s nextPutAll: ','.
		s nextPutAll: assoc value asString.
		s cr
	].
].
s contents.
str := 'roassalTestExecution.csv' asFileReference writeStream.
str nextPutAll: s contents.
str close