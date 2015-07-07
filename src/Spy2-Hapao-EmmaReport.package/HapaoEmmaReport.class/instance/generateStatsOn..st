as yet unclassified
generateStatsOn: aStream
	aStream tab; nextPutAll: '<stats>'; nextPut: Character lf.
	aStream tab; tab; 
		nextPutAll: '<packages value="'; 
		print: (profiler packages size); nextPutAll: '"/>'; nextPut: Character lf.
	aStream tab; tab; 
		nextPutAll: '<classes value="'; 
		print: profiler allClasses size; nextPutAll: '"/>'; nextPut: Character lf.
	aStream tab; tab; 
		nextPutAll: '<methods value="'; 
		print: profiler allMethods size; nextPutAll: '"/>'; nextPut: Character lf.
	aStream tab; nextPutAll: '</stats>'; nextPut: Character lf.