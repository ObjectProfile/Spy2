visualization
relevantClasses
	^ self allClasses asArray
		select: [ :c | (self dependenciesOfClass: c) size > 0 ]