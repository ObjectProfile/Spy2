accessing
lastEntries
	lastEntries ifNil: [ lastEntries := OrderedCollection new ].
	^ lastEntries