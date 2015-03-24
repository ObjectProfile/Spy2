analysis
takeMostCreatedObjects: anInteger

	^ (self listMostCreatedObjects first: anInteger) collect: #key