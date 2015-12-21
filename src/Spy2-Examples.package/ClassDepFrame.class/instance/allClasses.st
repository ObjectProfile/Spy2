accessing
allClasses 
	^ ((classDependencies collect: #key), (classDependencies collect: #value)) asSet