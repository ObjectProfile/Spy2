accessing - read only
>>> aPackageName
	^ self packages detect: [:pak | pak packageName asString = aPackageName asString ]