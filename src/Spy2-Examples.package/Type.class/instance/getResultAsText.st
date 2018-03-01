accessing
getResultAsText
	| s |
	s := WriteStream on: String new.
	self allExecutedClasses do: [ :cls |
		cls allRunMethods do: [ :m |
			s nextPutAll: m asString, ' '.
			s nextPutAll: m signature asString; cr.
		]
	].
	^ s contents