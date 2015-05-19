as yet unclassified
asParser    
	"Create a range of characters between start and stop."

	(self allSatisfy: [ :e | e isCharacter ]) ifTrue: [ 
		| charSet |
		charSet := PPCharSetPredicate on: [ :char | self includes: char ] .
     	^ PPPredicateObjectParser on: charSet message: 'One of these charactes expected: ', self printString.
	].


	^ super asParser
	"
		($a to:$f) asParser parse:'a'
		($a to:$f) asParser parse:'g'
	"
