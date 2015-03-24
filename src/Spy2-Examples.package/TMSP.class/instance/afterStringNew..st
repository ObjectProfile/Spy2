plugin
afterStringNew: string
	(trackStrings and: [ self spySender notNil ]) ifTrue: [ (String getSpy: self) record: string ]