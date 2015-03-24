analysis
takeCreatedObjectsMoreThan: anInteger

	^ (self listMostCreatedObjects 
			select: [ :assoc | assoc value > anInteger ] ) collect: #key