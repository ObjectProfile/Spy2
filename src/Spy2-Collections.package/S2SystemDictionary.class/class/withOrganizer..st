as yet unclassified
withOrganizer: anOrganizer
	| dictionary |
	dictionary := self new.
	dictionary organization: anOrganizer. "update too the back pointer"
	^dictionary.
	