as yet unclassified
generateType: aString indent: anInteger total: totalInteger actual: actualInteger on: aStream
	aStream tab: anInteger; 
		nextPutAll: '<coverage type="'; nextPutAll: aString; 
		nextPutAll: ', %" value="';
		nextPutAll: '('; print: actualInteger; nextPut: $/; print: totalInteger; nextPutAll: ')"/>';
		nextPut: Character lf