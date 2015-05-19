as yet unclassified
hash
	| hash |

	hash := byteCharacters hash.
	wideCharacters
		ifNotNil: [hash := hash bitXor: wideCharacters hash].
	^ hash.